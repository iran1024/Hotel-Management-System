using iRan.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iRan.view
{
    public class CheckLogin : System.Web.UI.Page
    {
        public CheckLogin() 
        {
            this.Load += new EventHandler(BasePage_Load);
            //this.Unload += new EventHandler(BasePage_UnLoad);
        }

        void BasePage_Load(object sender, EventArgs e)
        {
            //if (Session["uid"] != null)
            //{                
            //    if (!string.IsNullOrEmpty(Request.QueryString["uid"]))
            //    {                    
            //        int _uid = int.Parse(Request.QueryString["uid"].ToString());
            //        UsersBLL userbll = new UsersBLL();
            //        if(userbll.GetModel(_uid).LoginStatus == 0)
            //        {
            //            Response.Redirect("Sign in.aspx?res=5");
            //        }
            //        if (_uid != int.Parse(Session["uid"].ToString()))
            //        {
            //            Response.Redirect("Sign in.aspx?res=5");
            //        }
            //    }                
            //}
            //else
            //    Response.Redirect("Sign in.aspx?res=5");
        }

        //void BasePage_UnLoad(object sender, EventArgs e)
        //{
        //    if (Session["uid"] != null)
        //    {
        //        if (!string.IsNullOrEmpty(Request.QueryString["uid"]))
        //        {
        //            int _uid = int.Parse(Request.QueryString["uid"].ToString());
        //            UsersBLL userbll = new UsersBLL();
        //            if (userbll.GetModel(_uid).LoginStatus == 1)
        //            {
        //                Model.Users user = userbll.GetModel(_uid);
        //                user.LoginStatus = 0;
        //                userbll.Update(user);
        //            }
        //        }
        //    }            
        //}
    }
}