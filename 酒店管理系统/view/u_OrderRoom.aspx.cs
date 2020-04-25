using iRan.BLL;
using iRan.Model;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Script.Serialization;

namespace iRan.view
{
    public partial class u_OrderRoom : CheckLogin
    {
        public int RoomType, BedType, Gid = 0, shNowPage, shMaxPage, ssNowPage, ssMaxPage, 
                   dhNowPage, dhMaxPage, dsNowPage, dsMaxPage, psNowPage, psMaxPage, pcNowPage, pcMaxPage;
        public string uid;

        public string[,] shclassType = new string[3, 4] { { "u35", "u38", "u37", "u36" }, { "u31", "u34", "u33", "u32" }, { "u27", "u30", "u29", "u28" } };
        public string[,] ssclassType = new string[3, 4] { { "u51", "u54", "u53", "u52" }, { "u47", "u50", "u49", "u48" }, { "u43", "u46", "u45", "u44" } };

        public string[,] dhclassType = new string[3, 4] { { "u67", "u70", "u69", "u68" }, { "u63", "u66", "u65", "u64" }, { "u59", "u62", "u61", "u60" } };
        public string[,] dsclassType = new string[3, 4] { { "u83", "u86", "u85", "u84" }, { "u79", "u82", "u81", "u80" }, { "u75", "u78", "u77", "u76" } };

        public string[,] psclassType = new string[3, 4] { { "u99", "u102", "u101", "u100" }, { "u95", "u98", "u97", "u96" }, { "u91", "u94", "u93", "u92" } };
        public string[,] pcclassType = new string[3, 4] { { "u115", "u118", "u117", "u116" }, { "u111", "u114", "u113", "u112" }, { "u107", "u110", "u109", "u108" } };

        public List<GuestRoomInfo> shRoomList = new List<GuestRoomInfo>();
        public List<GuestRoomInfo> ssRoomList = new List<GuestRoomInfo>();

        public List<GuestRoomInfo> dhRoomList = new List<GuestRoomInfo>();
        public List<GuestRoomInfo> dsRoomList = new List<GuestRoomInfo>();

        public List<GuestRoomInfo> psRoomList = new List<GuestRoomInfo>();
        public List<GuestRoomInfo> pcRoomList = new List<GuestRoomInfo>();

        public GuestRoomInfo roomInfoTemp = new GuestRoomInfo();
        public GuestRoomInfo reserveObj = new GuestRoomInfo();
        public GuestRoomInfoBLL guestRoomBll = new GuestRoomInfoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            // 处理GET请求
            if (!IsPostBack)
            {
                if (Request.QueryString["uid"] == null)
                {
                    ClientScript.RegisterClientScriptBlock(ClientScript.GetType(), "login", "<script>notlogined();</script>");
                    return;
                }
                uid = Request.QueryString["uid"];

                Init_gRoom();

            }
            // 处理POST请求
            // 获取房间信息            
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                // 获取单人房-硬板床
                if (Request["postTag"] == "sh_room_bed_type")
                {                    
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    //and (GStatus = 0 or Gstatus = 1 or Gstatus = 4)
                    shRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", 1, 3).Tables[0]);
                    shNowPage = 1;
                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(shRoomList);
                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }

                // 获取单人房-软榻床
                if (Request["postTag"] == "ss_room_bed_type")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    //and (GStatus = 0 or Gstatus = 1 or Gstatus = 4)
                    ssRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", 1, 3).Tables[0]);
                    ssNowPage = 1;
                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(ssRoomList);
                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }

                // 获取双人房-硬板床
                if (Request["postTag"] == "dh_room_bed_type")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    //and (GStatus = 0 or Gstatus = 1 or Gstatus = 4)
                    dhRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", 1, 3).Tables[0]);
                    dhNowPage = 1;
                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(dhRoomList);
                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }

                // 获取双人房-软榻床
                if (Request["postTag"] == "ds_room_bed_type")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    //and (GStatus = 0 or Gstatus = 1 or Gstatus = 4)
                    dsRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", 1, 3).Tables[0]);
                    dsNowPage = 1;
                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(dsRoomList);
                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }

                // 获取总统套房-软榻床
                if (Request["postTag"] == "ps_room_bed_type")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    //and (GStatus = 0 or Gstatus = 1 or Gstatus = 4)
                    psRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", 1, 3).Tables[0]);
                    psNowPage = 1;
                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(psRoomList);
                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }

                // 获取总统套房-大圆床
                if (Request["postTag"] == "pc_room_bed_type")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    //and (GStatus = 0 or Gstatus = 1 or Gstatus = 4)
                    pcRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", 1, 3).Tables[0]);
                    pcNowPage = 1;
                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(pcRoomList);
                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }
            
            // 结算界面数据获取
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "tempInfo")
                {
                    Gid = int.Parse(Request["gid"]);
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    roomInfoTemp = guestRoomBll.GetModel(Gid);

                    CheckInBLL ckbll = new CheckInBLL();
                    List<CheckIn> cklist = ckbll.GetModelList("Gid = " + Gid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)");

                    // 返回已选时间， 天数
                    guestRoomInfoWithCkTime gsRoomInfo = new guestRoomInfoWithCkTime()
                    {
                        roomInfo = guestRoomBll.GetModel(Gid)
                    };

                    for(int i = 0; i < cklist.Count; i++)
                    {
                        gsRoomInfo.ckDateTime.Add(cklist[i].CheckinTime.ToString());
                        gsRoomInfo.ckDays.Add(cklist[i].CheckinDays);
                    }

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(gsRoomInfo);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }

            // 预定模块
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "reserve")
                {
                    Gid = int.Parse(Request["gid"]);
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);
                    string startDate = Request["startdate"];
                    int selectDays = int.Parse(Request["selectdays"]);
                    uid = Request.QueryString["uid"];

                    string[] dateArr = startDate.Split('-');
                    DateTime startDateTime = new DateTime(int.Parse(dateArr[0]), int.Parse(dateArr[1]), int.Parse(dateArr[2]), 0, 0, 0);

                    CheckInBLL ckbll = new CheckInBLL();
                    List<CheckIn> cklist = new List<CheckIn>();
                    // 如果传来的日期为默认今天，且今天被选了，则返回-1
                    if (startDateTime.Date == DateTime.Now.Date)
                    {
                        cklist = ckbll.GetModelList("Gid = " + Gid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2) and CONVERT(varchar(10),CheckinTime,120) = (Datename(year,GetDate()) + '-' + Datename(month,GetDate()) + '-' + Datename(day,GetDate()))");
                        if (cklist.Count != 0)
                        {
                            Response.Write(-1);
                            Response.End();                        
                        }
                        cklist = ckbll.GetModelList("Gid = " + Gid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2) and CONVERT(varchar(10),CheckinTime,120) < (Datename(year,GetDate()) + '-' + Datename(month,GetDate()) + '-' + Datename(day,GetDate()))");
                        if (cklist.Count != 0)
                        {
                            for(int b = 0; b < cklist.Count; b++)
                            {
                                if(startDateTime.Date >= DateTime.Parse(cklist[b].CheckinTime.ToString()).Date &&
                                    startDateTime.Date <= DateTime.Parse(cklist[b].CheckinTime.ToString()).AddDays(int.Parse(cklist[b].CheckinDays.ToString())).Date)
                                {
                                    Response.Write(-1);
                                    Response.End();
                                }
                            }                            
                        }

                    }

                    cklist = ckbll.GetModelList("Gid = " + Gid + " and (CheckinStatus = 0 or CheckinStatus = 1 or CheckinStatus = 2)");

                    // 如果传来的日期为在数据库中已经被选，则返回-2
                    DateTime selectMinDate, selectMaxDate, dbMinDate, dbMaxDate;

                    selectMinDate = new DateTime(int.Parse(dateArr[0]), int.Parse(dateArr[1]), int.Parse(dateArr[2]), 0, 0, 0);
                    selectMaxDate = selectMinDate.AddDays(selectDays - 1);
                    for (int b = 0; b < cklist.Count; b++)
                    {
                        dbMinDate = DateTime.Parse(cklist[b].CheckinTime.ToString());
                        dbMaxDate = dbMinDate.AddDays(int.Parse(cklist[b].CheckinDays.ToString()) - 1);                        
                        if(selectMinDate <= dbMinDate && selectMaxDate >= dbMinDate)
                        {
                            Response.Write(-2);
                            Response.End();
                        }
                        if(selectMinDate >= dbMinDate && selectMinDate <= dbMaxDate)
                        {
                            Response.Write(-2);
                            Response.End();
                        }
                    }                    

                    // 可以插入了
                    reserveObj = guestRoomBll.GetModel(Gid);
                    DateTime orderCreateTime = DateTime.Now;
                    decimal oid = decimal.Parse(orderCreateTime.ToString("yyyy-MM-dd-HH-mm").Replace("-", "")) * 10000 + Gid;

                    UsersBLL userBll = new UsersBLL();
                    Users user = userBll.GetModel(int.Parse(uid));

                    // 服务订单，用于接下来的额外服务预定
                    ServiceOrder serviceOrder = new ServiceOrder()
                    {
                        Oid = oid,
                        Uid = user.Uid,
                        esOrderCreateTime = DateTime.Parse(orderCreateTime.ToString("yyyy-MM-dd HH:mm:ss")),
                        esOrderContent = "",
                        esOrderTotalPrice = 0,
                        esOrderStatus = 0
                    };
                    ServiceOrderBLL orderBLL = new ServiceOrderBLL();
                    orderBLL.Add(serviceOrder);

                    // 插入住房信息表，如果后期前台退回订单 则会删除该条                    
                    // 住房信息订单，每个用户预定房间后都会生成一条
                    CheckIn checkin = new CheckIn()
                    {
                        Oid = oid,
                        Gid = Gid,
                        Uid = user.Uid,
                        cTotalPrice = reserveObj.RoomPrice * selectDays,
                        CheckinTime = startDateTime,
                        CheckinDays = selectDays,
                        CheckinStatus = 0
                    };
                    CheckInBLL ckBll = new CheckInBLL();
                    ckBll.Add(checkin);                                    
                    long cid = long.Parse(ckBll.GetList("Uid = " + uid + " and CheckinStatus = 0").Tables[0].Rows[0][0].ToString());
                    
                    if (cid != 0)
                    {                        
                        Response.Write(cid);
                    }
                    else
                        Response.Write(-5);
                    Response.End();
                    
                }
            }
            // 单人房-硬板床Ajax分页查询
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "shByPage")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    shNowPage = int.Parse(Request["shNowPage"]);

                    shNowPage = shNowPage < 1 ? 1 : shNowPage;
                    shNowPage = shNowPage > shMaxPage ? shMaxPage : shNowPage;

                    shRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", (shNowPage - 1) * 3 + 1, shNowPage * 3).Tables[0]);

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(shRoomList);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }

            // 单人房-软榻床Ajax分页查询
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "ssByPage")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    ssNowPage = int.Parse(Request["ssNowPage"]);

                    ssNowPage = ssNowPage < 1 ? 1 : ssNowPage;
                    ssNowPage = ssNowPage > ssMaxPage ? ssMaxPage : ssNowPage;

                    ssRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", (ssNowPage - 1) * 3 + 1, ssNowPage * 3).Tables[0]);

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(ssRoomList);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }

            // 双人房-硬板床Ajax分页查询
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "dhByPage")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    dhNowPage = int.Parse(Request["dhNowPage"]);

                    dhNowPage = dhNowPage < 1 ? 1 : dhNowPage;
                    dhNowPage = dhNowPage > dhMaxPage ? dhMaxPage : dhNowPage;

                    dhRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", (dhNowPage - 1) * 3 + 1, dhNowPage * 3).Tables[0]);

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(dhRoomList);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }

            // 双人房-软榻床Ajax分页查询
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "dsByPage")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    dsNowPage = int.Parse(Request["dsNowPage"]);

                    dsNowPage = dsNowPage < 1 ? 1 : dsNowPage;
                    dsNowPage = dsNowPage > dsMaxPage ? dsMaxPage : dsNowPage;

                    dsRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", (dsNowPage - 1) * 3 + 1, dsNowPage * 3).Tables[0]);

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(dsRoomList);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }

            // 总统套房-软榻床Ajax分页查询
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "psByPage")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    psNowPage = int.Parse(Request["psNowPage"]);

                    psNowPage = psNowPage < 1 ? 1 : psNowPage;
                    psNowPage = psNowPage > psMaxPage ? psMaxPage : psNowPage;

                    psRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", (psNowPage - 1) * 3 + 1, psNowPage * 3).Tables[0]);

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(psRoomList);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }

            // 总统套房-大圆床Ajax分页查询
            if (!string.IsNullOrEmpty(Request["postTag"]))
            {
                if (Request["postTag"] == "pcByPage")
                {
                    RoomType = int.Parse(Request["roomtype"]);
                    BedType = int.Parse(Request["bedtype"]);

                    pcNowPage = int.Parse(Request["pcNowPage"]);

                    pcNowPage = pcNowPage < 1 ? 1 : pcNowPage;
                    pcNowPage = pcNowPage > pcMaxPage ? pcMaxPage : pcNowPage;

                    pcRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + RoomType + "and BedType = " + BedType +
                        ""), "Gid", (pcNowPage - 1) * 3 + 1, pcNowPage * 3).Tables[0]);

                    JavaScriptSerializer subJson = new JavaScriptSerializer();
                    object serializer_sub_Obj = subJson.Serialize(pcRoomList);

                    Response.Write(serializer_sub_Obj.ToString());
                    Response.End();
                }
            }
        }   
        
        protected void Init_gRoom()
        {
            shRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + 0 + "and BedType = " + 0 +
                            ""), "Gid", 1, 3).Tables[0]);
            ssRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + 0 + "and BedType = " + 1 +
                        ""), "Gid", 1, 3).Tables[0]);

            dhRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + 1 + "and BedType = " + 0 +
                        ""), "Gid", 1, 3).Tables[0]);
            dsRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + 1 + "and BedType = " + 1 +
                        ""), "Gid", 1, 3).Tables[0]);

            psRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + 2 + "and BedType = " + 1 +
                        ""), "Gid", 1, 3).Tables[0]);
            pcRoomList = guestRoomBll.DataTableToList(guestRoomBll.GetListByPage(("RoomType = " + 2 + "and BedType = " + 2 +
                        ""), "Gid", 1, 3).Tables[0]);

            shNowPage = 1;
            ssNowPage = 1;

            dhNowPage = 1;
            dsNowPage = 1;

            psNowPage = 1;
            pcNowPage = 1;

            int shCount = guestRoomBll.GetRecordCount("RoomType = 0 and BedType = 0");
            int ssCount = guestRoomBll.GetRecordCount("RoomType = 0 and BedType = 1");
            int dhCount = guestRoomBll.GetRecordCount("RoomType = 1 and BedType = 0");
            int dsCount = guestRoomBll.GetRecordCount("RoomType = 1 and BedType = 1");
            int psCount = guestRoomBll.GetRecordCount("RoomType = 2 and BedType = 1");
            int pcCount = guestRoomBll.GetRecordCount("RoomType = 2 and BedType = 2");

            if (shCount % 3 == 0)
                shMaxPage = shCount / 3;
            else
                shMaxPage = shCount / 3 + 1;

            if (ssCount % 3 == 0)
                ssMaxPage = ssCount / 3;
            else
                ssMaxPage = ssCount / 3 + 1;

            if (dhCount % 3 == 0)
                dhMaxPage = dhCount / 3;
            else
                dhMaxPage = dhCount / 3 + 1;

            if (dsCount % 3 == 0)
                dsMaxPage = dsCount / 3;
            else
                dsMaxPage = dsCount / 3 + 1;

            if (psCount % 3 == 0)
                psMaxPage = psCount / 3;
            else
                psMaxPage = psCount / 3 + 1;

            if (pcCount % 3 == 0)
                pcMaxPage = pcCount / 3;
            else
                pcMaxPage = pcCount / 3 + 1;
        }
    }

    public class guestRoomInfoWithCkTime
    {
        public GuestRoomInfo roomInfo;
        public List<string> ckDateTime;
        public List<int?> ckDays;

        public guestRoomInfoWithCkTime() 
        {
            ckDateTime = new List<string>();
            ckDays = new List<int?>();
        }
       
    }
}