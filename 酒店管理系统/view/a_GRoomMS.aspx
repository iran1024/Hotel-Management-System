<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_GRoomMS.aspx.cs" Inherits="iRan.view.a_GRoomMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_GRoomMs</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_groomms/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_groomms/data.js"></script>
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
            top:67%;
            left:40.8%;
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
      <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u2" class="ax_default">
        <img id="u2_menu" class="img " src="images/a_groomms/regen/u2_menu.png" alt="u2_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u3" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u4" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u4_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u4_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u5" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u5_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u5_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u6" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u6_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u6_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u7" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u7_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u7_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u8" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u8_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u8_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u9" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u9_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u9_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u10" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u10_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u10_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u11" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u11_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u11_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u12" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u12_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u12_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u13" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u13_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u13_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u14" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u14_img" class="img " src="images/a_groomms/regen/u4.png"/>
            <div id="u14_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u15" class="ax_default menu_item">
            <img id="u15_img" class="img " src="images/a_groomms/regen/u15.png"/>
            <div id="u15_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u16" class="ax_default box_1">
        <img id="u16_img" class="img " src="images/a_groomms/regen/u16.svg"/>
        <div id="u16_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u17" class="ax_default label">
        <div id="u17_div" class=""></div>
        <div id="u17_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u1" style="display:none; visibility:hidden;"></div>

      <!-- 标头 (矩形) -->
      <div id="u18" class="ax_default label" data-label="标头">
        <div id="u18_div" class=""></div>
        <div id="u18_text" class="text ">
          <p><span style="text-decoration:none;">客房信息管理</span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u19" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u20" class="ax_default table_cell">
          <img id="u20_img" class="img " src="images/a_groomms/regen/u20.png"/>
          <div id="u20_text" class="text ">
            <p><span style="text-decoration:none;">客房号</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u21" class="ax_default table_cell">
          <img id="u21_img" class="img " src="images/a_groomms/regen/u21.png"/>
          <div id="u21_text" class="text ">
            <p><span style="text-decoration:none;">房型</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u22" class="ax_default table_cell">
          <img id="u22_img" class="img " src="images/a_groomms/regen/u22.png"/>
          <div id="u22_text" class="text ">
            <p><span style="text-decoration:none;">宽带上网</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u23" class="ax_default table_cell">
          <img id="u23_img" class="img " src="images/a_groomms/regen/u23.png"/>
          <div id="u23_text" class="text ">
            <p><span style="text-decoration:none;">房价</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u24" class="ax_default table_cell">
          <img id="u24_img" class="img " src="images/a_groomms/regen/u24.png"/>
          <div id="u24_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u25" class="ax_default table_cell">
          <img id="u25_img" class="img " src="images/a_groomms/regen/u20.png"/>
          <div id="u25_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u26" class="ax_default table_cell">
          <img id="u26_img" class="img " src="images/a_groomms/regen/u21.png"/>
          <div id="u26_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u27" class="ax_default table_cell">
          <img id="u27_img" class="img " src="images/a_groomms/regen/u22.png"/>
          <div id="u27_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u28" class="ax_default table_cell">
          <img id="u28_img" class="img " src="images/a_groomms/regen/u23.png"/>
          <div id="u28_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u29" class="ax_default table_cell">
          <img id="u29_img" class="img " src="images/a_groomms/regen/u24.png"/>
          <div id="u29_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u30" class="ax_default table_cell">
          <img id="u30_img" class="img " src="images/a_groomms/regen/u20.png"/>
          <div id="u30_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u31" class="ax_default table_cell">
          <img id="u31_img" class="img " src="images/a_groomms/regen/u21.png"/>
          <div id="u31_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u32" class="ax_default table_cell">
          <img id="u32_img" class="img " src="images/a_groomms/regen/u22.png"/>
          <div id="u32_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u33" class="ax_default table_cell">
          <img id="u33_img" class="img " src="images/a_groomms/regen/u23.png"/>
          <div id="u33_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u34" class="ax_default table_cell">
          <img id="u34_img" class="img " src="images/a_groomms/regen/u24.png"/>
          <div id="u34_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u35" class="ax_default table_cell">
          <img id="u35_img" class="img " src="images/a_groomms/regen/u20.png"/>
          <div id="u35_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u36" class="ax_default table_cell">
          <img id="u36_img" class="img " src="images/a_groomms/regen/u21.png"/>
          <div id="u36_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u37" class="ax_default table_cell">
          <img id="u37_img" class="img " src="images/a_groomms/regen/u22.png"/>
          <div id="u37_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u38" class="ax_default table_cell">
          <img id="u38_img" class="img " src="images/a_groomms/regen/u23.png"/>
          <div id="u38_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u39" class="ax_default table_cell">
          <img id="u39_img" class="img " src="images/a_groomms/regen/u24.png"/>
          <div id="u39_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u40" class="ax_default table_cell">
          <img id="u40_img" class="img " src="images/a_groomms/regen/u20.png"/>
          <div id="u40_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u41" class="ax_default table_cell">
          <img id="u41_img" class="img " src="images/a_groomms/regen/u21.png"/>
          <div id="u41_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u42" class="ax_default table_cell">
          <img id="u42_img" class="img " src="images/a_groomms/regen/u22.png"/>
          <div id="u42_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u43" class="ax_default table_cell">
          <img id="u43_img" class="img " src="images/a_groomms/regen/u23.png"/>
          <div id="u43_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u44" class="ax_default table_cell">
          <img id="u44_img" class="img " src="images/a_groomms/regen/u24.png"/>
          <div id="u44_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u45" class="ax_default table_cell">
          <img id="u45_img" class="img " src="images/a_groomms/regen/u45.png"/>
          <div id="u45_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u46" class="ax_default table_cell">
          <img id="u46_img" class="img " src="images/a_groomms/regen/u46.png"/>
          <div id="u46_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u47" class="ax_default table_cell">
          <img id="u47_img" class="img " src="images/a_groomms/regen/u47.png"/>
          <div id="u47_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u48" class="ax_default table_cell">
          <img id="u48_img" class="img " src="images/a_groomms/regen/u48.png"/>
          <div id="u48_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u49" class="ax_default table_cell">
          <img id="u49_img" class="img " src="images/a_groomms/regen/u49.png"/>
          <div id="u49_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>
      </div>

      <!-- 上一页 (矩形) -->
      <div id="u50" class="ax_default button cus" data-label="上一页" onclick="grByPage(g_grNowPage, -1)">
        <div id="u50_div" class=""></div>
        <div id="u50_text" class="text ">
          <p><span style="text-decoration:none;">上一页</span></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u51" class="ax_default button cus" data-label="下一页" onclick="grByPage(g_grNowPage, 1)">
        <div id="u51_div" class=""></div>
        <div id="u51_text" class="text ">
          <p><span style="text-decoration:none;">下一页</span></p>
        </div>
      </div>

      <!-- 修改1 (矩形) -->
      <div id="u52" class="ax_default button cus" data-label="修改1" data-index="0" onclick="updategr(this)">
        <div id="u52_div" class=""></div>
        <div id="u52_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改2 (矩形) -->
      <div id="u53" class="ax_default button cus" data-label="修改2" data-index="1" onclick="updategr(this)">
        <div id="u53_div" class=""></div>
        <div id="u53_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改3 (矩形) -->
      <div id="u54" class="ax_default button cus" data-label="修改3" data-index="2" onclick="updategr(this)">
        <div id="u54_div" class=""></div>
        <div id="u54_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改4 (矩形) -->
      <div id="u55" class="ax_default button cus" data-label="修改4" data-index="3" onclick="updategr(this)">
        <div id="u55_div" class=""></div>
        <div id="u55_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改5 (矩形) -->
      <div id="u56" class="ax_default button cus" data-label="修改5" data-index="4" onclick="updategr(this)">
        <div id="u56_div" class=""></div>
        <div id="u56_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- net1 (下拉列表) -->
      <div id="u57" class="ax_default droplist" data-label="net1">
        <div id="u57_div" class=""></div>
        <select id="u57_input" class="u57_input select-haswlan" style="visibility:hidden" data-index="0">
          <option class="u57_input_option" value="1">是</option>
          <option class="u57_input_option" value="0">否</option>
        </select>
      </div>

      <!-- net2 (下拉列表) -->
      <div id="u58" class="ax_default droplist" data-label="net2">
        <div id="u58_div" class=""></div>
        <select id="u58_input" class="u58_input select-haswlan" style="visibility:hidden" data-index="1">
          <option class="u58_input_option" value="1">是</option>
          <option class="u58_input_option" value="0">否</option>
        </select>
      </div>

      <!-- net3 (下拉列表) -->
      <div id="u59" class="ax_default droplist" data-label="net3">
        <div id="u59_div" class=""></div>
        <select id="u59_input" class="u59_input select-haswlan" style="visibility:hidden" data-index="2">
          <option class="u59_input_option" value="1">是</option>
          <option class="u59_input_option" value="0">否</option>
        </select>
      </div>

      <!-- net4 (下拉列表) -->
      <div id="u60" class="ax_default droplist" data-label="net4">
        <div id="u60_div" class=""></div>
        <select id="u60_input" class="u60_input select-haswlan" style="visibility:hidden" data-index="3">
          <option class="u60_input_option" value="1">是</option>
          <option class="u60_input_option" value="0">否</option>
        </select>
      </div>

      <!-- net5 (下拉列表) -->
      <div id="u61" class="ax_default droplist" data-label="net5">
        <div id="u61_div" class=""></div>
        <select id="u61_input" class="u61_input select-haswlan" style="visibility:hidden" data-index="4">
          <option class="u61_input_option" value="1">是</option>
          <option class="u61_input_option" value="0">否</option>
        </select>
      </div>

      <!-- net1 (下拉列表) -->
      <div id="u62" class="ax_default droplist" data-label="net1">
        <div id="u62_div" class=""></div>
        <select id="u62_input" class="u62_input select-rbtype" style="visibility:hidden" data-index="0">
          <option class="u62_input_option" value="0">单人房-硬板床</option>
          <option class="u62_input_option" value="1">单人房-软榻床</option>
          <option class="u62_input_option" value="2">双人房-硬板床</option>
          <option class="u62_input_option" value="3">双人房-软榻床</option>
          <option class="u62_input_option" value="4">总统套房-软榻床</option>
          <option class="u62_input_option" value="5">总统套房-大圆床</option>
        </select>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u63" class="ax_default text_field">
        <div id="u63_div" class=""></div>
        <input id="u63_input" type="text" value=" " class="u63_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u64" class="ax_default text_field">
        <div id="u64_div" class=""></div>
        <input id="u64_input" type="text" value=" " class="u64_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u65" class="ax_default text_field">
        <div id="u65_div" class=""></div>
        <input id="u65_input" type="text" value=" " class="u65_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u66" class="ax_default text_field">
        <div id="u66_div" class=""></div>
        <input id="u66_input" type="text" value=" " class="u66_input"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u67" class="ax_default text_field">
        <div id="u67_div" class=""></div>
        <input id="u67_input" type="text" value=" " class="u67_input"/>
      </div>

      <!-- net1 (下拉列表) -->
      <div id="u68" class="ax_default droplist" data-label="net1">
        <div id="u68_div" class=""></div>
        <select id="u68_input" class="u68_input select-rbtype" style="visibility:hidden" data-index="1">
          <option class="u68_input_option" value="0">单人房-硬板床</option>
          <option class="u68_input_option" value="1">单人房-软榻床</option>
          <option class="u68_input_option" value="2">双人房-硬板床</option>
          <option class="u68_input_option" value="3">双人房-软榻床</option>
          <option class="u68_input_option" value="4">总统套房-软榻床</option>
          <option class="u68_input_option" value="5">总统套房-大圆床</option>
        </select>
      </div>

      <!-- net1 (下拉列表) -->
      <div id="u69" class="ax_default droplist" data-label="net1">
        <div id="u69_div" class=""></div>
        <select id="u69_input" class="u69_input select-rbtype" style="visibility:hidden" data-index="2">
          <option class="u69_input_option" value="0">单人房-硬板床</option>
          <option class="u69_input_option" value="1">单人房-软榻床</option>
          <option class="u69_input_option" value="2">双人房-硬板床</option>
          <option class="u69_input_option" value="3">双人房-软榻床</option>
          <option class="u69_input_option" value="4">总统套房-软榻床</option>
          <option class="u69_input_option" value="5">总统套房-大圆床</option>
        </select>
      </div>

      <!-- net1 (下拉列表) -->
      <div id="u70" class="ax_default droplist" data-label="net1">
        <div id="u70_div" class=""></div>
        <select id="u70_input" class="u70_input select-rbtype" style="visibility:hidden" data-index="3">
          <option class="u70_input_option" value="0">单人房-硬板床</option>
          <option class="u70_input_option" value="1">单人房-软榻床</option>
          <option class="u70_input_option" value="2">双人房-硬板床</option>
          <option class="u70_input_option" value="3">双人房-软榻床</option>
          <option class="u70_input_option" value="4">总统套房-软榻床</option>
          <option class="u70_input_option" value="5">总统套房-大圆床</option>
        </select>
      </div>

      <!-- net1 (下拉列表) -->
      <div id="u71" class="ax_default droplist" data-label="net1">
        <div id="u71_div" class=""></div>
        <select id="u71_input" class="u71_input select-rbtype" style="visibility:hidden" data-index="4">
          <option class="u71_input_option" value="0">单人房-硬板床</option>
          <option class="u71_input_option" value="1">单人房-软榻床</option>
          <option class="u71_input_option" value="2">双人房-硬板床</option>
          <option class="u71_input_option" value="3">双人房-软榻床</option>
          <option class="u71_input_option" value="4">总统套房-软榻床</option>
          <option class="u71_input_option" value="5">总统套房-大圆床</option>
        </select>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>


    <script>

        var grType = new Array(
            ["u25", "u62", "u57", "u63", "u52"],
            ["u30", "u68", "u58", "u64", "u53"],
            ["u35", "u69", "u59", "u65", "u54"],
            ["u40", "u70", "u60", "u66", "u55"],
            ["u45", "u71", "u61", "u67", "u56"]);

        var bedType = new Array([0, 1], [2, 3], [-1, 4, 5]);        
        
        var g_grNowPage = <%=grNowPage%>

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
                url: "a_GRoomMS.aspx",
                type: "post",
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var grJsonData = JSON.parse(data);
                                       
                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 4; k++) {
                                $("#" + grType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                                $("#" + grType[m][1] + "_input").css('visibility', 'hidden').css('display', 'none');
                                $("#" + grType[m][2] + "_input").css('visibility', 'hidden').css('display', 'none');
                                $("#" + grType[m][3] + "_input").css('visibility', 'hidden').css('display', 'none');
                            }
                            $("#" + grType[m][4]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');                            
                        }

                        // 再更新数据
                        for (var b = 0; b < grJsonData.length; b++) {
                            $("#" + grType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(grJsonData[b].Gid);
                            $("#" + grType[b][1] + "_input").css('visibility', 'visible').css('display', 'block').get(0).selectedIndex = bedType[grJsonData[b].RoomType][grJsonData[b].BedType];
                            $("#" + grType[b][2] + "_input").css('visibility', 'visible').css('display', 'block').get(0).selectedIndex = grJsonData[b].HasWlan == 0 ? 1 : 0;
                            $("#" + grType[b][3] + "_input").css('visibility', 'visible').css('display', 'block').val(grJsonData[b].RoomPrice);
                            $("#" + grType[b][4]).css('visibility', 'visible').css('display', 'flex').removeClass('ax_default_hidden').attr('data-value-gid', grJsonData[b].Gid).attr('data-value-roomtype', grJsonData[b].RoomType).attr('data-value-bedtype', grJsonData[b].BedType).attr('data-value-haswlan', grJsonData[b].HasWlan).attr('data-value-roomprice', grJsonData[b].RoomPrice);;                            
                        }
                    }
                }
            }); 
        }

        function grByPage(grNowPage, tag) {

            if (grNowPage == <%=grMaxPage%> && tag == 1)
                return;
            if (grNowPage == 1 && tag == -1)
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
                url: "a_GRoomMS.aspx",
                type: "post",
                data: { "grNowPage": grNowPage + tag, "postTag": "grByPage" },
                dataType: "text",
                success: function (data) {

                    if (tag == 1)
                        g_grNowPage++;
                    else
                        g_grNowPage--;

                    if (data == -1) {

                    }
                    else {
                        var grJsonData = JSON.parse(data);

                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 4; k++) {
                                $("#" + grType[m][0] + "_text").css('visibility', 'hidden').css('display', 'none');
                                $("#" + grType[m][1] + "_input").css('visibility', 'hidden').css('display', 'none');
                                $("#" + grType[m][2] + "_input").css('visibility', 'hidden').css('display', 'none');
                                $("#" + grType[m][3] + "_input").css('visibility', 'hidden').css('display', 'none');
                            }
                            $("#" + grType[m][4]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < grJsonData.length; b++) {
                            $("#" + grType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(grJsonData[b].Gid);
                            $("#" + grType[b][1] + "_input").css('visibility', 'visible').css('display', 'block').get(0).selectedIndex = bedType[grJsonData[b].RoomType][grJsonData[b].BedType];                            
                            $("#" + grType[b][2] + "_input").css('visibility', 'visible').css('display', 'block').get(0).selectedIndex = grJsonData[b].HasWlan == 0 ? 1 : 0;
                            $("#" + grType[b][3] + "_input").css('visibility', 'visible').css('display', 'block').val(grJsonData[b].RoomPrice);
                            $("#" + grType[b][4]).css('visibility', 'visible').css('display', 'flex').removeClass('ax_default_hidden').attr('data-value-gid', grJsonData[b].Gid).attr('data-value-roomtype', grJsonData[b].RoomType).attr('data-value-bedtype', grJsonData[b].BedType).attr('data-value-haswlan', grJsonData[b].HasWlan).attr('data-value-roomprice', grJsonData[b].RoomPrice);
                        }
                    }
                }
            }); 
        }

        
        function updategr(select) {

            var index = $(select).attr('data-index');
            var gid = $(select).attr('data-value-gid');
                roomtype = $(select).attr('data-value-roomtype'),
                bedtype = $(select).attr('data-value-bedtype'),
                haswlan = $(select).attr('data-value-haswlan'),
                roomprice = $("#" + grType[index][3] + "_input").val();

            if (roomprice <= 0 || isNaN(roomprice)) {
                window.pop("房价只能为大于0的纯数字哦~");
                return;
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
                url: "a_GRoomMS.aspx",
                type: "post",
                data: { "gid": gid, "roomtype": roomtype, "bedtype": bedtype, "haswlan": haswlan, "roomprice": roomprice, "postTag": "update" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        window.pop(gid + "房的信息修改成功");
                    }
                }
            });

        }

         // 其他事件

        $('#u17').addClass('cus').click(function () {
            $(window).attr('location', "a_MainPage.aspx");
        });

        $('.menu_item').addClass('cus');

        var redirectArr = new Array("Sign in.aspx", "a_GRoomMS.aspx", "a_RoomTypeMS.aspx", "a_CheckinInfo.aspx",
            "a_OrderMS.aspx", "a_ExServiceMS.aspx", "a_CleanService.aspx", "a_Caiwu.aspx", "a_RegisterMS.aspx", "a_SelfInfo.aspx", "a_Notice.aspx");

        function Redirect(select) {
            $(window).attr('location', redirectArr[$('.menu_item').index(select)]);
        }

        var indexofrbtype = new Array([0, 0], [0, 1], [1, 0], [1, 1], [2, 1], [2, 2]);

        $('.select-rbtype').change(function () {            

            rbindex = $(this).children('option:selected').val();
            var roomtype = indexofrbtype[rbindex][0],
                bedtype = indexofrbtype[rbindex][1];
           
            var select_rb_index = $(this).attr('data-index');
            $("#" + grType[select_rb_index][4]).attr('data-value-roomtype', roomtype).attr('data-value-bedtype', bedtype);

        });

        $('.select-haswlan').change(function () {

            var haswlan = $(this).children('option:selected').val();                
            var select_wlan_index = $(this).attr('data-index');
            $("#" + grType[select_wlan_index][4]).attr('data-value-haswlan', haswlan);
        });

    </script>
    </form>
</body>
</html>
