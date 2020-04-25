<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_ExServiceMS.aspx.cs" EnableSessionState="False" Inherits="iRan.view.a_ExServiceMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_ExServiceMs</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_exservicems/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/iRan.js"></script>
    <script src="data/document.js"></script>
    <script src="files/a_exservicems/data.js"></script>
    <script src="files/AutoAdjustPostion.js"></script>
    <link href="files/CommonPrompt.css" rel="stylesheet" />
    <script src="files/CommonPrompt.js"></script>
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
            top:63.8%;
            left:40.75%;
            width:270px;
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
      <div id="u314" class="ax_default box_2">
        <div id="u314_div" class=""></div>
        <div id="u314_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u316" class="ax_default">
        <img id="u316_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u316_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u317" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u318" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u318_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u318_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u319" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u319_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u319_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u320" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u320_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u320_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u321" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u321_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u321_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u322" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u322_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u322_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u323" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u323_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u323_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u324" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u324_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u324_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u325" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u325_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u325_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u326" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u326_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u326_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u327" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u327_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u327_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u328" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u328_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u328_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u329" class="ax_default menu_item">
            <img id="u329_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u329_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u330" class="ax_default box_1">
        <img id="u330_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u330_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u331" class="ax_default label">
        <div id="u331_div" class=""></div>
        <div id="u331_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u315" style="display:none; visibility:hidden;"></div>

      <!-- 标头 (矩形) -->
      <div id="u332" class="ax_default label" data-label="标头">
        <div id="u332_div" class=""></div>
        <div id="u332_text" class="text ">
          <p><span style="text-decoration:none;">额外服务管理</span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u333" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u334" class="ax_default table_cell">
          <img id="u334_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="u334_text" class="text ">
            <p><span style="text-decoration:none;">物品ID</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u335" class="ax_default table_cell">
          <img id="u335_img" class="img " src="images/a_exservicems/u335.png"/>
          <div id="u335_text" class="text ">
            <p><span style="text-decoration:none;">物品名称</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u336" class="ax_default table_cell">
          <img id="u336_img" class="img " src="images/a_exservicems/u336.png"/>
          <div id="u336_text" class="text ">
            <p><span style="text-decoration:none;">物品库存</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u337" class="ax_default table_cell">
          <img id="u337_img" class="img " src="images/a_exservicems/u337.png"/>
          <div id="u337_text" class="text ">
            <p><span style="text-decoration:none;">物品价格</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u338" class="ax_default table_cell">
          <img id="u338_img" class="img " src="images/a_exservicems/u338.png"/>
          <div id="u338_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u339" class="ax_default table_cell">
          <img id="u339_img" class="img " src="images/a_exservicems/u339.png"/>
          <div id="u339_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u340" class="ax_default table_cell">
          <img id="u340_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="u340_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

          <div id="a341" class="ax_default table_cell">
          <img id="a341_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="a341_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

          <div id="a342" class="ax_default table_cell">
          <img id="a342_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="a342_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>
          <div id="a343" class="ax_default table_cell">
          <img id="a343_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="a343_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>
          <div id="a344" class="ax_default table_cell">
          <img id="a344_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="a344_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>



        <!-- Unnamed (单元格) -->
        <div id="u341" class="ax_default table_cell">
          <img id="u341_img" class="img " src="images/a_exservicems/u335.png"/>
          <div id="u341_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u342" class="ax_default table_cell">
          <img id="u342_img" class="img " src="images/a_exservicems/u336.png"/>
          <div id="u342_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u343" class="ax_default table_cell">
          <img id="u343_img" class="img " src="images/a_exservicems/u337.png"/>
          <div id="u343_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u344" class="ax_default table_cell">
          <img id="u344_img" class="img " src="images/a_exservicems/u338.png"/>
          <div id="u344_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u345" class="ax_default table_cell">
          <img id="u345_img" class="img " src="images/a_exservicems/u339.png"/>
          <div id="u345_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u346" class="ax_default table_cell">
          <img id="u346_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="u346_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u347" class="ax_default table_cell">
          <img id="u347_img" class="img " src="images/a_exservicems/u335.png"/>
          <div id="u347_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u348" class="ax_default table_cell">
          <img id="u348_img" class="img " src="images/a_exservicems/u336.png"/>
          <div id="u348_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u349" class="ax_default table_cell">
          <img id="u349_img" class="img " src="images/a_exservicems/u337.png"/>
          <div id="u349_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u350" class="ax_default table_cell">
          <img id="u350_img" class="img " src="images/a_exservicems/u338.png"/>
          <div id="u350_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u351" class="ax_default table_cell">
          <img id="u351_img" class="img " src="images/a_exservicems/u339.png"/>
          <div id="u351_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u352" class="ax_default table_cell">
          <img id="u352_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="u352_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u353" class="ax_default table_cell">
          <img id="u353_img" class="img " src="images/a_exservicems/u335.png"/>
          <div id="u353_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u354" class="ax_default table_cell">
          <img id="u354_img" class="img " src="images/a_exservicems/u336.png"/>
          <div id="u354_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u355" class="ax_default table_cell">
          <img id="u355_img" class="img " src="images/a_exservicems/u337.png"/>
          <div id="u355_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u356" class="ax_default table_cell">
          <img id="u356_img" class="img " src="images/a_exservicems/u338.png"/>
          <div id="u356_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u357" class="ax_default table_cell">
          <img id="u357_img" class="img " src="images/a_exservicems/u339.png"/>
          <div id="u357_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u358" class="ax_default table_cell">
          <img id="u358_img" class="img " src="images/a_checkininfo/u180.png"/>
          <div id="u358_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u359" class="ax_default table_cell">
          <img id="u359_img" class="img " src="images/a_exservicems/u335.png"/>
          <div id="u359_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u360" class="ax_default table_cell">
          <img id="u360_img" class="img " src="images/a_exservicems/u336.png"/>
          <div id="u360_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u361" class="ax_default table_cell">
          <img id="u361_img" class="img " src="images/a_exservicems/u337.png"/>
          <div id="u361_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u362" class="ax_default table_cell">
          <img id="u362_img" class="img " src="images/a_exservicems/u338.png"/>
          <div id="u362_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u363" class="ax_default table_cell">
          <img id="u363_img" class="img " src="images/a_exservicems/u339.png"/>
          <div id="u363_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u364" class="ax_default table_cell">
          <img id="u364_img" class="img " src="images/a_checkininfo/u200.png"/>
          <div id="u364_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u365" class="ax_default table_cell">
          <img id="u365_img" class="img " src="images/a_exservicems/u365.png"/>
          <div id="u365_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u366" class="ax_default table_cell">
          <img id="u366_img" class="img " src="images/a_exservicems/u366.png"/>
          <div id="u366_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u367" class="ax_default table_cell">
          <img id="u367_img" class="img " src="images/a_exservicems/u367.png"/>
          <div id="u367_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u368" class="ax_default table_cell">
          <img id="u368_img" class="img " src="images/a_exservicems/u368.png"/>
          <div id="u368_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u369" class="ax_default table_cell">
          <img id="u369_img" class="img " src="images/a_exservicems/u369.png"/>
          <div id="u369_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u370" class="ax_default text_field">
        <div id="u370_div" class=""></div>
        <input id="u370_input" type="text" value=" " class="u370_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u371" class="ax_default text_field">
        <div id="u371_div" class=""></div>
        <input id="u371_input" type="text" value=" " class="u371_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u372" class="ax_default text_field">
        <div id="u372_div" class=""></div>
        <input id="u372_input" type="text" value=" " class="u372_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u373" class="ax_default text_field">
        <div id="u373_div" class=""></div>
        <input id="u373_input" type="text" value=" " class="u373_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u374" class="ax_default text_field">
        <div id="u374_div" class=""></div>
        <input id="u374_input" type="text" value=" " class="u374_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u375" class="ax_default text_field">
        <div id="u375_div" class=""></div>
        <input id="u375_input" type="text" value=" " class="u375_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u376" class="ax_default text_field">
        <div id="u376_div" class=""></div>
        <input id="u376_input" type="text" value=" " class="u376_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u377" class="ax_default text_field">
        <div id="u377_div" class=""></div>
        <input id="u377_input" type="text" value=" " class="u377_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u378" class="ax_default text_field">
        <div id="u378_div" class=""></div>
        <input id="u378_input" type="text" value=" " class="u378_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u379" class="ax_default text_field">
        <div id="u379_div" class=""></div>
        <input id="u379_input" type="text" value=" " class="u379_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u380" class="ax_default text_field">
        <div id="u380_div" class=""></div>
        <input id="u380_input" type="text" value=" " class="u380_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u381" class="ax_default text_field">
        <div id="u381_div" class=""></div>
        <input id="u381_input" type="text" value=" " class="u381_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u382" class="ax_default text_field">
        <div id="u382_div" class=""></div>
        <input id="u382_input" type="text" value=" " class="u382_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u383" class="ax_default text_field">
        <div id="u383_div" class=""></div>
        <input id="u383_input" type="text" value=" " class="u383_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u384" class="ax_default text_field">
        <div id="u384_div" class=""></div>
        <input id="u384_input" type="text" value=" " class="u384_input"/>
      </div>

      <!-- 修改1 (矩形) -->
      <div id="u385" class="ax_default button cus" data-label="修改1" data-index="0" onclick="update(this)">
        <div id="u385_div" class=""></div>
        <div id="u385_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改2 (矩形) -->
      <div id="u386" class="ax_default button cus" data-label="修改2" data-index="1" onclick="update(this)">
        <div id="u386_div" class=""></div>
        <div id="u386_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改3 (矩形) -->
      <div id="u387" class="ax_default button cus" data-label="修改3" data-index="2" onclick="update(this)">
        <div id="u387_div" class=""></div>
        <div id="u387_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改4 (矩形) -->
      <div id="u388" class="ax_default button cus" data-label="修改4" data-index="3" onclick="update(this)">
        <div id="u388_div" class=""></div>
        <div id="u388_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改5 (矩形) -->
      <div id="u389" class="ax_default button cus" data-label="修改5" data-index="4" onclick="update(this)">
        <div id="u389_div" class=""></div>
        <div id="u389_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 下架1 (矩形) -->
      <div id="u390" class="ax_default button cus" data-label="下架1" data-index="0" onclick="lowershelf(this)">
        <div id="u390_div" class=""></div>
        <div id="u390_text" class="text ">
          <p><span style="text-decoration:none;"></span></p>
        </div>
      </div>

      <!-- 下架2 (矩形) -->
      <div id="u391" class="ax_default button cus" data-label="下架2" data-index="1" onclick="lowershelf(this)">
        <div id="u391_div" class=""></div>
        <div id="u391_text" class="text ">
          <p><span style="text-decoration:none;"></span></p>
        </div>
      </div>

      <!-- 下架3 (矩形) -->
      <div id="u392" class="ax_default button cus" data-label="下架3" data-index="2" onclick="lowershelf(this)">
        <div id="u392_div" class=""></div>
        <div id="u392_text" class="text ">
          <p><span style="text-decoration:none;"></span></p>
        </div>
      </div>

      <!-- 下架4 (矩形) -->
      <div id="u393" class="ax_default button cus" data-label="下架4" data-index="3" onclick="lowershelf(this)">
        <div id="u393_div" class=""></div>
        <div id="u393_text" class="text ">
          <p><span style="text-decoration:none;"></span></p>
        </div>
      </div>

      <!-- 下架5 (矩形) -->
      <div id="u394" class="ax_default button cus" data-label="下架5" data-index="4" onclick="lowershelf(this)">
        <div id="u394_div" class=""></div>
        <div id="u394_text" class="text ">
          <p><span style="text-decoration:none;"></span></p>
        </div>
      </div>

      <!-- 上一页 (矩形) -->
      <div id="u395" class="ax_default button cus" data-label="上一页" onclick="gsByPage(g_gsNowPage, -1)">
        <div id="u395_div" class=""></div>
        <div id="u395_text" class="text ">
          <p><span style="text-decoration:none;">上一页</span></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u396" class="ax_default button cus" data-label="下一页" onclick="gsByPage(g_gsNowPage, 1)">
        <div id="u396_div" class=""></div>
        <div id="u396_text" class="text ">
          <p><span style="text-decoration:none;">下一页</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    <script>

        var gsType = new Array(
            ["u340", "u380", "u375", "u370", "u385", "u390"],
            ["a341", "u381", "u376", "u371", "u386", "u391"],
            ["a342", "u382", "u377", "u372", "u387", "u392"],
            ["a343", "u383", "u378", "u373", "u388", "u393"],
            ["a344", "u384", "u379", "u374", "u389", "u394"]);

        var g_gsNowPage = <%=gsNowPage%>

        window.onload = function () {
            
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
                url: "a_ExServiceMS.aspx",
                type: "post",
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var gsJsonData = JSON.parse(data);
                        //console.log(ckInfoJsonData.length);

                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 4; k++) {
                                $("#" + gsType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                                $("#" + gsType[m][1] + "_input").val('');
                                $("#" + gsType[m][2] + "_input").val('');
                                $("#" + gsType[m][3] + "_input").val('');
                            }            
                            $("#" + gsType[m][4]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                            $("#" + gsType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < gsJsonData.length; b++) {
                            $("#" + gsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].GoodsID);
                            $("#" + gsType[b][1] + "_input").val(gsJsonData[b].GoodsName);
                            $("#" + gsType[b][2] + "_input").val(gsJsonData[b].GoodsStock);
                            $("#" + gsType[b][3] + "_input").val(gsJsonData[b].GoodsPrice);
                            $("#" + gsType[b][4]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gsid', gsJsonData[b].GoodsID);
                            $("#" + gsType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gsid', gsJsonData[b].GoodsID).attr('data-value-gsstock', gsJsonData[b].GoodsStock).attr('data-value-gsstatus', gsJsonData[b].GoodsStatus);
                            $("#" + gsType[b][5] + "_text").find('span').html(gsJsonData[b].GoodsStatus == 1 ? "下架" : "上架");
                        }
                    }
                }
            });       
        }

        function gsByPage(gsNowPage, tag) {
            
            if (gsNowPage == <%=gsMaxPage%> && tag == 1)
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
                url: "a_ExServiceMS.aspx",
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
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 4; k++) {
                                $("#" + gsType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                                $("#" + gsType[m][1] + "_input").val('');
                                $("#" + gsType[m][2] + "_input").val('');
                                $("#" + gsType[m][3] + "_input").val('');
                            }
                            $("#" + gsType[m][4]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                            $("#" + gsType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < gsJsonData.length; b++) {
                            $("#" + gsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].GoodsID);
                            $("#" + gsType[b][1] + "_input").val(gsJsonData[b].GoodsName);
                            $("#" + gsType[b][2] + "_input").val(gsJsonData[b].GoodsStock);
                            $("#" + gsType[b][3] + "_input").val(gsJsonData[b].GoodsPrice);
                            $("#" + gsType[b][4]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gsid', gsJsonData[b].GoodsID);
                            $("#" + gsType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-gsid', gsJsonData[b].GoodsID).attr('data-value-gsstock', gsJsonData[b].GoodsStock).attr('data-value-gsstatus', gsJsonData[b].GoodsStatus);
                            $("#" + gsType[b][5] + "_text").find('span').html(gsJsonData[b].GoodsStatus == 1 ? "下架" : "上架");
                        }
                    }
                }
            });       
        }

        // 修改Goods信息
        function update(select) {

            var gsid = $(select).attr('data-value-gsid');
            var index = $(select).attr('data-index');
            var gsname = $("#" + gsType[index][1] + "_input").val();
            var gsstock = $("#" + gsType[index][2] + "_input").val();
            var gsprice = $("#" + gsType[index][3] + "_input").val();
            var oldgsstatus = $("#" + gsType[index][5]).attr('data-value-gsstatus');

            if (GetVarcharLength(gsname) > 16) {
                window.pop("名称太长了，请短一点哈~");
                return;
            }
            if (gsstock < 0 || isNaN(gsstock)) {
                window.pop("库存只能为不小于0的纯数字诶~");
                return;
            }
            if (gsprice <= 0 || isNaN(gsprice)) {
                window.pop("价格只能为大于0的纯数字哦~");
                return;
            }

            if (gsstock == 0) {
                $("#" + gsType[index][5]).attr('data-value-gsstock', gsstock);
                $("#" + gsType[index][5]).attr('data-value-gsstatus', 0);
                $("#" + gsType[index][5] + "_text").find('span').html("上架");
            }
            if (oldgsstatus == 0 && gsstock > 0) {
                $("#" + gsType[index][5]).attr('data-value-gsstock', gsstock);                
            }
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
                url: "a_ExServiceMS.aspx",
                type: "post",
                data: { "gsid": gsid, "gsname": gsname, "gsstock": gsstock, "gsprice": gsprice,"postTag": "update" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        window.pop(gsname + "的信息修改成功");
                    }
                }
            });       
        }

        // 上架或下架Goods
        function lowershelf(select) {

            var gsid = $(select).attr('data-value-gsid');
            
            var index = $(select).attr('data-index'),
                gsname = $("#" + gsType[index][1] + "_input").val(),
                gsstock = $(select).attr('data-value-gsstock'),
                inputgsstock = $("#" + gsType[index][2] + "_input").val(),
                gsstatus = $(select).attr('data-value-gsstatus'),
                tag = gsstatus == 0 ? 1 : 0;

            if ($(select).find('span').html() == "上架") {
                if (gsstock == 0 && gsstatus == 0 && inputgsstock == 0) {
                    window.pop('库存为0，无法上架哟~');
                    return;
                }
                if (inputgsstock == 0) {
                    window.pop('左边库存为0，为什么试图上架呢~');
                    return;
                }
            }                        
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
                url: "a_ExServiceMS.aspx",
                type: "post",
                data: { "gsid": gsid, "gsstock": inputgsstock, "tag": tag, "postTag": "lowershelf" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        $(select).attr('data-value-gsstock', inputgsstock);
                        $(select).attr('data-value-gsstatus', tag == 1 ? 1 : 0);
                        $(select).find('span').html(tag == 1 ? "下架" : "上架");
                        window.pop(gsname + (tag == 1 ? "上架成功": "下架成功"));
                    }
                }
            });       
        }

        // 其他事件

        $('#u331').addClass('cus').click(function () {
            $(window).attr('location', "a_MainPage.aspx");
        });

        $('.menu_item').addClass('cus');

        var redirectArr = new Array("Sign in.aspx", "a_GRoomMS.aspx", "a_RoomTypeMS.aspx", "a_CheckinInfo.aspx",
            "a_OrderMS.aspx", "a_ExServiceMS.aspx", "a_CleanService.aspx", "a_Caiwu.aspx", "a_RegisterMS.aspx", "a_SelfInfo.aspx", "a_Notice.aspx");

        function Redirect(select) {
            $(window).attr('location', redirectArr[$('.menu_item').index(select)]);
        }

        function GetVarcharLength(str) {
            if (!str) {
                return '';
            }
            // 预期计数：中文2字节，英文1字节
            var a = 0;
            // 循环计数
            var i = 0;
            // 临时字串
            var temp = '';
            for (i = 0; i < str.length; i++) {
                if (str.charCodeAt(i) > 255) {
                    // 按照预期计数增加2
                    a += 2;
                }
                else {
                    a++;
                }
            }
            return a;
        }

    </script>

    </form>
</body>
</html>
