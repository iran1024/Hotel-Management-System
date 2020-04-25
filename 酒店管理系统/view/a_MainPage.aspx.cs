using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class a_MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["res"]))
            {
                if (int.Parse(Request.QueryString["res"]) == 1)
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('密码修改成功');})</script>");               
            }
        }
    }
}