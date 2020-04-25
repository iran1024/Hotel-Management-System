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
    public partial class a_OrderMS : System.Web.UI.Page
    {
        public int omNowPage = 1, omMaxPage = 0, omCount = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                omMaxPage = GetCurrentMaxPage();
            }

            // 页面加载时获取订单未处理订单信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "load")
                {
                    CheckInBLL ckbll = new CheckInBLL();

                    string sqlStrByPage = "select * from (" +
                        " select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Fname, C.Cid, C.Gid, C.CheckinTime, S.esOrderContent" +
                            " from Users U, CheckIn C, ServiceOrder S" +
                                " where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.CheckinStatus = 0) T where T.Row between 1 and 5";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // 分页获取订单信息数据
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "omByPage")
                {
                    omNowPage = int.Parse(Request["omNowPage"]);
                    omMaxPage = GetCurrentMaxPage();

                    if (omNowPage > omMaxPage)
                    {
                        Response.Write(-1);
                        Response.End();
                    }

                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                             " select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Fname, C.Cid, C.Gid, C.CheckinTime, S.esOrderContent" +
                                                 " from Users U, CheckIn C, ServiceOrder S" +
                                                    " where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.CheckinStatus = 0) T where T.Row between {0} and {1}",
                                               (omNowPage - 1) * 5 + 1, omNowPage * 5);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 进行订单的确认或退回操作
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "operation")
                {
                    long cid = long.Parse(Request["cid"]);
                    decimal oid = decimal.Parse(Request["oid"]);
                    int tag = int.Parse(Request["tag"]);

                    CheckInBLL ckbll = new CheckInBLL();
                    ServiceOrderBLL esbll = new ServiceOrderBLL();

                    CheckIn ck = ckbll.GetModel(cid);
                    ServiceOrder esorder = esbll.GetModel(oid);

                    if (tag == 0)
                    {
                        ck.CheckinStatus = 1;
                        esorder.esOrderStatus = 1;
                        ckbll.Update(ck);
                        esbll.Update(esorder);
                        Response.Write(1);
                        Response.End();
                    }
                    else
                    {
                        ck.CheckinStatus = -1;
                        esorder.esOrderStatus = -1;
                        ckbll.Update(ck);
                        esbll.Update(esorder);
                        Response.Write(2);
                        Response.End();
                    }
                }
            }

            // 确认后异步更新前台数据, 重新获取最大页数
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "updatePage")
                {
                    omNowPage = int.Parse(Request["omNowPage"]);
                    omMaxPage = GetCurrentMaxPage();

                    if (omNowPage - 1 == omMaxPage)
                    {
                        omNowPage = omMaxPage;
                        Response.Write(omNowPage);
                        Response.End();
                    }
                    
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                             " select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Fname, C.Cid, C.Gid, C.CheckinTime, S.esOrderContent" +
                                                 " from Users U, CheckIn C, ServiceOrder S" +
                                                    " where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.CheckinStatus = 0) T where T.Row between {0} and {1}",
                                               (omNowPage - 1) * 5 + 1, omNowPage * 5);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
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
                                if (col.ColumnName == "CheckinTime")
                                {
                                    childRow.Add(col.ColumnName, row[col].ToString());
                                }
                                else
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

        public int GetCurrentMaxPage()
        {
            string sqlStrByAll = "select * from (" +
                                                "select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Uid, U.Fname, C.Cid, C.Gid, C.CheckinTime from " +
                                                    "Users U, CheckIn C, ServiceOrder S " +
                                                        "where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.CheckinStatus = 0) T";
            SqlConnection f_conn = new SqlConnection(connectString);
            SqlDataAdapter f_SqlAdapter = new SqlDataAdapter(sqlStrByAll, f_conn);
            int currentMaxPage = 0;
            try
            {
                DataTable alldata = new DataTable();
                f_SqlAdapter.Fill(alldata);

                omCount = alldata.Rows.Count;
                if (omCount % 5 == 0)
                    currentMaxPage = omCount / 5;
                else
                    currentMaxPage = omCount / 5 + 1;
            }
            catch (SqlException sqlexcp)
            {
                Response.Write(sqlexcp.Message);
            }
            f_conn.Dispose();
            f_SqlAdapter.Dispose();
            return currentMaxPage;
        }               
            
    }
}