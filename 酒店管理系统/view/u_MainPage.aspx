﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="u_MainPage.aspx.cs" EnableSessionState="False" Inherits="iRan.view.u_MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>u_MainPage</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/u_mainpage/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/u_mainpage/data.js"></script>
    <script src="files/iRan.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function () { return 'resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function () { return 'resources/Other.html'; };
        $axure.utils.getReloadPath = function () { return 'resources/reload.html'; };

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
            top:75%;
            left:44%;
            width:220px;
            height:50px;            
            line-height:50px;
            z-index:9999;
            color: #FFCEA6;
            background-color:#193e5e;
            position:absolute;
            text-align:center;                
            border-radius:150px;
            box-shadow: 0 0 25px #191629;
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
      <div id="u834" class="ax_default box_2">
        <div id="u834_div" class=""></div>
        <div id="u834_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u835" class="ax_default label">
        <div id="u835_div" class=""></div>
        <div id="u835_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>

      <!-- Unnamed (userMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u837" class="ax_default">
        <img id="u837_menu" class="img " src="images/u_mainpage/u837_menu.png" alt="u837_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u838" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u839" class="ax_default menu_item cus">
            <img id="u839_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u839_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u840" class="ax_default menu_item cus" onclick="CheckReserve()">
            <img id="u840_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u840_text" class="text ">
              <p><span style="text-decoration:none;">预定房间</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u841" class="ax_default menu_item cus" onclick="CheckOut()">
            <img id="u841_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u841_text" class="text ">
              <p><span style="text-decoration:none;">退房</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u842" class="ax_default menu_item cus" onclick="ExService()">
            <img id="u842_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u842_text" class="text ">
              <p><span style="text-decoration:none;">额外服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u843" class="ax_default menu_item cus" onclick="OrderSelect()">
            <img id="u843_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u843_text" class="text ">
              <p><span style="text-decoration:none;">订单查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u844" class="ax_default menu_item cus" onclick="SelfInfo()">
            <img id="u844_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u844_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u845" class="ax_default menu_item cus" onclick="Notices()">
            <img id="u845_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u845_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u846" class="ax_default menu_item">
            <img id="u846_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u846_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u847" class="ax_default box_1">
        <img id="u847_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u847_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u848" class="ax_default label">
        <div id="u848_div" class=""></div>
        <div id="u848_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u836" style="display:none; visibility:hidden;"></div>

      <!-- userName (矩形) -->
      <div id="u849" class="ax_default label" data-label="userName">
        <div id="u849_div" class=""></div>
        <div id="u849_text" class="text ">
          <p><span style="text-decoration:none;">欢迎您，<%=userName %></span></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u850" class="ax_default image cus" onclick="CheckReserve()">
        <img id="u850_img" class="img " src="images/a_mainpage/u18.png"/>
        <div id="u850_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u851" class="ax_default image cus" onclick="ExService()">
        <img id="u851_img" class="img " src="images/a_mainpage/u19.png"/>
        <div id="u851_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u852" class="ax_default image cus" onclick="SelfInfo()">
        <img id="u852_img" class="img " src="images/a_mainpage/u20.png"/>
        <div id="u852_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u853" class="ax_default label">
        <div id="u853_div" class=""></div>
        <div id="u853_text" class="text ">
          <p><span style="text-decoration:none;">预定房间</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u854" class="ax_default label">
        <div id="u854_div" class=""></div>
        <div id="u854_text" class="text ">
          <p><span style="text-decoration:none;">额外服务</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u855" class="ax_default label">
        <div id="u855_div" class=""></div>
        <div id="u855_text" class="text ">
          <p><span style="text-decoration:none;">个人信息</span></p>
        </div>
      </div>

      <!-- Unnamed (图片 ) -->
      <div id="u856" class="ax_default image cus" onclick="OrderSelect()">
        <img id="u856_img" class="img " src="images/a_mainpage/u24.png"/>
        <div id="u856_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u857" class="ax_default label">
        <div id="u857_div" class=""></div>
        <div id="u857_text" class="text ">
          <p><span style="text-decoration:none;">订单查询</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>
    <script>
        var parms = window.location.search;

        $('#u839').click(function () {

            //$(window).attr('location', 'Sign in.aspx');
            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                }
            }
            $.ajax({
                url: "u_MainPage.aspx" + parms,
                type: "post",
                data: { "postTag": "logout" },
                dataType: "text",
                success: function (data) {
                    
                    if (data == -1) {
                        
                    }
                    else {
                        $(window).attr('location', 'Sign in.aspx');
                    }
                }
            });
        });        

        function CheckReserve() {
            //$(window).attr('location', 'u_MainPage.aspx?uid=<%=uid%>&res=1');            

            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                }
            }
            $.ajax({
                url: "u_MainPage.aspx" + parms,
                type: "post",
                data: { "postTag": "check" },
                dataType: "text",
                success: function (data) {
                    console.log(data);
                    if (data == -1) {
                        window.pop('已经预定房间');                        
                        //console.log('存在');
                    }
                    else {
                        $(window).attr('location', 'u_OrderRoom.aspx?uid=<%=uid%>');
                    }
                }
            });
        };

        function CheckOut() {
                        
            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                }
            }
            $.ajax({
                url: "u_MainPage.aspx" + parms,
                type: "post",
                data: { "postTag": "checkout" },
                dataType: "text",
                success: function (data) {
                    console.log(data);
                    if (data == -1) {
                        window.pop('请先预定房间');
                    }
                    else {
                        $(window).attr('location', 'u_CheckOut.aspx?uid=<%=uid%>');
                        //window.pop('可以退房');

                    }
                }
            });
        }

        function ExService() {

            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                }
            }
            $.ajax({
                url: "u_MainPage.aspx" + parms,
                type: "post",
                data: { "postTag": "eservice" },
                dataType: "text",
                success: function (data) {
                    console.log(data);
                    if (data == -1) {
                        window.pop('请先预定房间');
                    }
                    else {
                        $(window).attr('location', 'u_ExService.aspx?uid=<%=uid%>&firstes=_no_');                        
                    }
                }
            });            
        }

        function OrderSelect() {
            $(window).attr('location', 'u_OrderSelect.aspx?uid=<%=uid%>');
        }

        function SelfInfo() {
            $(window).attr('location', 'u_SelfInfo.aspx?uid=<%=uid%>');
        }

        function Notices() {
            $(window).attr('location', 'u_Notice.aspx?uid=<%=uid%>');
        }
        
    </script>
    </form>
</body>
</html>
