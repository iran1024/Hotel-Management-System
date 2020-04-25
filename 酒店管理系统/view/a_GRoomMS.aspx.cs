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
    public partial class a_GRoomMS : System.Web.UI.Page
    {
        public int grNowPage = 1, grMaxPage = 0, grCount = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        GuestRoomInfoBLL grbll = new GuestRoomInfoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grCount = grbll.GetModelList("").Count;
                if (grCount % 5 == 0)
                    grMaxPage = grCount / 5;
                else
                    grMaxPage = grCount / 5 + 1;
            }

            // 页面加载时获取客房信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "load")
                {
                    string sqlStrByPage = "select * from (" +
                                                " select ROW_NUMBER() over(order by Gid ASC) AS Row, Gid, RoomType, BedType, HasWlan, RoomPrice from GuestRoomInfo) T" +
                                                    " where T.Row between 1 and 5";
                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // Ajax分页获取客房信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "grByPage")
                {

                    grNowPage = int.Parse(Request["grNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                                " select ROW_NUMBER() over(order by Gid ASC) AS Row, Gid, RoomType, BedType, HasWlan, RoomPrice from GuestRoomInfo) T" +
                                                    " where T.Row between {0} and {1}", (grNowPage - 1) * 5 + 1, grNowPage * 5);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // 修改客房信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "update")
                {
                    int gid = int.Parse(Request["gid"]);
                    int roomtype = int.Parse(Request["roomtype"]);
                    int bedtype = int.Parse(Request["bedtype"]);
                    int haswlan = int.Parse(Request["haswlan"]);
                    decimal roomprice = decimal.Parse(Request["roomprice"]);
                    

                    GuestRoomInfo gr = grbll.GetModelList("Gid = " + gid)[0];
                    gr.RoomType = roomtype;
                    gr.BedType = bedtype;
                    gr.HasWlan = haswlan;
                    gr.RoomPrice = roomprice;

                    grbll.Update(gr);

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