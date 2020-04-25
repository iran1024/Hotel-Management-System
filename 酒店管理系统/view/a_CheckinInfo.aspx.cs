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
    public partial class a_CheckinInfo : System.Web.UI.Page
    {
        public string[,] ckInfoType = new string[5, 5] { { "u179", "u180", "u181", "u182", "u204" },
                                                        { "u184", "u185", "u186", "u187", "u205" },
                                                        { "u189", "u190", "u191", "u192", "u206" },
                                                        { "u194", "u195", "u196", "u197", "u207" },
                                                         { "u199", "u200", "u201", "u202", "u208" }};
        public int ckInfoNowPage = 1, ckInfoMaxPage = 0, ckInfoCount = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sqlStrByAll = "select * from (" +
                                                "select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Uid, U.Fname, C.Cid, C.Gid, C.CheckinTime from " +
                                                    "Users U, CheckIn C, ServiceOrder S " +
                                                        "where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and " +
                                                        " (C.CheckinStatus = 0 or C.CheckinStatus = 1 or C.CheckinStatus = 2 or C.CheckinStatus = 3)) T";
                SqlConnection f_conn = new SqlConnection(connectString);
                SqlDataAdapter f_SqlAdapter = new SqlDataAdapter(sqlStrByAll, f_conn);
                try
                {
                    DataTable alldata = new DataTable();
                    f_SqlAdapter.Fill(alldata);
                    ckInfoCount = alldata.Rows.Count;
                    if (ckInfoCount % 5 == 0)
                        ckInfoMaxPage = ckInfoCount / 5;
                    else
                        ckInfoMaxPage = ckInfoCount / 5 + 1;
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
                if (Request["postTag"] == "load")
                {
                    CheckInBLL ckbll = new CheckInBLL();



                    string sqlStrByPage = "select * from (" +
                                                "select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Uid, U.Fname, C.Cid, C.Gid, C.CheckinTime from " +
                                                    "Users U, CheckIn C, ServiceOrder S " +
                                                        "where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and" +
                                                        " (C.CheckinStatus = 0 or C.CheckinStatus = 1 or C.CheckinStatus = 2 or C.CheckinStatus = 3)) T where T.Row between 1 and 5";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // 分页获取入住信息数据
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "ckInfoByPage")
                {
                    ckInfoNowPage = int.Parse(Request["ckInfoNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                                "select ROW_NUMBER() over(order by S.Oid DESC) AS Row, S.Oid, U.Uid, U.Fname, C.Cid, C.Gid, C.CheckinTime from " +
                                                    "Users U, CheckIn C, ServiceOrder S " +
                                                        "where U.Uid = S.Uid and C.Uid = S.Uid and C.Oid = S.Oid and" +
                                                        "(C.CheckinStatus = 0 or C.CheckinStatus = 1 or C.CheckinStatus = 2 or C.CheckinStatus = 3)) T where T.Row between {0} and {1}",
                                               (ckInfoNowPage - 1) * 5 + 1, ckInfoNowPage * 5);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 获取个人入住信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "personalCkInfo")
                {
                    decimal oid = decimal.Parse(Request["oid"]);
                    int uid = int.Parse(Request["uid"]);
                    long cid = long.Parse(Request["cid"]);

                    string sqlStrPesonalInfo = "select distinct U.Fname, U.TelNumber, U.Idcard, C.CheckinTime, C.Gid, C.CheckinStatus, G.RoomType, G.BedType, S.esOrderContent, C.cTotalPrice" +
                        " from Users U, CheckIn C, ServiceOrder S, GuestRoomInfo G, RoomTypeInfo R" +
                            " where U.Uid = " + uid + " and C.Cid = " + cid + " and S.Oid = " + oid + " and C.Gid = G.Gid";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrPesonalInfo));
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