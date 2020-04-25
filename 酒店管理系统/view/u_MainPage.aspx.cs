using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class u_MainPage : CheckLogin
    {
        public string userName = string.Empty;
        public string uid;
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                if(Request.QueryString["uid"] == null)
                {
                    ClientScript.RegisterClientScriptBlock(ClientScript.GetType(), "login", "<script>notlogined();</script>");
                    return;
                }
                uid = Request.QueryString["uid"];                
                //uid = Decode(Request.QueryString["uid"], "iRanania");

                UsersBLL userBll = new UsersBLL();
                userName = userBll.GetModel(int.Parse(uid)).Fname;

                if (!string.IsNullOrEmpty(Request.QueryString["res"]))
                {
                    if (int.Parse(Request.QueryString["res"]) == 0)
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('没有预定');});</script>");
                    else if (int.Parse(Request.QueryString["res"]) == 1)
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('预定成功');});</script>");
                    else if (int.Parse(Request.QueryString["res"]) == 2)
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('退房成功');});</script>");
                    else if (int.Parse(Request.QueryString["res"]) == 3)
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('密码修改成功');});</script>");
                    else if (int.Parse(Request.QueryString["res"]) == 4)
                        ClientScript.RegisterStartupScript(ClientScript.GetType(), "PopUp", "<script>$(function () {window.pop('您的房间已被管理员退回');});</script>");
                }
            }
                                    
            // 检测是否已经存在预定订单
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if(Request["postTag"] == "check")
                {
                    string _uid = Request.QueryString["uid"];
                    //string _uid = Decode(Request.QueryString["uid"], "iRanania");
                    CheckInBLL ckbll = new CheckInBLL();
                    if (ckbll.GetModelList("Uid = " + _uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)").Count != 0)
                    {
                        Response.Write(-1);
                        Response.End();
                    }
                    else
                    {
                        Response.Write(1);
                        Response.End();
                    }
                }                
            }

            // 检测是否可以退房
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "checkout")
                {
                    string _uid = Request.QueryString["uid"];
                    //string _uid = Decode(Request.QueryString["uid"], "iRanania");
                    CheckInBLL ckbll = new CheckInBLL();
                    if (ckbll.GetModelList("Uid = " + _uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)").Count != 0)
                    {
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

            // 检测是否可以订购额外服务
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "eservice")
                {
                    string _uid = Request.QueryString["uid"];
                    //string _uid = Decode(Request.QueryString["uid"], "iRanania");
                    CheckInBLL ckbll = new CheckInBLL();
                    if (ckbll.GetModelList("Uid = " + _uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)").Count != 0)
                    {
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

            // 退出登录
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "logout")
                {
                    string _uid = Request.QueryString["uid"];
                    //string _uid = Decode(Request.QueryString["uid"], "iRanania");
                    UsersBLL userbll = new UsersBLL();
                    Users user = userbll.GetModel(int.Parse(_uid));
                    user.LoginStatus = 0;
                    userbll.Update(user);

                    //HttpContext.Current.Session["uid"] = null;

                    Response.Write(1);
                    Response.End();
                    
                }
            }
        }

       

        public static string Decode(string str, string key)
        {
            DESCryptoServiceProvider provider = new DESCryptoServiceProvider();
            provider.Key = Encoding.ASCII.GetBytes(key.Substring(0, 8));
            provider.IV = Encoding.ASCII.GetBytes(key.Substring(0, 8));
            byte[] buffer = new byte[str.Length / 2];
            for (int i = 0; i < (str.Length / 2); i++)
            {
                int num2 = Convert.ToInt32(str.Substring(i * 2, 2), 0x10);
                buffer[i] = (byte)num2;
            }
            MemoryStream stream = new MemoryStream();
            CryptoStream stream2 = new CryptoStream(stream, provider.CreateDecryptor(), CryptoStreamMode.Write);
            stream2.Write(buffer, 0, buffer.Length);
            stream2.FlushFinalBlock();
            stream.Close();
            return Encoding.GetEncoding("GB2312").GetString(stream.ToArray());
        }
    }
}