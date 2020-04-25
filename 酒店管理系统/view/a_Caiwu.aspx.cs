using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class a_Caiwu : System.Web.UI.Page
    {

        public int gsNowPage = 1, gsMaxPage = 0, gsCount = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        private ExServiceBLL esbll = new ExServiceBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gsCount = esbll.GetModelList("").Count;
                if (gsCount % 5 == 0)
                    gsMaxPage = gsCount / 5;
                else
                    gsMaxPage = gsCount / 5 + 1;
            }

            // 点击客房收入时获取客房收入信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "grincome")
                {
                    string sqlStrByPage = "select RoomType, BedType, count(*) as ckorderCount, SUM(C.cTotalPrice) as Total_gr_Income from CheckIn C, GuestRoomInfo G" +
                        " where(CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2 or CheckinStatus = 3)" +
                         " and C.Gid = G.Gid group by G.RoomType, G.BedType";
                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // 点击额外服务收入时获取额外服务收入信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "gsincome")
                {                    

                    List<ServiceOrder> sorderList = new List<ServiceOrder>();
                    sorderList = new ServiceOrderBLL().GetModelList("esOrderStatus = 0 or esOrderStatus = 1 or esOrderStatus = 2 or esOrderStatus = 3");
                    List<esorderInfo> orderinfoList = new List<esorderInfo>();
                    for(int b = 0; b < sorderList.Count; b++)
                    {
                        if(sorderList[b].esOrderContent != "")
                        {
                            esorderInfo info = new esorderInfo()
                            {
                                ordercontent = sorderList[b].esOrderContent                              
                            };
                            orderinfoList.Add(info);
                        }                        
                    }

                    List<goods> goodsList = new List<goods>();
                    string[] goodsinfo;

                    for(int k = 0; k < orderinfoList.Count; k++)
                    {
                        goodsinfo = orderinfoList[k].ordercontent.Split(',');
                        for(int c = 0; c < goodsinfo.Length; c++)
                        {
                            goods singlegoods = new goods()
                            {
                                goodsname = goodsinfo[c].Split('*')[0],
                                count = int.Parse(goodsinfo[c].Split('*')[1])
                            };
                            goodsList.Add(singlegoods);
                        }                        
                    }
                    List<goods> gsInfoList = new List<goods>();
                    goods singlegoods2 = new goods();
                    

                    bool hasSame = false;

                    for (int m = 0; m < goodsList.Count; m++) 
                    {                        
                        for (int n = 0; n < gsInfoList.Count; n++)
                        {
                            if (gsInfoList[n].goodsname == goodsList[m].goodsname)
                            {                                
                                gsInfoList[n].count += goodsList[m].count;
                                hasSame = true;
                                break;
                            }                           
                        }
                        if (!hasSame)
                        {
                            singlegoods2 = new goods
                            {
                                goodsname = goodsList[m].goodsname,
                                count = goodsList[m].count
                            };
                            gsInfoList.Add(singlegoods2);
                        }
                        else {
                            hasSame = false;
                        }                        
                    }

                    ExServiceBLL esbll = new ExServiceBLL();
                    for (int r = 0; r < gsInfoList.Count; r++) 
                    {
                        gsInfoList[r].TotalPrice = float.Parse(esbll.GetModelList("GoodsName = '" + gsInfoList[r].goodsname + "'")[0].GoodsPrice.ToString()) * gsInfoList[r].count;
                    }

                    JavaScriptSerializer subjson = new JavaScriptSerializer();
                    object serializer_obj = subjson.Serialize(gsInfoList);
                    Response.Write(serializer_obj);
                    Response.End();
                }
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

        public class esorderInfo
        {
            public string ordercontent;            
            
            public esorderInfo()
            {
                ordercontent = "";                
            }
        }

        public class goods
        {
            public string goodsname;
            public int count;
            public float TotalPrice;
            public goods()
            {
                goodsname = "";
                count = 0;
                TotalPrice = 0.0f;
            }
        }

    }
}