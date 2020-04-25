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
    public partial class a_RoomTypeMS : System.Web.UI.Page
    {

        public int rtNowPage = 1, rtMaxPage = 0, rtCount = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        RoomTypeInfoBLL rtbll = new RoomTypeInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rtCount = rtbll.GetModelList("").Count;
                if (rtCount % 3 == 0)
                    rtMaxPage = rtCount / 3;
                else
                    rtMaxPage = rtCount / 3 + 1;
            }

            // 页面加载时获取房型信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {                
                if (Request["postTag"] == "load")
                {
                    string sqlStrByPage = "select * from (" +
                                                " select ROW_NUMBER() over(order by RoomType ASC) AS Row, *" +
                                                    " from RoomTypeInfo) T where T.Row between 1 and 3";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // Ajax分页查询房型信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {                
                if (Request["postTag"] == "rtByPage")
                {
                    rtNowPage = int.Parse(Request["rtNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                                " select ROW_NUMBER() over(order by RoomType ASC) AS Row, *" +
                                                    " from RoomTypeInfo) T where T.Row between {0} and {1}",
                                                        (rtNowPage - 1) * 3 + 1, rtNowPage * 3);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // update
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "update")
                {
                    int roomtype = int.Parse(Request["roomtype"]);
                    int bedtype = int.Parse(Request["bedtype"]);
                    string syno = Request["syno"];
                    
                    RoomTypeInfo rt = rtbll.GetModel(roomtype, bedtype);
                    rt.Syno = syno;                    
                    Response.Write(rtbll.Update(rt) ? 1 : 0);
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
                                childRow.Add(col.ColumnName, row[col].ToString());                                
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