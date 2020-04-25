<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_CleanService.aspx.cs" EnableSessionState="False" Inherits="iRan.view.a_CleanService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_CleanService</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_cleanservice/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/iRan.js"></script>
    <script src="files/a_cleanservice/data.js"></script>
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
            top:63.1%;
            left:40.43%;
            width:280px;
            height:40px;
            line-height:40px;
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
      <div id="u397" class="ax_default box_2">
        <div id="u397_div" class=""></div>
        <div id="u397_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u399" class="ax_default">
        <img id="u399_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u399_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u400" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u401" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u401_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u401_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u402" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u402_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u402_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u403" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u403_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u403_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u404" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u404_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u404_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u405" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u405_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u405_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u406" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u406_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u406_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u407" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u407_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u407_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u408" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u408_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u408_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u409" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u409_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u409_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u410" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u410_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u410_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u411" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u411_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u411_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u412" class="ax_default menu_item">
            <img id="u412_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u412_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u413" class="ax_default box_1">
        <img id="u413_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u413_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u414" class="ax_default label">
        <div id="u414_div" class=""></div>
        <div id="u414_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u398" style="display:none; visibility:hidden;"></div>

      <!-- 标头 (矩形) -->
      <div id="u415" class="ax_default label" data-label="标头">
        <div id="u415_div" class=""></div>
        <div id="u415_text" class="text ">
          <p><span style="text-decoration:none;">保洁服务</span></p>
        </div>
      </div>

      <!-- 保洁服务 (动态面板) -->
      <div id="u416" class="ax_default" data-label="保洁服务">
        <div id="u416_state0" class="panel_state" data-label="选择操作" style="">
          <div id="u416_state0_content" class="panel_state_content">

            <!-- Unnamed (图片 ) -->
            <div id="u417" class="ax_default image" onclick="loadClean()">
              <img id="u417_img" class="img " src="images/a_mainpage/u47.png"/>
              <div id="u417_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (图片 ) -->
            <div id="u418" class="ax_default image" onclick="loadCleanMS()">
              <img id="u418_img" class="img " src="images/a_cleanservice/u418.png"/>
              <div id="u418_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u419" class="ax_default label">
              <div id="u419_div" class=""></div>
              <div id="u419_text" class="text ">
                <p><span style="text-decoration:none;">保洁</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u420" class="ax_default label">
              <div id="u420_div" class=""></div>
              <div id="u420_text" class="text ">
                <p><span style="text-decoration:none;">保洁管理</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u416_state1" class="panel_state" data-label="选择客房" style="visibility: hidden;">
          <div id="u416_state1_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u421" class="ax_default" data-label="第三条" data-left="407" data-top="322" data-width="150" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u422" class="ax_default image" onclick="chooseGs(this)">
                <img id="u422_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u422_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u423" class="ax_default box_1">
                <img id="u423_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u423_text" class="text ">
                  <p><span style="text-decoration:none;">3396</span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u424" class="ax_default" data-label="第二条" data-left="407" data-top="254" data-width="150" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u425" class="ax_default image" onclick="chooseGs(this)">
                <img id="u425_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u425_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u426" class="ax_default box_1">
                <img id="u426_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u426_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u427" class="ax_default" data-label="第一条" data-left="407" data-top="186" data-width="150" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u428" class="ax_default image" onclick="chooseGs(this)">
                <img id="u428_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u428_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u429" class="ax_default box_1">
                <img id="u429_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u429_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u430" class="ax_default button cus" data-label="上一页" onclick="gsByPage(g_gsNowPage, -1)">
              <div id="u430_div" class=""></div>
              <div id="u430_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>

            <!-- 下一页 (矩形) -->
            <div id="u431" class="ax_default button cus" data-label="下一页" onclick="gsByPage(g_gsNowPage, 1)">
              <div id="u431_div" class=""></div>
              <div id="u431_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- 标头 (矩形) -->
            <div id="u432" class="ax_default label" data-label="标头">
              <div id="u432_div" class=""></div>
              <div id="u432_text" class="text ">
                <p><span style="text-decoration:none;">选择客房</span></p>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u433" class="ax_default button" data-label="上一页">
              <div id="u433_div" class=""></div>
              <div id="u433_text" class="text ">
                <p><span style="text-decoration:none;">返回</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u416_state2" class="panel_state" data-label="选择保洁员" style="visibility: hidden;">
          <div id="u416_state2_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u434" class="ax_default" data-label="第三条" data-left="407" data-top="322" data-width="150" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u435" class="ax_default image cus" onclick="chooseCler(this)">
                <img id="u435_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u435_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u436" class="ax_default box_1">
                <img id="u436_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u436_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u437" class="ax_default" data-label="第二条" data-left="407" data-top="254" data-width="150" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u438" class="ax_default image cus" onclick="chooseCler(this)">
                <img id="u438_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u438_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u439" class="ax_default box_1">
                <img id="u439_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u439_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u440" class="ax_default" data-label="第一条" data-left="407" data-top="186" data-width="150" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u441" class="ax_default image cus" onclick="chooseCler(this)">
                <img id="u441_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u441_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u442" class="ax_default box_1">
                <img id="u442_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u442_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u443" class="ax_default button cus" data-label="上一页" onclick="clerByPage(g_clerNowPage, -1)">
              <div id="u443_div" class=""></div>
              <div id="u443_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>

            <!-- 下一页 (矩形) -->
            <div id="u444" class="ax_default button cus" data-label="下一页" onclick="clerByPage(g_clerNowPage, 1)">
              <div id="u444_div" class=""></div>
              <div id="u444_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u445" class="ax_default button" data-label="上一页">
              <div id="u445_div" class=""></div>
              <div id="u445_text" class="text ">
                <p><span style="text-decoration:none;">返回</span></p>
              </div>
            </div>

            <!-- 标头 (矩形) -->
            <div id="u446" class="ax_default label" data-label="标头">
              <div id="u446_div" class=""></div>
              <div id="u446_text" class="text ">
                <p><span style="text-decoration:none;">选择保洁员</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u416_state3" class="panel_state" data-label="保洁管理" style="visibility: hidden;">
          <div id="u416_state3_content" class="panel_state_content">

            <!-- 第一条 (组合) -->
            <div id="u447" class="ax_default" data-label="第一条" data-left="285" data-top="224" data-width="395" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u448" class="ax_default image cus" onclick="setCleanCompleted(this)">
                <img id="u448_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u448_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u449" class="ax_default box_1">
                <img id="u449_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u449_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u450" class="ax_default label">
                <div id="u450_div" class=""></div>
                <div id="u450_text" class="text ">
                  <p><span style="text-decoration:none;">客房号</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u451" class="ax_default label">
                <div id="u451_div" class=""></div>
                <div id="u451_text" class="text ">
                  <p><span style="text-decoration:none;">保洁员</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u452" class="ax_default box_1">
                <img id="u452_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u452_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u453" class="ax_default label">
                <div id="u453_div" class=""></div>
                <div id="u453_text" class="text ">
                  <p><span style="text-decoration:none;">保洁完成</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u454" class="ax_default" data-label="第一条" data-left="285" data-top="289" data-width="395" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u455" class="ax_default image cus" onclick="setCleanCompleted(this)">
                <img id="u455_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u455_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u456" class="ax_default box_1">
                <img id="u456_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u456_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u457" class="ax_default label">
                <div id="u457_div" class=""></div>
                <div id="u457_text" class="text ">
                  <p><span style="text-decoration:none;">客房号</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u458" class="ax_default label">
                <div id="u458_div" class=""></div>
                <div id="u458_text" class="text ">
                  <p><span style="text-decoration:none;">保洁员</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u459" class="ax_default box_1">
                <img id="u459_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u459_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u460" class="ax_default label">
                <div id="u460_div" class=""></div>
                <div id="u460_text" class="text ">
                  <p><span style="text-decoration:none;">保洁完成</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u461" class="ax_default" data-label="第一条" data-left="285" data-top="354" data-width="395" data-height="50">

              <!-- Unnamed (图片 ) -->
              <div id="u462" class="ax_default image cus" onclick="setCleanCompleted(this)">
                <img id="u462_img" class="img " src="images/a_cleanservice/u422.png"/>
                <div id="u462_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u463" class="ax_default box_1">
                <img id="u463_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u463_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u464" class="ax_default label">
                <div id="u464_div" class=""></div>
                <div id="u464_text" class="text ">
                  <p><span style="text-decoration:none;">客房号</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u465" class="ax_default label">
                <div id="u465_div" class=""></div>
                <div id="u465_text" class="text ">
                  <p><span style="text-decoration:none;">保洁员</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u466" class="ax_default box_1">
                <img id="u466_img" class="img " src="images/a_cleanservice/u423.svg"/>
                <div id="u466_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u467" class="ax_default label">
                <div id="u467_div" class=""></div>
                <div id="u467_text" class="text ">
                  <p><span style="text-decoration:none;">保洁完成</span></p>
                </div>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u468" class="ax_default button cus" data-label="上一页" onclick="clmsByPage(g_clmsNowPage, -1)">
              <div id="u468_div" class=""></div>
              <div id="u468_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>

            <!-- 下一页 (矩形) -->
            <div id="u469" class="ax_default button cus" data-label="下一页" onclick="clmsByPage(g_clmsNowPage, 1)">
              <div id="u469_div" class=""></div>
              <div id="u469_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u470" class="ax_default button" data-label="上一页">
              <div id="u470_div" class=""></div>
              <div id="u470_text" class="text ">
                <p><span style="text-decoration:none;">返回</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
        <div id="reupdateclms" onclick="updateClms(g_clmsNowPage)"></div>

    <script src="resources/scripts/axure/ios.js"></script>

    <script>

        var gsType = new Array(
                ["#u429", "#u428"],
                ["#u426", "#u425"],
                ["#u423", "#u422"]),
            clerType = new Array(
                ["#u442", "#u441"],
                ["#u439", "#u438"],
                ["#u436", "#u435"]),
            clmsType = new Array(
                ["#u450", "#u449", "#u451", "#u452", "#u453", "#u448"],
                ["#u457", "#u456", "#u458", "#u459", "#u460", "#u455"],
                ["#u464", "#u463", "#u465", "#u466", "#u467", "#u462"]);

        var g_gsNowPage = <%=gsNowPage%>,
            g_clerNowPage = <%=clerNowPage%>,
            g_clmsNowPage = <%=clmsNowPage%>,

            gsMaxPage = 0,
            clerMaxPage = 0,
            clmsMaxPage = 0;

        var gid, clerid;

        window.onload = updateMaxPage();

        // 点击保洁后加载
        function loadClean() {
            updateMaxPage();
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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "postTag": "loadClean" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        g_gsNowPage = 1;
                        var gsJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 3; m++) {                            
                            $(gsType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(gsType[m][0] + "_img").css('visibility', 'hidden').css('display', 'none');
                            $(gsType[m][1]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                            
                        }
                        // 再更新数据
                        for (var b = 0; b < gsJsonData.length; b++) {
                            $(gsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].Gid);
                            $(gsType[b][0] + "_img").css('visibility', 'visible').css('display', 'block');
                            $(gsType[b][1]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gid', gsJsonData[b].Gid);
                        }
                    }
                }
            });
        };

        // 点击保洁管理后加载
        function loadCleanMS() {

            updateMaxPage();
            

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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "postTag": "loadclms" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        g_clmsNowPage = 1;
                        var clmsJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 3; m++) {
                            for (var k = 0; k < 5; k++) {
                                if (k == 1 || k == 3)
                                    $(clmsType[m][k] + "_img").css('visibility', 'hidden').css('display', 'none');
                                $(clmsType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            }
                                
                            $(clmsType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');

                        }
                        if (clmsMaxPage == 0) {
                            $('#u470_div').trigger('click');
                            window.pop("暂无保洁任务");
                            return;
                        }
                        // 再更新数据
                        for (var b = 0; b < clmsJsonData.length; b++) {

                            $(clmsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clmsJsonData[b].Gid);
                            $(clmsType[b][1] + "_img").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][2] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clmsJsonData[b].CleanerId + "号");
                            $(clmsType[b][3] + "_img").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][4] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gid', clmsJsonData[b].Gid).attr('data-value-clerid', clmsJsonData[b].CleanerId);
                        }
                    }
                }
            });
        };

        // 选择客房Ajax分页
        function gsByPage(gsNowPage, tag) {
            updateMaxPage();
            if (gsNowPage == gsMaxPage && tag == 1)
                return;
            if (gsNowPage == 1 && tag == -1)
                return;

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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "gsNowPage": gsNowPage + tag, "postTag": "gsByPage" },
                dataType: "text",
                success: function (data) {

                    if (tag == 1)
                        g_gsNowPage++;
                    else
                        g_gsNowPage--;

                    if (data == -1) {

                    }
                    else {
                        var gsJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 3; m++) {
                            $(gsType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(gsType[m][0] + "_img").css('visibility', 'hidden').css('display', 'none');
                            $(gsType[m][1]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');

                        }
                        // 再更新数据
                        for (var b = 0; b < gsJsonData.length; b++) {
                            $(gsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].Gid);
                            $(gsType[b][0] + "_img").css('visibility', 'visible').css('display', 'block');
                            $(gsType[b][1]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gid', gsJsonData[b].Gid);
                        }
                    }
                }
            });
        }

        // 选择保洁员Ajax分页
        function clerByPage(clerNowPage, tag) {
            updateMaxPage();
            if (clerNowPage == clerMaxPage && tag == 1)
                return;
            if (clerNowPage == 1 && tag == -1)
                return;

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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "clerNowPage": clerNowPage + tag, "postTag": "clerByPage" },
                dataType: "text",
                success: function (data) {

                    if (tag == 1)
                        g_clerNowPage++;
                    else
                        g_clerNowPage--;

                    if (data == -1) {

                    }
                    else {
                        var clerJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 3; m++) {
                            $(clerType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(clerType[m][0] + "_img").css('visibility', 'hidden').css('display', 'none');
                            $(clerType[m][1]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');

                        }
                        // 再更新数据
                        for (var b = 0; b < clerJsonData.length; b++) {
                            $(clerType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clerJsonData[b].CleanerId + '号');
                            $(clerType[b][0] + "_img").css('visibility', 'visible').css('display', 'block');
                            $(clerType[b][1]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-clerid', clerJsonData[b].CleanerId);
                        }
                    }
                }
            });
        }

        // 选择保洁管理Ajax分页
        function clmsByPage(clmsNowPage, tag) {
            updateMaxPage();
            if (clmsNowPage == clmsMaxPage && tag == 1)
                return;
            if (clmsNowPage == 1 && tag == -1)
                return;

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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "clmsNowPage": clmsNowPage + tag, "postTag": "clmsByPage" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {

                        if (tag == 1)
                            g_clmsNowPage++;
                        else
                            g_clmsNowPage--;

                        var clmsJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 3; m++) {
                            for (var k = 0; k < 5; k++) {
                                if (k == 1 || k == 3)
                                    $(clmsType[m][k] + "_img").css('visibility', 'hidden').css('display', 'none');
                                $(clmsType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            }

                            $(clmsType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');

                        }
                        // 再更新数据
                        for (var b = 0; b < clmsJsonData.length; b++) {

                            $(clmsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clmsJsonData[b].Gid);
                            $(clmsType[b][1] + "_img").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][2] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clmsJsonData[b].CleanerId + "号");
                            $(clmsType[b][3] + "_img").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][4] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gid', clmsJsonData[b].Gid).attr('data-value-clerid', clmsJsonData[b].CleanerId);
                        }
                    }
                }
            });
        }

        function chooseGs(select) {

            gid = $(select).attr('data-value-gid');

            // Ajax异步获取保洁员信息
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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "postTag": "cler" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        g_clerNowPage = 1;
                        var clerJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 3; m++) {
                            $(clerType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(clerType[m][0] + "_img").css('visibility', 'hidden').css('display', 'none');
                            $(clerType[m][1]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');

                        }
                        // 再更新数据
                        for (var b = 0; b < clerJsonData.length; b++) {
                            $(clerType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clerJsonData[b].CleanerId + '号');
                            $(clerType[b][0] + "_img").css('visibility', 'visible').css('display', 'block');
                            $(clerType[b][1]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-clerid', clerJsonData[b].CleanerId);
                        }
                    }
                }
            });

        }

        function chooseCler(select) {
           
            clerid = $(select).attr('data-value-clerid');
            
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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "gid": gid, "clerid": clerid, "postTag": "arrangeClean" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        window.pop(clerid + "号保洁员即将前往" + gid + "号房");
                        $('#u445_div').trigger('click');
                        loadClean();
                        g_gsNowPage = 1;
                        g_clerNowPage = 1;
                        updateMaxPage();
                    }
                }
            });

        }

        function setCleanCompleted(select) {
            
            var gid = $(select).attr('data-value-gid'),
                clerid = $(select).attr('data-value-clerid');

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
                url: "a_CleanService.aspx",
                type: "post",
                data: { "gid": gid, "clerid": clerid, "clmsNowPage": g_clmsNowPage, "postTag": "setComplete" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        window.pop(clerid + "号保洁员已完成保洁任务");
                        updateMaxPage();
                        updateClms(g_clmsNowPage);
                    }
                }
            });            
        }

        function updateClms(clmsNowPage) {

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
                url: "a_CleanService.aspx",
                type: "post",
                async: true,
                data: { "clmsNowPage": clmsNowPage, "postTag": "updateClms" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var n = Number(data);
                        if (!isNaN(n)) { // 如果返回的是数字，说明最大页数减少了
                            g_clmsNowPage = n;
                            updateClms(g_clmsNowPage);
                            return;
                        }
                        var clmsJsonData = JSON.parse(data);
                        if (clmsJsonData.length == 0)
                            $('#u470_div').trigger('click');
                        // 先清除数据
                        for (var m = 0; m < 3; m++) {
                            for (var k = 0; k < 5; k++) {
                                if (k == 1 || k == 3)
                                    $(clmsType[m][k] + "_img").css('visibility', 'hidden').css('display', 'none');
                                $(clmsType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            }

                            $(clmsType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');

                        }
                        // 再更新数据
                        for (var b = 0; b < clmsJsonData.length; b++) {

                            $(clmsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clmsJsonData[b].Gid);
                            $(clmsType[b][1] + "_img").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][2] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(clmsJsonData[b].CleanerId + "号");
                            $(clmsType[b][3] + "_img").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][4] + "_text").css('visibility', 'visible').css('display', 'block');

                            $(clmsType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gid', clmsJsonData[b].Gid).attr('data-value-clerid', clmsJsonData[b].CleanerId);
                        }
                        
                    }
                }
            });

        }

        function updateMaxPage() {

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
                url: "a_CleanService.aspx",
                type: "post",
                async: true,
                data: { "postTag": "getMaxPage" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var pageJsonData = JSON.parse(data);

                        gsMaxPage = pageJsonData.gsMaxPage;
                        clerMaxPage = pageJsonData.clerMaxPage;
                        clmsMaxPage = pageJsonData.clmsMaxPage;

                        g_gsNowPage = g_gsNowPage < 1 ? 1 : g_gsNowPage;
                        g_gsNowPage = g_gsNowPage > gsMaxPage ? gsMaxPage : g_gsNowPage;

                        g_clerNowPage = g_clerNowPage < 1 ? 1 : g_clerNowPage;
                        g_clerNowPage = g_clerNowPage > clerMaxPage ? clerMaxPage : g_clerNowPage;

                        g_clmsNowPage = g_clmsNowPage < 1 ? 1 : g_clmsNowPage;
                        g_clmsNowPage = g_clmsNowPage > clmsMaxPage ? clmsMaxPage : g_clmsNowPage;
                    }
                }
            });
        }

        // 其他事件

        $('#u414').addClass('cus').click(function () {
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
