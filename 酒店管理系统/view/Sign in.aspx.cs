using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class Sign_in : System.Web.UI.Page
    {
        public string SignUpAdd = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (IsPostBack)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                int uid;

                if (username == "username")
                {
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('请输入用户名');});</script>");
                    return;
                }
                if (password == "password")
                {
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('请输入密码');});</script>");
                    return;
                }
                                
                AdminsBLL adminBLL = new AdminsBLL();
                if(adminBLL.GetModelList("AdminAccount = '" + username + "'").Count > 0)
                {
                    if (adminBLL.GetModelList("AdminAccount = '" + username + "' and AdminPwd = '" + password + "'").Count > 0)
                    {
                        int aid = adminBLL.GetModelList("AdminAccount = '" + username + "' and AdminPwd = '" + password + "'")[0].AdminID;
                        HttpContext.Current.Session["aid"] = aid;
                        Response.Redirect("a_MainPage.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('用户名或密码错误');});</script>");
                        return;
                    }
                }
                else
                {
                    Regex rex_telnumber = new Regex(@"^1([38]\d|5[0-35-9]|7[3678])\d{8}$");
                    if (!rex_telnumber.IsMatch(username))
                    {
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('请检查用户名是否有误');});</script>");
                        return;
                    }

                    UsersBLL userBll = new UsersBLL();
                    List<Users> userList;
                    Users user = new Users();
                    // 对密码进行MD5加密（基于base64编码）然后与数据库中的密码值进行比对
                    var bytes = Encoding.UTF8.GetBytes(password);
                    using (var md5 = MD5.Create())
                    {
                        var hash = md5.ComputeHash(bytes);
                        password = Convert.ToBase64String(hash);
                    }
                    userList = userBll.GetModelList("TelNumber = " + decimal.Parse(username) + " and Pwd = '" + password + "'");
                    if (userBll.GetModelList("TelNumber = " + decimal.Parse(username)).Count > 0)
                    {
                        if (userBll.GetModelList("TelNumber = " + decimal.Parse(username) + " and Pwd = '" + password + "'").Count > 0)
                        {             
                            uid = userList[0].Uid;
                            user = userBll.GetModel(uid);
                            user.LoginStatus = 1;
                            user.LastLoginTime = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));                            
                            userBll.Update(user);
                            //HttpCookie httpCookie = new HttpCookie("uid")
                            //{
                            //    Value = uid.ToString(),
                            //    Expires = DateTime.Now.AddMinutes(15);
                            //};                   
                            //HttpContext.Current.Response.Cookies.Add(httpCookie);
                            HttpContext.Current.Session["uid"] = uid;
                            //uid = Encode(usersList[0].Uid.ToString(), "iRanania");
                            Response.Redirect("u_MainPage.aspx?uid=" + uid); 
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('用户名或密码错误');});</script>");
                            return;
                        }
                    }                    
                    else
                    {
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('用户不存在');});</script>");
                        return;
                    }
                }       
            }
            if (!string.IsNullOrEmpty(Request.QueryString["res"]))
            {
                if (int.Parse(Request.QueryString["res"]) == 5)
                    ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('请先登录');});</script>");
            }
            SignUpAdd = "Sign up.aspx";
        }

        public static string Encode(string str, string key)
        {
            DESCryptoServiceProvider provider = new DESCryptoServiceProvider();
            provider.Key = Encoding.ASCII.GetBytes(key.Substring(0, 8));
            provider.IV = Encoding.ASCII.GetBytes(key.Substring(0, 8));
            byte[] bytes = Encoding.UTF8.GetBytes(str);
            MemoryStream stream = new MemoryStream();
            CryptoStream stream2 = new CryptoStream(stream, provider.CreateEncryptor(), CryptoStreamMode.Write);
            stream2.Write(bytes, 0, bytes.Length);
            stream2.FlushFinalBlock();
            StringBuilder builder = new StringBuilder();
            foreach (byte num in stream.ToArray())
            {
                builder.AppendFormat("{0:X2}", num);
            }
            stream.Close();
            return builder.ToString();
        }
    }
}