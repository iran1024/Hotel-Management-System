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
    public partial class u_SelfInfo : CheckLogin
    {
        public int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = int.Parse(Request.QueryString["uid"]);

            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "changepwd")
                {                    
                    int uid = int.Parse(Request["uid"]);
                    string oldPwd = Request["oldpwd"];
                    string newPwd = Request["newpwd"];

                    Users user = new UsersBLL().GetModel(uid);

                    // 将原密码通过相同的加密方式加密后与数据库交互验证
                    var obytes = Encoding.UTF8.GetBytes(oldPwd);
                    using (var omd5 = MD5.Create())
                    {
                        var ohash = omd5.ComputeHash(obytes);
                        oldPwd = Convert.ToBase64String(ohash);
                    }
                    if (oldPwd == user.Pwd)
                    {
                        var nbytes = Encoding.UTF8.GetBytes(newPwd);
                        using (var nmd5 = MD5.Create())
                        {
                            var nhash = nmd5.ComputeHash(nbytes);
                            newPwd = Convert.ToBase64String(nhash);
                        }
                        user.Pwd = newPwd;
                        new UsersBLL().Update(user);
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