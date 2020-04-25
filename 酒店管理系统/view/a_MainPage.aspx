<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_MainPage.aspx.cs" EnableSessionState="False" Inherits="iRan.view.a_MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_MainPage</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_mainpage/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script src="files/iRan.js"></script>
    <script src="resources/scripts/axure/jquery.nicescroll.min.js"></script>
    <script src="data/document.js"></script>
    <script src="files/a_mainpage/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <style>
        .cus{
            cursor:pointer;
        }
        
         body{
            user-select:none;
            -moz-user-select:none;
            -webkit-user-select:none;
            -ms-user-select:none;
        }
        html, body{
            overflow-x:hidden;
            overflow-y:hidden;
        }
        ._modal{
            top:80%;
            left:44.7%;
            width:200px;
            height:40px;
            line-height:40px;
            z-index:9999;
            color: #FFCEA6;
            background-color:#193e5e;
            position:absolute;
            text-align:center;                
            border-radius:150px;
            box-shadow: 0 0 25px #191629;
            font-size:1em;
            font-family:'Microsoft YaHei';
            opacity: 0;                 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u17" class="ax_default box_2">
        <div id="u17_div" class=""></div>
        <div id="u17_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u18" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u18_img" class="img " src="images/a_mainpage/u18.png"/>
        <div id="u18_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u19" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u19_img" class="img " src="images/a_mainpage/u19.png"/>
        <div id="u19_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u20" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u20_img" class="img " src="images/a_mainpage/u20.png"/>
        <div id="u20_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u21" class="ax_default label">
        <div id="u21_div" class=""></div>
        <div id="u21_text" class="text ">
          <p><span style="text-decoration:none;">客房信息管理</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u22" class="ax_default label">
        <div id="u22_div" class=""></div>
        <div id="u22_text" class="text ">
          <p><span style="text-decoration:none;">额外服务管理</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u23" class="ax_default label">
        <div id="u23_div" class=""></div>
        <div id="u23_text" class="text ">
          <p><span style="text-decoration:none;">个人信息</span></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u24" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u24_img" class="img " src="images/a_mainpage/u24.png"/>
        <div id="u24_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u25" class="ax_default label">
        <div id="u25_div" class=""></div>
        <div id="u25_text" class="text ">
          <p><span style="text-decoration:none;">订单管理</span></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u27" class="ax_default">
        <img id="u27_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u27_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u28" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u29" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u29_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u29_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u30" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u30_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u30_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u31" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u31_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u31_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u32" class="ax_default menu_item cus" onclick="Redirect(this)"">
            <img id="u32_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u32_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u33" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u33_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u33_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u34" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u34_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u34_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u35" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u35_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u35_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u36" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u36_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u36_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u37" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u37_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u37_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u38" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u38_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u38_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u39" class="ax_default menu_item cus" onclick="Redirect(this)">
            <img id="u39_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u39_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u40" class="ax_default menu_item">
            <img id="u40_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u40_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u41" class="ax_default box_1">
        <img id="u41_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u41_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u42" class="ax_default label">
        <div id="u42_div" class=""></div>
        <div id="u42_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u26" style="display:none; visibility:hidden;"></div>

      <!-- Unnamed (图片 ) -->
      <div id="u43" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u43_img" class="img " src="images/a_mainpage/u43.png"/>
        <div id="u43_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u44" class="ax_default label">
        <div id="u44_div" class=""></div>
        <div id="u44_text" class="text ">
          <p><span style="text-decoration:none;">房型信息管理</span></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u45" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u45_img" class="img " src="images/a_mainpage/u45.png"/>
        <div id="u45_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u46" class="ax_default label">
        <div id="u46_div" class=""></div>
        <div id="u46_text" class="text ">
          <p><span style="text-decoration:none;">入住信息查询</span></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u47" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u47_img" class="img " src="images/a_mainpage/u47.png"/>
        <div id="u47_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u48" class="ax_default label">
        <div id="u48_div" class=""></div>
        <div id="u48_text" class="text ">
          <p><span style="text-decoration:none;">保洁服务</span></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u49" class="ax_default image cus" onclick="RedirectImg(this)">
        <img id="u49_img" class="img " src="images/a_mainpage/u49.png"/>
        <div id="u49_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u50" class="ax_default label">
        <div id="u50_div" class=""></div>
        <div id="u50_text" class="text ">
          <p><span style="text-decoration:none;">财务报表</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    <script>

        var parms = window.location.search;

        // 其他事件
        var redirectArr = new Array("Sign in.aspx", "a_GRoomMS.aspx", "a_RoomTypeMS.aspx", "a_CheckinInfo.aspx",
            "a_OrderMS.aspx", "a_ExServiceMS.aspx", "a_CleanService.aspx", "a_Caiwu.aspx", "a_RegisterMS.aspx", "a_SelfInfo.aspx", "a_Notice.aspx");

        function Redirect(select) {
            $(window).attr('location', redirectArr[$('.menu_item').index(select)]);
        }

        var redirectImg = new Array("a_GRoomMS.aspx", "a_ExServiceMS.aspx", "a_SelfInfo.aspx", "a_OrderMS.aspx",
            "a_RoomTypeMS.aspx", "a_CheckinInfo.aspx", "a_CleanService.aspx", "a_Caiwu.aspx");

        function RedirectImg(select) {
            $(window).attr('location', redirectImg[$('.image').index(select)]);
        }
    </script>
    </form>
</body>
</html>
