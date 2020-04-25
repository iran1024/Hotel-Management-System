using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iRan.view
{
    public partial class u_CheckOut : CheckLogin
    {
        public string Content = string.Empty;
        public string uid;
        protected void Page_Load(object sender, EventArgs e)
        {           
            int gid, roomType, bedType;
            CheckInBLL ckbll = new CheckInBLL();
            ServiceOrderBLL orderBLL = new ServiceOrderBLL();
            GuestRoomInfoBLL guestRoomInfoBLL = new GuestRoomInfoBLL();

            if (!IsPostBack)
            {
                if (Request.QueryString["uid"] == null)
                {
                    ClientScript.RegisterClientScriptBlock(ClientScript.GetType(), "login", "<script>notlogined();</script>");
                    return;
                }
                uid = Request.QueryString["uid"];
                
                if (ckbll.GetModelList("Uid = " + uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)").Count != 0)
                {
                    gid = ckbll.GetModelList("Uid = " + uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)")[0].Gid;

                    GuestRoomInfoBLL roomInfoBLL = new GuestRoomInfoBLL();
                    roomType = roomInfoBLL.GetModelList("Gid = " + gid)[0].RoomType;
                    bedType = roomInfoBLL.GetModelList("Gid = " + gid)[0].BedType;

                    if (roomType == 0)
                    {
                        if (bedType == 0)
                            Content = "单人房-硬板床-" + gid.ToString();
                        else
                            Content = "单人房-软榻床-" + gid.ToString();
                    }
                    else if (roomType == 1)
                    {
                        if (bedType == 0)
                            Content = "双人房-硬板床-" + gid.ToString();
                        else
                            Content = "双人房-软榻床-" + gid.ToString();
                    }
                    else if (roomType == 2)
                    {
                        if (bedType == 1)
                            Content = "总统套房-软榻床-" + gid.ToString();
                        else
                            Content = "总统套房-大圆床-" + gid.ToString();
                    }
                }                
            }

            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "checkout")
                {
                    uid = Request.QueryString["uid"];

                    bool hasOrder2Cancel = ckbll.GetModelList("Uid = " + uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)").Count == 0 ? false : true;
                    if (!hasOrder2Cancel) 
                    {
                        Response.Write(-1);
                        Response.End();
                    }

                    bool hasOutTime = ckbll.GetModelList("Uid = " + uid + " and (CheckinStatus = -2 or CheckinStatus = 1 or CheckinStatus = 2)").Count == 0 ? false : true;
                    if (!hasOrder2Cancel)
                    {
                        Response.Write(-1);
                        Response.End();
                    }
                    // 客房状态改为4-需要保洁              
                    GuestRoomInfo guestRoom = guestRoomInfoBLL.GetModelList("Gid = " + ckbll.GetModelList("Uid = " + uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)")[0].Gid)[0];
                    guestRoom.GStatus = 4;
                    guestRoomInfoBLL.Update(guestRoom);

                    // 修改住房信息订单状态码为-3（用户取消）
                    CheckIn ck = ckbll.GetModelList("Uid = " + uid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)")[0];
                    ck.CheckinStatus = -3;
                    ckbll.Update(ck);

                    // 修改额外服务订单状态码
                    ServiceOrder svorder = orderBLL.GetModelList("Uid = " + uid + " and (esOrderStatus = 0 or esOrderStatus = 1 or esOrderStatus = 2)")[0];
                    // 如果额外服务还没有提供，那么退房的时候应该取消放货，状态码置为-3
                    if(svorder.esOrderStatus == 0 || svorder.esOrderStatus == 1)
                    {
                        string orderContent = svorder.esOrderContent;
                        if(orderContent != "")
                        {
                            ExServiceBLL esbll = new ExServiceBLL();
                            foreach (string tmp in orderContent.Split(','))
                            {
                                ExService es = esbll.GetModelList("GoodsName = '" + tmp.Split('*')[0] + "'")[0];
                                es.GoodsStock += int.Parse(tmp.Split('*')[1]);
                                esbll.Update(es);
                            }
                        }
                        svorder.esOrderStatus = -3;
                        orderBLL.Update(svorder);
                    }                    
                    Response.Write(1);
                    Response.End();
                }
            }
        }

        public class Goods
        {
            public string GoodsName;
            public int GoodsCount;
            
            public Goods()
            {
                GoodsName = "";
                GoodsCount = 0;
            }
        }
    }
}