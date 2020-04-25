<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_Notice.aspx.cs" Inherits="iRan.view.a_Notice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_Notice</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_notice/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="resources/scripts/axure/jquery.nicescroll.min.js"></script>
    <script src="data/document.js"></script>
    <script src="files/a_notice/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
        $(function () {
            $('body').animate({
                backgroundColor: '#191629'
            }, 1200);
            $('#textColorSet').animate({
                color: '#F2F2F2'
            }, 1200);
        });
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
            left:127%;
            width:220px;
            height:35px;
            line-height:35px;
            z-index:9999;
            background-color:#fff;
            position:absolute;
            text-align:center;                
            border-radius:150px;
            box-shadow: 0 0 25px #f2f2f2;
            font-size:1.1em;
            font-family:'Microsoft YaHei';
            opacity: 0;                
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u579" class="ax_default box_2">
        <div id="u579_div" class=""></div>
        <div id="u579_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u581" class="ax_default">
        <img id="u581_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u581_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u582" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u583" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u583_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u583_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u584" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u584_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u584_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u585" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u585_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u585_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u586" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u586_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u586_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u587" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u587_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u587_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u588" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u588_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u588_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u589" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u589_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u589_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u590" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u590_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u590_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u591" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u591_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u591_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u592" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u592_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u592_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u593" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u593_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u593_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u594" class="ax_default menu_item">
            <img id="u594_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u594_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u595" class="ax_default box_1">
        <img id="u595_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u595_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u596" class="ax_default label">
        <div id="u596_div" class=""></div>
        <div id="u596_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u580" style="display:none; visibility:hidden;"></div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    <script>





        // 其他事件

        $('#u596').addClass('cus').click(function () {
            $(window).attr('location', "a_MainPage.aspx");
        });

        $('.menu_item').addClass('cus');

        var redirectArr = new Array("Sign in.aspx", "a_GRoomMS.aspx", "a_RoomTypeMS.aspx", "a_CheckinInfo.aspx",
            "a_OrderMS.aspx", "a_ExServiceMS.aspx", "a_CleanService.aspx", "a_Caiwu.aspx", "a_RegisterMS.aspx", "a_SelfInfo.aspx", "a_Notice.aspx");

        function Redirect(select) {
            $(window).attr('location', redirectArr[$('.menu_item').index(select)]);
        }

    </script>
    </form>
</body>
</html>
