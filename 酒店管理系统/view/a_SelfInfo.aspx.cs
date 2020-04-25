using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class a_SelfInfo : System.Web.UI.Page
    {
        public int aid;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "changepwd")
                {
                    if (Session["aid"] == null)
                    {
                        Response.Write(-2);
                        Response.End();
                    }
                    int aid = int.Parse(Session["aid"].ToString());
                    string oldPwd = Request["oldpwd"];
                    string newPwd = Request["newpwd"];

                    Admins admin = new AdminsBLL().GetModel(aid);
                    
                    if (oldPwd == admin.AdminPwd)
                    {
                        admin.AdminPwd = newPwd;
                        new AdminsBLL().Update(admin);
                        Response.Write(1);
                        Response.End();
                    }
                    else
                    {
                        Response.Write(-1);
                        Response.End();
                    }
                }
            }
        }
    }
}