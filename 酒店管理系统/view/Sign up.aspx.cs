using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iRan.BLL;
using iRan.Model;

namespace iRan.view
{
    public partial class Sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string telnumber = Request.Form["telnumber"];
                string password = Request.Form["password"];
                string pwdAgian = Request.Form["pwdAgian"];
                string name = Request.Form["name"];
                string nickname = Request.Form["nickname"];
                string idcard = Request.Form["idcard"];
                if(password != pwdAgian)
                {
                    Response.Write("<script>alert('两次密码不一致')</script>");
                    return;
                }       
                UsersBLL usersBll = new UsersBLL();

                if (usersBll.GetList("Telnumber = '" + telnumber + "'").Tables[0].Rows.Count == 0)
                {
                    if (usersBll.GetList("Idcard = '" + idcard + "'").Tables[0].Rows.Count == 0) { }
                    else
                    {
                        Response.Write("<script>alert('已注册的身份证号')</script>");
                        return;
                    }
                }
                else
                {
                    Response.Write("<script>alert('已注册的手机号')</script>");
                    return;
                }
                // 将密码加密后存入数据库
                var bytes = Encoding.UTF8.GetBytes(password);
                using (var md5 = System.Security.Cryptography.MD5.Create())
                {
                    var hash = md5.ComputeHash(bytes);
                    password = Convert.ToBase64String(hash);
                }               
                Users user = new Users()
                {
                    TelNumber = telnumber,
                    Pwd = password,
                    Fname = name,
                    Nickname = nickname,
                    Idcard = idcard,
                    CheckinCount = 0,
                    LoginStatus = 0
                };
                int res = 0;
                try
                {
                    res = usersBll.Add(user);
                }
                catch (SqlException sqlex)
                {
                    Response.Write(sqlex.Message);
                }
                if (res != 0)
                {                                                                               
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('注册成功');});</script>");
                    //Response.Redirect("Sign in.aspx");
                }
                else
                {
                    Response.Write("<script>alert('注册失败')</script>");
                }                
                
            }
        }
    }
}