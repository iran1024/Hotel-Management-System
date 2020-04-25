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
using System.Web.WebSockets;

namespace iRan.view
{
    public partial class a_ExServiceMS : System.Web.UI.Page
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

            // 页面加载时获取Goods信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "load")
                {   
                    string sqlStrByPage = "select * from (" +
                                                " select ROW_NUMBER() over(order by GoodsID ASC) AS Row, * from ExService) T" +
                                                    " where T.Row between 1 and 5";                    
                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // Ajax分页获取Goods信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "gsByPage")
                {

                    gsNowPage = int.Parse(Request["gsNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                                " select ROW_NUMBER() over(order by GoodsID ASC) AS Row, * from ExService) T" +
                                                    " where T.Row between {0} and {1}", (gsNowPage - 1) * 5 + 1, gsNowPage * 5);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 修改Goods信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "update")
                {
                    int gsid = int.Parse(Request["gsid"]);
                    string gsname = Request["gsname"];
                    float gsprice = float.Parse(Request["gsprice"]);
                    int gsstock = int.Parse(Request["gsstock"]);

                    ExService es = esbll.GetModel(gsid);
                    es.GoodsName = gsname;
                    es.GoodsPrice = decimal.Parse(gsprice.ToString());
                    es.GoodsStock = gsstock;
                    esbll.Update(es);

                    Response.Write(1);
                    Response.End();
                }
            }

            // 上架或下架Goods信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "lowershelf")
                {
                    int gsid = int.Parse(Request["gsid"]);
                    int gsstock = int.Parse(Request["gsstock"]);
                    int tag = int.Parse(Request["tag"]);
                    ExService es = esbll.GetModel(gsid);                    
                    if(tag == 1)
                        es.GoodsStock = gsstock;
                    es.GoodsStatus = es.GoodsStatus == 0 ? 1 : 0;
                    esbll.Update(es);

                    Response.Write(1);
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
    }
}