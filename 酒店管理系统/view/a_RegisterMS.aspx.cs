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
    public partial class a_RegisterMS : System.Web.UI.Page
    {
        public int rgNowPage = 1, rgMaxPage = 0, rgCount = 0;
        private string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        UsersBLL userbll = new UsersBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rgCount = userbll.GetModelList("").Count;
                if (rgCount % 5 == 0)
                    rgMaxPage = rgCount / 5;
                else
                    rgMaxPage = rgCount / 5 + 1;
            }

            // 页面加载时获取房型信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "load")
                {
                    string sqlStrByPage = "select * from (" +
                                                " select ROW_NUMBER() over(order by Uid ASC) AS Row, Uid, TelNumber, Fname, IdCard, CheckinCount" +
                                                    " from Users) T where T.Row between 1 and 5";

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlStrByPage));
                    Response.End();
                }
            }

            // Ajax分页查询房型信息
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "rgByPage")
                {
                    rgNowPage = int.Parse(Request["rgNowPage"]);
                    StringBuilder sqlPage = new StringBuilder();
                    sqlPage.AppendFormat("select * from (" +
                                                " select ROW_NUMBER() over(order by Uid ASC) AS Row, Uid, TelNumber, Fname, IdCard, CheckinCount" +
                                                    " from Users) T where T.Row between {0} and {1}",
                                                        (rgNowPage - 1) * 5 + 1, rgNowPage * 5);

                    Response.Write(Get_Serialize_Data_FromSql(connectString, sqlPage.ToString()));
                    Response.End();
                }
            }

            // Reset
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "update")
                {
                    int uid = int.Parse(Request["uid"]);                    
                    Users user = userbll.GetModel(uid);

                    string pwd = user.Idcard.Substring(12, 6);
                    var bytes = Encoding.UTF8.GetBytes(pwd);
                    using (var md5 = System.Security.Cryptography.MD5.Create())
                    {
                        var hash = md5.ComputeHash(bytes);
                        pwd = Convert.ToBase64String(hash);
                    }
                    user.Pwd = pwd;

                    Response.Write(userbll.Update(user) ? 1 : 0);
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