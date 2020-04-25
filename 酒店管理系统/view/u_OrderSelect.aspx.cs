using iRan.BLL;
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
    public partial class u_OrderSelect : CheckLogin
    {
        public int osNowPage = 1, osMaxPage = 0, osCount = 0, uid = 0;
        public long cid = 0;
        public decimal oid = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = int.Parse(Request.QueryString["uid"]);
            if (!IsPostBack)
            {                
                string sqlStrByAll = "select distinct S.Oid, C.CheckinTime, C.Gid, G.RoomType, G.BedType, S.esOrderContent, C.cTotalPrice" +
                        " from Users U, CheckIn C, ServiceOrder S, GuestRoomInfo G" +
                            " where U.Uid = " + uid + " and U.Uid = C.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.Gid = G.Gid";
                SqlConnection f_conn = new SqlConnection(connectString);
                SqlDataAdapter f_SqlAdapter = new SqlDataAdapter(sqlStrByAll, f_conn);
                try
                {
                    DataTable alldata = new DataTable();
                    f_SqlAdapter.Fill(alldata);
                    osCount = alldata.Rows.Count;
                    if (osCount % 5 == 0)
                        osMaxPage = osCount / 5;
                    else
                        osMaxPage = osCount / 5 + 1;
                }
                catch (SqlException sqlexcp)
                {
                    Response.Write(sqlexcp.Message);
                }
                f_conn.Dispose();
                f_SqlAdapter.Dispose();
            }

            // 页面加载时获取入住信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                uid = int.Parse(Request["uid"]);
                if (Request["postTag"] == "load")
                {                    
                    string sqlStrByPage = "select * from (" +
                                                " select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, C.CheckinTime, C.Gid, G.RoomType, G.BedType, S.esOrderContent, C.cTotalPrice " +
                                                    " from Users U, CheckIn C, ServiceOrder S, GuestRoomInfo G " +
                                                        " where U.Uid = " + uid + " and U.Uid = C.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.Gid = G.Gid) T where T.Row between 1 and 5";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // Ajax分页查询入住信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                uid = int.Parse(Request["uid"]);
                if (Request["postTag"] == "osByPage")
                {
                    osNowPage = int.Parse(Request["osNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                                " select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, C.CheckinTime, C.Gid, G.RoomType, G.BedType, S.esOrderContent, C.cTotalPrice " +
                                                    " from Users U, CheckIn C, ServiceOrder S, GuestRoomInfo G " +
                                                        " where U.Uid = {0} and U.Uid = C.Uid and C.Uid = S.Uid and C.Oid = S.Oid and C.Gid = G.Gid) T where T.Row between {1} and {2}",
                                                        uid, (osNowPage - 1) * 5 + 1, osNowPage * 5);
                    
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
    }
}