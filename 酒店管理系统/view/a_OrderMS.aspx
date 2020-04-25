<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_OrderMS.aspx.cs" EnableSessionState="False" Inherits="iRan.view.a_OrderMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_OrderMs</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_orderms/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_orderms/data.js"></script>
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
            top:58%;
            left:47.1%;
            width:150px;
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
        .osTextArea {
            background-color: #f2f2f2;                        
            font-family: '微软雅黑 Bold', '微软雅黑';
            font-size: 15px;
            text-align:center;            
            resize: none;            
            user-select:none;
            -moz-user-select:none;
            -webkit-user-select:none;
            -ms-user-select:none;
            overflow-x: hidden;
			overflow-y: scroll;
            border-width: 0px;
            width: 100%;
            height: 60px;
        }
        .osTextArea::-webkit-scrollbar {
            display: none;
        } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u235" class="ax_default box_2">
        <div id="u235_div" class=""></div>
        <div id="u235_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u237" class="ax_default">
        <img id="u237_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u237_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u238" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u239" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u239_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u239_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u240" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u240_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u240_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u241" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u241_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u241_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u242" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u242_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u242_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u243" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u243_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u243_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u244" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u244_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u244_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u245" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u245_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u245_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u246" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u246_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u246_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u247" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u247_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u247_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u248" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u248_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u248_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u249" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u249_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u249_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u250" class="ax_default menu_item">
            <img id="u250_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u250_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u251" class="ax_default box_1">
        <img id="u251_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u251_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u252" class="ax_default label">
        <div id="u252_div" class=""></div>
        <div id="u252_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u236" style="display:none; visibility:hidden;"></div>

      <!-- 标头 (矩形) -->
      <div id="u253" class="ax_default label" data-label="标头">
        <div id="u253_div" class=""></div>
        <div id="u253_text" class="text ">
          <p><span style="text-decoration:none;">订单管理</span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u254" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u255" class="ax_default table_cell">
          <img id="u255_img" class="img " src="images/a_orderms/u255.png"/>
          <div id="u255_text" class="text ">
            <p><span style="text-decoration:none;">订单号</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u256" class="ax_default table_cell">
          <img id="u256_img" class="img " src="images/a_orderms/u256.png"/>
          <div id="u256_text" class="text ">
            <p><span style="text-decoration:none;">姓名</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u257" class="ax_default table_cell">
          <img id="u257_img" class="img " src="images/a_orderms/u257.png"/>
          <div id="u257_text" class="text ">
            <p><span style="text-decoration:none;">客房号</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u258" class="ax_default table_cell">
          <img id="u258_img" class="img " src="images/a_orderms/u258.png"/>
          <div id="u258_text" class="text ">
            <p><span style="text-decoration:none;">入住时间</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u259" class="ax_default table_cell">
          <img id="u259_img" class="img " src="images/a_orderms/u259.png"/>
          <div id="u259_text" class="text ">
            <p><span style="text-decoration:none;">订单内容</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u260" class="ax_default table_cell">
          <img id="u260_img" class="img " src="images/a_orderms/u260.png"/>
          <div id="u260_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u261" class="ax_default table_cell">
          <img id="u261_img" class="img " src="images/a_orderms/u261.png"/>
          <div id="u261_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u262" class="ax_default table_cell">
          <img id="u262_img" class="img " src="images/a_orderms/u262.png"/>
          <div id="u262_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u263" class="ax_default table_cell">
          <img id="u263_img" class="img " src="images/a_orderms/u263.png"/>
          <div id="u263_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u264" class="ax_default table_cell">
          <img id="u264_img" class="img " src="images/a_orderms/u264.png"/>
          <div id="u264_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u265" class="ax_default table_cell">
          <img id="u265_img" class="img " src="images/a_orderms/u265.png"/>
          <div id="u265_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u266" class="ax_default table_cell">
          <img id="u266_img" class="img " src="images/a_orderms/u266.png"/>
          <div id="u266_text" class="text " style="display:none; visibility: hidden">
            <p><textarea class="osTextArea" rows="2" cols="40" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u267" class="ax_default table_cell">
          <img id="u267_img" class="img " src="images/a_orderms/u267.png"/>
          <div id="u267_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u268" class="ax_default table_cell">
          <img id="u268_img" class="img " src="images/a_orderms/u268.png"/>
          <div id="u268_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u269" class="ax_default table_cell">
          <img id="u269_img" class="img " src="images/a_orderms/u262.png"/>
          <div id="u269_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u270" class="ax_default table_cell">
          <img id="u270_img" class="img " src="images/a_orderms/u263.png"/>
          <div id="u270_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u271" class="ax_default table_cell">
          <img id="u271_img" class="img " src="images/a_orderms/u264.png"/>
          <div id="u271_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u272" class="ax_default table_cell">
          <img id="u272_img" class="img " src="images/a_orderms/u265.png"/>
          <div id="u272_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u273" class="ax_default table_cell">
          <img id="u273_img" class="img " src="images/a_orderms/u266.png"/>
          <div id="u273_text" class="text " style="display:none; visibility: hidden">
            <p><textarea class="osTextArea" rows="2" cols="40" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u274" class="ax_default table_cell">
          <img id="u274_img" class="img " src="images/a_orderms/u267.png"/>
          <div id="u274_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u275" class="ax_default table_cell">
          <img id="u275_img" class="img " src="images/a_orderms/u268.png"/>
          <div id="u275_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u276" class="ax_default table_cell">
          <img id="u276_img" class="img " src="images/a_orderms/u262.png"/>
          <div id="u276_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u277" class="ax_default table_cell">
          <img id="u277_img" class="img " src="images/a_orderms/u263.png"/>
          <div id="u277_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u278" class="ax_default table_cell">
          <img id="u278_img" class="img " src="images/a_orderms/u264.png"/>
          <div id="u278_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u279" class="ax_default table_cell">
          <img id="u279_img" class="img " src="images/a_orderms/u265.png"/>
          <div id="u279_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u280" class="ax_default table_cell">
          <img id="u280_img" class="img " src="images/a_orderms/u266.png"/>
          <div id="u280_text" class="text " style="display:none; visibility: hidden">
            <p><textarea class="osTextArea" rows="2" cols="40" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u281" class="ax_default table_cell">
          <img id="u281_img" class="img " src="images/a_orderms/u267.png"/>
          <div id="u281_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u282" class="ax_default table_cell">
          <img id="u282_img" class="img " src="images/a_orderms/u268.png"/>
          <div id="u282_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u283" class="ax_default table_cell">
          <img id="u283_img" class="img " src="images/a_orderms/u262.png"/>
          <div id="u283_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u284" class="ax_default table_cell">
          <img id="u284_img" class="img " src="images/a_orderms/u263.png"/>
          <div id="u284_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u285" class="ax_default table_cell">
          <img id="u285_img" class="img " src="images/a_orderms/u264.png"/>
          <div id="u285_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u286" class="ax_default table_cell">
          <img id="u286_img" class="img " src="images/a_orderms/u265.png"/>
          <div id="u286_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u287" class="ax_default table_cell">
          <img id="u287_img" class="img " src="images/a_orderms/u266.png"/>
          <div id="u287_text" class="text " style="display:none; visibility: hidden">
            <p><textarea class="osTextArea" rows="2" cols="40" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u288" class="ax_default table_cell">
          <img id="u288_img" class="img " src="images/a_orderms/u267.png"/>
          <div id="u288_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u289" class="ax_default table_cell">
          <img id="u289_img" class="img " src="images/a_orderms/u268.png"/>
          <div id="u289_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u290" class="ax_default table_cell">
          <img id="u290_img" class="img " src="images/a_orderms/u290.png"/>
          <div id="u290_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u291" class="ax_default table_cell">
          <img id="u291_img" class="img " src="images/a_orderms/u291.png"/>
          <div id="u291_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u292" class="ax_default table_cell">
          <img id="u292_img" class="img " src="images/a_orderms/u292.png"/>
          <div id="u292_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u293" class="ax_default table_cell">
          <img id="u293_img" class="img " src="images/a_orderms/u293.png"/>
          <div id="u293_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u294" class="ax_default table_cell">
          <img id="u294_img" class="img " src="images/a_orderms/u294.png"/>
          <div id="u294_text" class="text " style="display:none; visibility: hidden">
            <p><textarea class="osTextArea" rows="2" cols="40" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u295" class="ax_default table_cell">
          <img id="u295_img" class="img " src="images/a_orderms/u295.png"/>
          <div id="u295_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u296" class="ax_default table_cell">
          <img id="u296_img" class="img " src="images/a_orderms/u296.png"/>
          <div id="u296_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>
      </div>

    

      <!-- 确认1 (矩形) -->
      <div id="u302" class="ax_default button cus" data-label="确认1" onclick="Operation(this, 0)">
        <div id="u302_div" class=""></div>
        <div id="u302_text" class="text ">
          <p><span style="text-decoration:none;">确认</span></p>
        </div>
      </div>

      <!-- 确认2 (矩形) -->
      <div id="u303" class="ax_default button cus" data-label="确认2" onclick="Operation(this, 0)">
        <div id="u303_div" class=""></div>
        <div id="u303_text" class="text ">
          <p><span style="text-decoration:none;">确认</span></p>
        </div>
      </div>

      <!-- 确认3 (矩形) -->
      <div id="u304" class="ax_default button cus" data-label="确认3" onclick="Operation(this, 0)">
        <div id="u304_div" class=""></div>
        <div id="u304_text" class="text ">
          <p><span style="text-decoration:none;">确认</span></p>
        </div>
      </div>

      <!-- 确认4 (矩形) -->
      <div id="u305" class="ax_default button cus" data-label="确认4" onclick="Operation(this, 0)">
        <div id="u305_div" class=""></div>
        <div id="u305_text" class="text ">
          <p><span style="text-decoration:none;">确认</span></p>
        </div>
      </div>

      <!-- 确认5 (形状) -->
      <div id="u306" class="ax_default button cus" data-label="确认5" onclick="Operation(this, 0)">
        <img id="u306_img" class="img " src="images/a_orderms/确认5_u306.svg"/>
        <div id="u306_text" class="text ">
          <p><span style="text-decoration:none;">确认</span></p>
        </div>
      </div>

      <!-- 退回1 (矩形) -->
      <div id="u307" class="ax_default button cus" data-label="退回1" onclick="Operation(this, 1)">
        <div id="u307_div" class=""></div>
        <div id="u307_text" class="text ">
          <p><span style="text-decoration:none;">退回</span></p>
        </div>
      </div>

      <!-- 退回2 (矩形) -->
      <div id="u308" class="ax_default button cus" data-label="退回2" onclick="Operation(this, 1)">
        <div id="u308_div" class=""></div>
        <div id="u308_text" class="text ">
          <p><span style="text-decoration:none;">退回</span></p>
        </div>
      </div>

      <!-- 退回3 (矩形) -->
      <div id="u309" class="ax_default button cus" data-label="退回3" onclick="Operation(this, 1)">
        <div id="u309_div" class=""></div>
        <div id="u309_text" class="text ">
          <p><span style="text-decoration:none;">退回</span></p>
        </div>
      </div>

      <!-- 退回4 (矩形) -->
      <div id="u310" class="ax_default button cus" data-label="退回4" onclick="Operation(this, 1)">
        <div id="u310_div" class=""></div>
        <div id="u310_text" class="text ">
          <p><span style="text-decoration:none;">退回</span></p>
        </div>
      </div>

      <!-- 退回5 (形状) -->
      <div id="u311" class="ax_default button cus" data-label="退回5" onclick="Operation(this, 1)">
        <img id="u311_img" class="img " src="images/a_orderms/确认5_u306.svg"/>
        <div id="u311_text" class="text ">
          <p><span style="text-decoration:none;">退回</span></p>
        </div>
      </div>

      <!-- 上一页 (矩形) -->
      <div id="u312" class="ax_default button cus" data-label="上一页" onclick="omByPage(g_omNowPage, -1)">
        <div id="u312_div" class=""></div>
        <div id="u312_text" class="text ">
          <p><span style="text-decoration:none;">上一页</span></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u313" class="ax_default button cus" data-label="下一页" onclick="omByPage(g_omNowPage, 1)">
        <div id="u313_div" class=""></div>
        <div id="u313_text" class="text ">
          <p><span style="text-decoration:none;">下一页</span></p>
        </div>
      </div>
    </div>

    <div id="ReupdatePage" hidden="hidden" onclick="updatePage(g_omNowPage)"></div>

    <script src="resources/scripts/axure/ios.js"></script>

    <script>

        var omType = new Array(
            ["#u262", "#u263", "#u264", "#u265", "#u266", "#u302", "#u307"],
            ["#u269", "#u270", "#u271", "#u272", "#u273", "#u303", "#u308"],
            ["#u276", "#u277", "#u278", "#u279", "#u280", "#u304", "#u309"],
            ["#u283", "#u284", "#u285", "#u286", "#u287", "#u305", "#u310"],
            ["#u290", "#u291", "#u292", "#u293", "#u294", "#u306", "#u311"]);        

        // 页面初次加载时异步获取数据
        window.onload = function () {
            //$('#u297_div').css('display', 'none');

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
                url: "a_OrderMS.aspx",
                type: "post",
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var omJsonData = JSON.parse(data);
                        
                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 5; k++)
                                $(omType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(omType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                            $(omType[m][6]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < omJsonData.length; b++) {
                            $(omType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Oid);
                            $(omType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Fname);
                            $(omType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Gid);
                            $(omType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html((omJsonData[b].CheckinTime).substring(0, 10));

                            var omOrderContent;
                            if (omJsonData[b].esOrderContent != "")
                                omOrderContent = omJsonData[b].esOrderContent;
                            else
                                omOrderContent = "没有预定额外服务";
                            $(omType[b][4] + "_text").css('visibility', 'visible').css('display', 'block').find('textarea').html(omOrderContent);

                            $(omType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-cid', omJsonData[b].Cid).attr('data-value-oid', omJsonData[b].Oid);
                            $(omType[b][6]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-cid', omJsonData[b].Cid).attr('data-value-oid', omJsonData[b].Oid);
                        }
                    }
                }
            });
        };

        // 定义全局变量
        var g_omNowPage = <%=omNowPage%>;

        // Ajax分页查询
        function omByPage(omNowPage, tag) {

            if (omNowPage == <%=omMaxPage%> && tag == 1)
                return;
            if (omNowPage == 1 && tag == -1)
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
                url: "a_OrderMS.aspx",
                type: "post",
                data: { "omNowPage": omNowPage + tag, "postTag": "omByPage" },
                dataType: "text",
                success: function (data) {
                    
                    if (data == -1) {

                    }
                    else {
                        if (tag == 1)
                            g_omNowPage++;
                        else
                            g_omNowPage--;

                        var omJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 5; k++)
                                $(omType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(omType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                            $(omType[m][6]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < omJsonData.length; b++) {
                            $(omType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Oid);
                            $(omType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Fname);
                            $(omType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Gid);
                            $(omType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html((omJsonData[b].CheckinTime).substring(0, 10));

                            var omOrderContent;
                            if (omJsonData[b].esOrderContent != "")
                                omOrderContent = omJsonData[b].esOrderContent;
                            else
                                omOrderContent = "没有预定额外服务";
                            $(omType[b][4] + "_text").css('visibility', 'visible').css('display', 'block').find('textarea').html(omOrderContent);

                            $(omType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-cid', omJsonData[b].Cid).attr('data-value-oid', omJsonData[b].Oid);
                            $(omType[b][6]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-cid', omJsonData[b].Cid).attr('data-value-oid', omJsonData[b].Oid);
                        }
                    }
                }
            });
        }

        function Operation(select, tag) {
            
            var cid = $(select).attr('data-value-cid')
                oid = $(select).attr('data-value-oid');

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
                url: "a_OrderMS.aspx",
                type: "post",
                data: { "cid": cid, "oid": oid, "tag": tag, "postTag": "operation" },
                dataType: "text",
                success: function (data) {
                    
                    if (data == 1) {
                        window.pop('确认成功');
                        $('#ReupdatePage').trigger('click');
                    }
                    else if (data == 2) {
                        window.pop('退回成功');  
                        $('#ReupdatePage').trigger('click');
                    }
                }
            });
        }

        function updatePage(omNowPage) {
            
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
                url: "a_OrderMS.aspx",
                type: "post",
                async: true,
                data: { "omNowPage": omNowPage, "postTag": "updatePage" },
                dataType: "text",
                success: function (data) {
                   
                    if (data == -1) {

                    }
                    else {
                        var n = Number(data);
                        if (!isNaN(n)) { // 如果返回的是数字，说明最大页数减少了
                            g_omNowPage = n;    
                            updatePage(g_omNowPage);
                            return;
                        }                            
                        var omJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 5; k++)
                                $(omType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $(omType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                            $(omType[m][6]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < omJsonData.length; b++) {
                            $(omType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Oid);
                            $(omType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Fname);
                            $(omType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(omJsonData[b].Gid);
                            $(omType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html((omJsonData[b].CheckinTime).substring(0, 10));

                            var omOrderContent;
                            if (omJsonData[b].esOrderContent != "")
                                omOrderContent = omJsonData[b].esOrderContent;
                            else
                                omOrderContent = "没有预定额外服务";
                            $(omType[b][4] + "_text").css('visibility', 'visible').css('display', 'block').find('textarea').html(omOrderContent);

                            $(omType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-cid', omJsonData[b].Cid).attr('data-value-oid', omJsonData[b].Oid);
                            $(omType[b][6]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-cid', omJsonData[b].Cid).attr('data-value-oid', omJsonData[b].Oid);
                        }
                    }
                }
            });
        }


        // 其他事件

        $('#u252').addClass('cus').click(function () {
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
