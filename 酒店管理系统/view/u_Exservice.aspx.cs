using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class u_ExService : CheckLogin
    {
        public string uid, gid, cid;
        public int gsNowPage = 1, gsMaxPage = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        public string[,] exsclassType = new string[6, 6] {
                                                            { "u748", "u749", "u750", "u751", "u752", "u753" }, 
                                                            { "u754", "u755", "u756", "u757", "u758", "u759" }, 
                                                            { "u760", "u761", "u762", "u763", "u764", "u765" },
                                                            { "u766", "u767", "u768", "u769", "u770", "u771" },
                                                            { "u772", "u773", "u774", "u775", "u776", "u777" },
                                                            { "u778", "u779", "u780", "u781", "u782", "u783" },
                                                         };
        public List<ExService> showExs = new List<ExService>();
        ExServiceBLL exsBll = new ExServiceBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request.QueryString["uid"];
            cid = Request.QueryString["cid"];
            showExs = exsBll.DataTableToList(exsBll.GetListByPage("GoodsStatus = 1", "GoodsID", 1, 6).Tables[0]);
            gsMaxPage = GetCurrentMaxPage(6);


            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "reserve")
                {        
                    
                    bool noPurchase = bool.Parse(Request.Form["nopurchase"]);

                    // 如果不是在预定房间的时候请求的页面，那么就是再次订购额外服务
                    if (!string.IsNullOrEmpty(Request.QueryString["firstes"]))
                    {
                        if (Request.QueryString["firstes"] == "_no_")
                        {
                            uid = Request.QueryString["uid"];
                            cid = new CheckInBLL().GetModelList("Uid = " + uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)")[0].Cid.ToString();
                            if (!noPurchase)
                            {
                                ReserveEs(int.Parse(uid), long.Parse(cid), Request.Form["split_goods_arr"], false);
                            }
                            else
                            {
                                Response.Write(0);
                                Response.End();
                            }
                        }
                    }
                    // 这里属于预定房间时候的第一次订购
                    else
                    {
                        if (!noPurchase)
                        {
                            uid = Request.QueryString["uid"];
                            cid = Request.QueryString["cid"];
                            ReserveEs(int.Parse(uid), long.Parse(cid), Request.Form["split_goods_arr"], true);
                        }
                        else
                        {
                            Response.Write(1);
                            Response.End();
                        }
                    }                    
                }
            }

            // 分页查询Goods信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "gsByPage")
                {
                    gsMaxPage = GetCurrentMaxPage(6);
                    gsNowPage = int.Parse(Request["gsNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();                    
                    sqlPage.AppendFormat("select * from (" +
                        " select ROW_NUMBER() over(order by GoodsId ASC) AS Row, GoodsID, GoodsName, GoodsPrice, GoodsStock" +
                            " from ExService" +
                                " where GoodsStatus = 1) T where T.Row between {0} and {1}",
                                (gsNowPage - 1) * 6 + 1, gsNowPage * 6);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 获取当前最大页数
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "updatePage")
                {
                    gsMaxPage = GetCurrentMaxPage(6);
                    
                    Response.Write(gsMaxPage);
                    Response.End();
                }
            }

        }

        public void ReserveEs(int _uid, long _cid, string GoodsStr, bool firstes)
        {
            // 从前台获取到的物品数据拼接字符串
            string splitGoodsArr = GoodsStr;
            // 将每一组数据从数组中分割出来
            string[] settleGoodsItem = splitGoodsArr.Split(';');
            string[] settleGoodsItemInfo;
            List<settleGoods> goodsList = new List<settleGoods>();
            //string[][] goodsInfo = new string[6][];

            // 将每一组的每一个数据从字符串中分割出来
            for (int i = 0; i < settleGoodsItem.Length; i++)
            {
                settleGoodsItemInfo = settleGoodsItem[i].Split(',');
                goodsList.Add(new settleGoods(int.Parse(settleGoodsItemInfo[0]), settleGoodsItemInfo[1], float.Parse(settleGoodsItemInfo[3]), int.Parse(settleGoodsItemInfo[4])));                
            }

            int goodsCount = settleGoodsItem.Length;
            float TotalPrice = 0.0f;

            for (int p = 0; p < goodsCount; p++)
            {
                TotalPrice += (goodsList[p].GoodsPrice * float.Parse(goodsList[p].PurchaseCount.ToString()));
                ExService es = exsBll.GetModel(goodsList[p].GoodsId);
                es.GoodsStock -= goodsList[p].PurchaseCount;
                exsBll.Update(es);
            }

            ServiceOrderBLL orderBLL = new ServiceOrderBLL();
            ServiceOrder order = orderBLL.GetModel(
                    decimal.Parse(orderBLL.GetList("Uid = " + _uid + " and (esOrderStatus = 0 or esOrderStatus = 1 or esOrderStatus = 2)").Tables[0].Rows[0][0].ToString())
                );
            
            if (firstes)
            {
                order.esOrderTotalPrice = decimal.Parse(TotalPrice.ToString());
                for (int p = 0; p < goodsCount; p++)
                {
                    if (p != goodsCount - 1)
                        order.esOrderContent += (goodsList[p].GoodsName + "*" + goodsList[p].PurchaseCount + ",");
                    else
                        order.esOrderContent += (goodsList[p].GoodsName + "*" + goodsList[p].PurchaseCount);
                }
            }
            else
            {                         
                order.esOrderTotalPrice += decimal.Parse(TotalPrice.ToString());
                string oldesOrderContent = order.esOrderContent;
                
                if (oldesOrderContent != "")
                {
                    string newOrderContent = string.Empty;
                    // 获取订单内容中已有的Goods信息
                    string[] oldesOrderContentItemInfos = oldesOrderContent.Split(',');
                    int oldesOrderContentItemCount = oldesOrderContentItemInfos.Length;

                    string[][] oldesOrderGoodsInfos = new string[oldesOrderContentItemCount][];

                    for (int b = 0; b < oldesOrderContentItemCount; b++)
                    {
                        oldesOrderGoodsInfos[b] = oldesOrderContentItemInfos[b].Split('*');
                    }// 此时该订单的已有订单内容已被解析出来
                    
                    List<int> sameItemIndex = new List<int>();
                    
                    // 获取已有订单中，相同Goods的索引
                    for (int n = 0; n < oldesOrderContentItemCount; n++)
                    {
                        for (int p = 0; p < goodsCount; p++)
                        {
                            // 如果该订单已有订单内容中包含新增的此Goods，那么直接将数量+1即可
                            if (goodsList[p].GoodsName == oldesOrderGoodsInfos[n][0])
                            {
                                sameItemIndex.Add(n);
                                break;
                            }                            
                        }                       
                    }
                    // 获取到了之前订单内容和新订单中相同Goods老订单中的索引
                    bool isOldSame = false;
                    for (int p = 0; p < oldesOrderContentItemCount; p++)
                    {
                        for(int c = 0; c < sameItemIndex.Count; c++)
                        {
                            if (p == sameItemIndex[c])
                            {
                                isOldSame = true;
                                break;
                            }                            
                        }
                        if (isOldSame)
                        {
                            for (int k = 0; k < goodsCount; k++)
                            {
                                if (oldesOrderGoodsInfos[p][0] == goodsList[k].GoodsName)
                                {
                                    if (p == oldesOrderContentItemCount - 1)
                                        newOrderContent += (oldesOrderGoodsInfos[p][0] + "*" + (goodsList[k].PurchaseCount + int.Parse(oldesOrderGoodsInfos[p][1])));
                                    else
                                        newOrderContent += (oldesOrderGoodsInfos[p][0] + "*" + (goodsList[k].PurchaseCount + int.Parse(oldesOrderGoodsInfos[p][1])) + ",");
                                }
                            }
                            isOldSame = false;
                        }
                        else
                        {
                            if (p == oldesOrderContentItemCount - 1)
                                newOrderContent += (oldesOrderGoodsInfos[p][0] + "*" + oldesOrderGoodsInfos[p][1]);
                            else
                                newOrderContent += (oldesOrderGoodsInfos[p][0] + "*" + oldesOrderGoodsInfos[p][1] + ",");
                        }
                    }

                    bool hasSame = false;
                    for (int p = 0; p < goodsCount; p++)
                    {
                        for (int k = 0; k < oldesOrderContentItemCount; k++)
                        {
                            if (goodsList[p].GoodsName == oldesOrderGoodsInfos[k][0])
                            {
                                hasSame = true;
                                break;
                            }                                
                        }
                        if (hasSame)
                        {
                            hasSame = false;
                            continue;                            
                        }
                        else
                        {
                            newOrderContent += ("," + goodsList[p].GoodsName + "*" + goodsList[p].PurchaseCount);                            
                        }                                               
                    }   
                    
                    order.esOrderContent = newOrderContent;
                }
                else // 之前就是空的订单内容
                {
                    for (int p = 0; p < goodsCount; p++)
                    {
                        if (p != goodsCount - 1)
                            order.esOrderContent += (goodsList[p].GoodsName + "*" + goodsList[p].PurchaseCount + ",");
                        else
                            order.esOrderContent += (goodsList[p].GoodsName + "*" + goodsList[p].PurchaseCount);
                    }
                }
            }

            bool res1 = orderBLL.Update(order);

            CheckInBLL ckBll = new CheckInBLL();
            CheckIn checkin = ckBll.GetModel(_cid);
            checkin.cTotalPrice += decimal.Parse(TotalPrice.ToString());
            bool res2 = ckBll.Update(checkin);

            if (res1 && res2)
            {
                Response.Write(1);
                Response.End();
            }
            else
            {
                Response.Write(-1);
                Response.End();
            }
        }

        public object Get_Serialize_Data_FromSql(string connStr, string sqlStr)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlDataAdapter SqlAdapter = new SqlDataAdapter(sqlStr, conn))
                {
                    try
                    {
                        DataTable dt = new DataTable();
                        SqlAdapter.Fill(dt);

                        JavaScriptSerializer subJson = new JavaScriptSerializer();

                        List<Dictionary<string, object>> rowList = new List<Dictionary<string, object>>();
                        Dictionary<string, object> childRow;

                        foreach (DataRow row in dt.Rows)
                        {
                            childRow = new Dictionary<string, object>();
                            foreach (DataColumn col in dt.Columns)
                            {                               
                                childRow.Add(col.ColumnName, row[col]);
                            }
                            rowList.Add(childRow);
                        }

                        object serializer_sub_Obj = subJson.Serialize(rowList);

                        return serializer_sub_Obj;
                    }
                    catch (SqlException sqlexcp)
                    {
                        return sqlexcp.Number;
                    }
                }
            }
        }

        public int GetCurrentMaxPage(int pageCount)
        {
            string sqlStrByAll = string.Empty;
            
            sqlStrByAll = "select * from ExService where GoodsStatus = 1";
            
            SqlConnection f_conn = new SqlConnection(connectString);
            SqlDataAdapter f_SqlAdapter = new SqlDataAdapter(sqlStrByAll, f_conn);
            int currentMaxPage = 0, dataCount = 0;
            try
            {
                DataTable alldata = new DataTable();
                f_SqlAdapter.Fill(alldata);

                dataCount = alldata.Rows.Count;
                if (dataCount % pageCount == 0)
                    currentMaxPage = dataCount / pageCount;
                else
                    currentMaxPage = dataCount / pageCount + 1;
            }
            catch (SqlException sqlexcp)
            {
                Response.Write(sqlexcp.Message);
            }
            f_conn.Dispose();
            f_SqlAdapter.Dispose();
            return currentMaxPage;
        }

        public class settleGoods
        {
            public int GoodsId;
            public string GoodsName;
            public float GoodsPrice;
            public int PurchaseCount;

            public settleGoods()
            {
                GoodsId = 0;
                GoodsName = "";
                GoodsPrice = 0.0f;
                PurchaseCount = 0;
            }

            public settleGoods(int goodsid, string goodsname, float goodsprice, int purchasecount)
            {
                GoodsId = goodsid;
                GoodsName = goodsname;
                GoodsPrice = goodsprice;
                PurchaseCount = purchasecount;
            }
        }
    }
}
