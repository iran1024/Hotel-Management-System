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
using iRan.BLL;
using iRan.Model;

namespace iRan.view
{
    public partial class a_CleanService : System.Web.UI.Page
    {

        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        public int gsNowPage = 1, gsMaxPage, clerNowPage = 1, clerMaxPage, clmsNowPage = 1, clmsMaxPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gsMaxPage = GetCurrentMaxPage(0, 3);
                clerMaxPage = GetCurrentMaxPage(1, 3);
                clmsMaxPage = GetCurrentMaxPage(2, 3); 
            }
            
            // 加载未保洁客房号信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "loadClean")
                {
                    gsMaxPage = GetCurrentMaxPage(0, 3);
                    // 此Sql语句将所有未保洁的客房号获取到，并且把处于需要保洁的状态的客房优先排在前面
                    string loadClean = "select * from (" +
                        " select ROW_NUMBER() over(order by case when GStatus = 4 then 1 else 0 end DESC) AS Row, Gid, GStatus" +
                            " from GuestRoomInfo" +
                                " where (GStatus = 0 or GStatus = 2 or GStatus = 4)) T where T.Row between 1 and 3";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, loadClean));
                    Response.End();
                }
            }

            // 加载空闲中保洁员信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "cler")
                {
                    clerMaxPage = GetCurrentMaxPage(1, 3);
                    string cleaner = "select * from (" +
                        " select ROW_NUMBER() over(order by CleanerId ASC) AS Row, CleanerId" +
                            " from CleaningService" +
                                " where CleanStatus = '00001') T where T.Row between 1 and 3";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, cleaner));
                    Response.End();
                }
            }

            // 加载保洁管理信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "loadclms")
                {
                    clmsMaxPage = GetCurrentMaxPage(2, 3);
                    string loadclms = "select * from (" +
                        " select ROW_NUMBER() over(order by Gid ASC) AS Row, Gid, CleanerId" +
                            " from GuestRoomInfo, CleaningService" +
                                " where Gid = (CONVERT(int, CleanStatus) / 10)) T where T.Row between 1 and 3";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, loadclms));
                    Response.End();
                }
            }

            // Ajax分页查询未保洁客房信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "gsByPage")
                {
                    gsNowPage = int.Parse(Request["gsNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    // 此Sql语句将所有未保洁的客房号获取到，并且把处于需要保洁的状态的客房优先排在前面
                    sqlPage.AppendFormat("select * from (" +
                        " select ROW_NUMBER() over(order by case when GStatus = 4 then 1 else 0 end DESC) AS Row, Gid, GStatus" +
                            " from GuestRoomInfo" +
                                " where (GStatus = 0 or GStatus = 2 or GStatus = 4)) T where T.Row between {0} and {1}", 
                                (gsNowPage - 1) * 3 + 1, gsNowPage * 3);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // Ajax分页查询空闲中保洁员信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "clerByPage")
                {
                    clerNowPage = int.Parse(Request["clerNowPage"]);

                    StringBuilder sqlPage = new StringBuilder();
                    
                    sqlPage.AppendFormat("select * from (" +
                        " select ROW_NUMBER() over(order by CleanerId ASC) AS Row, CleanerId" +
                            " from CleaningService" +
                                " where CleanStatus = '00001') T where T.Row between {0} and {1}",
                                (clerNowPage - 1) * 3 + 1, clerNowPage * 3);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // Ajax分页查询正在保洁中的客房和负责人信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "clmsByPage")
                {
                    clmsNowPage = int.Parse(Request["clmsNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();                    
                     
                    sqlPage.AppendFormat("select * from (" +
                        " select ROW_NUMBER() over(order by Gid ASC) AS Row, Gid, CleanerId" +
                            " from GuestRoomInfo, CleaningService" +
                                " where Gid = (CONVERT(int, CleanStatus) / 10)) T where T.Row between {0} and {1}",
                                (clmsNowPage - 1) * 3 + 1, clmsNowPage * 3);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 给客房安排保洁服务
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "arrangeClean")
                {
                    int gid = int.Parse(Request["gid"]);
                    int clerid = int.Parse(Request["clerid"]);

                    CleaningServiceBLL csbll = new CleaningServiceBLL();
                    CleaningService cs = csbll.GetModel(clerid);                    
                    cs.CleanStatus = (gid * 10000 + 1).ToString();
                    csbll.Update(cs);

                    GuestRoomInfoBLL gsbll = new GuestRoomInfoBLL();
                    GuestRoomInfo gs = gsbll.GetModelList("Gid = " + gid)[0];
                    gs.GStatus = 5;
                    gsbll.Update(gs);
                    

                    Response.Write(1);
                    Response.End();
                }
            }

            // 保洁完成
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "setComplete")
                {
                    int gid = int.Parse(Request["gid"]);
                    int clerid = int.Parse(Request["clerid"]);

                    CleaningServiceBLL csbll = new CleaningServiceBLL();
                    CleaningService cs = csbll.GetModel(clerid);
                    cs.CleanStatus = "00001";
                    csbll.Update(cs);

                    GuestRoomInfoBLL gsbll = new GuestRoomInfoBLL();
                    GuestRoomInfo gs = gsbll.GetModelList("Gid = " + gid)[0];
                    gs.GStatus = 0;
                    gsbll.Update(gs);


                    Response.Write(1);
                    Response.End();
                }
            }

            // updateClms
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "updateClms")
                {
                    clmsNowPage = int.Parse(Request["clmsNowPage"]);
                    clmsMaxPage = GetCurrentMaxPage(2, 3);

                    if (clmsNowPage - 1 == clmsMaxPage)
                    {
                        clmsNowPage = clmsMaxPage;
                        Response.Write(clmsNowPage);
                        Response.End();
                    }

                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                        " select ROW_NUMBER() over(order by Gid ASC) AS Row, Gid, CleanerId" +
                            " from GuestRoomInfo, CleaningService" +
                                " where Gid = (CONVERT(int, CleanStatus) / 10)) T where T.Row between {0} and {1}",
                                               (clmsNowPage - 1) * 3 + 1, clmsNowPage * 3);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 获取最大页数
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "getMaxPage")
                {
                    gsMaxPage = GetCurrentMaxPage(0, 3);
                    clerMaxPage = GetCurrentMaxPage(1, 3);
                    clmsMaxPage = GetCurrentMaxPage(2, 3);

                    Dictionary<string, object> pageList = new Dictionary<string, object>();
                    pageList.Add("gsMaxPage", gsMaxPage);
                    pageList.Add("clerMaxPage", clerMaxPage);
                    pageList.Add("clmsMaxPage", clmsMaxPage);


                    JavaScriptSerializer subjson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subjson.Serialize(pageList);

                    Response.Write(serializer_sub_Obj);
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

        public int GetCurrentMaxPage(int tag, int pageCount)
        {
            string sqlStrByAll = string.Empty;
            if (tag == 0)
            {
                sqlStrByAll = "select * from (" +
                        " select ROW_NUMBER() over(order by case when GStatus = 4 then 1 else 0 end DESC) AS Row" +
                            " from GuestRoomInfo" +
                                " where (GStatus = 0 or GStatus = 2 or GStatus = 4)) T";
            }
            else if (tag == 1) 
            {
                sqlStrByAll = "select * from CleaningService where CleanStatus = '00001'";
            }
            else if (tag == 2)
            {
                sqlStrByAll = "select * from CleaningService where CleanStatus != '00001'";
            }

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
    }
}