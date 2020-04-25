<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_RegisterMS.aspx.cs" Inherits="iRan.view.a_RegisterMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_RegisterMs</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_registerms/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_registerms/data.js"></script>
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
            top:67.1%;
            left:44.2%;
            width:220px;
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
        <img id="u2_menu" class="img " src="images/a_registerms/regen/u2_menu.png" alt="u2_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u3" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u4" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u4_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u4_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u5" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u5_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u5_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u6" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u6_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u6_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u7" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u7_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u7_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u8" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u8_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u8_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u9" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u9_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u9_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u10" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u10_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u10_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u11" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u11_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u11_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u12" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u12_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u12_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u13" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u13_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u13_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u14" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u14_img" class="img " src="images/a_registerms/regen/u4.png"/>
            <div id="u14_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u15" class="ax_default menu_item">
            <img id="u15_img" class="img " src="images/a_registerms/regen/u15.png"/>
            <div id="u15_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u16" class="ax_default box_1">
        <img id="u16_img" class="img " src="images/a_registerms/regen/u16.svg"/>
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
          <p><span style="text-decoration:none;">注册用户管理</span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u19" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u20" class="ax_default table_cell">
          <img id="u20_img" class="img " src="images/a_registerms/regen/u20.png"/>
          <div id="u20_text" class="text ">
            <p><span style="text-decoration:none;">用户ID</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u21" class="ax_default table_cell">
          <img id="u21_img" class="img " src="images/a_registerms/regen/u21.png"/>
          <div id="u21_text" class="text ">
            <p><span style="text-decoration:none;">手机号码</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u22" class="ax_default table_cell">
          <img id="u22_img" class="img " src="images/a_registerms/regen/u22.png"/>
          <div id="u22_text" class="text ">
            <p><span style="text-decoration:none;">姓名</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u23" class="ax_default table_cell">
          <img id="u23_img" class="img " src="images/a_registerms/regen/u23.png"/>
          <div id="u23_text" class="text ">
            <p><span style="text-decoration:none;">身份证号</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u24" class="ax_default table_cell">
          <img id="u24_img" class="img " src="images/a_registerms/regen/u24.png"/>
          <div id="u24_text" class="text ">
            <p><span style="text-decoration:none;">入住次数</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u25" class="ax_default table_cell">
          <img id="u25_img" class="img " src="images/a_registerms/regen/u25.png"/>
          <div id="u25_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u26" class="ax_default table_cell">
          <img id="u26_img" class="img " src="images/a_registerms/regen/u26.png"/>
          <div id="u26_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u27" class="ax_default table_cell">
          <img id="u27_img" class="img " src="images/a_registerms/regen/u27.png"/>
          <div id="u27_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u28" class="ax_default table_cell">
          <img id="u28_img" class="img " src="images/a_registerms/regen/u28.png"/>
          <div id="u28_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u29" class="ax_default table_cell">
          <img id="u29_img" class="img " src="images/a_registerms/regen/u29.png"/>
          <div id="u29_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u30" class="ax_default table_cell">
          <img id="u30_img" class="img " src="images/a_registerms/regen/u30.png"/>
          <div id="u30_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u31" class="ax_default table_cell">
          <img id="u31_img" class="img " src="images/a_registerms/regen/u31.png"/>
          <div id="u31_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u32" class="ax_default table_cell">
          <img id="u32_img" class="img " src="images/a_registerms/regen/u26.png"/>
          <div id="u32_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u33" class="ax_default table_cell">
          <img id="u33_img" class="img " src="images/a_registerms/regen/u27.png"/>
          <div id="u33_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u34" class="ax_default table_cell">
          <img id="u34_img" class="img " src="images/a_registerms/regen/u28.png"/>
          <div id="u34_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u35" class="ax_default table_cell">
          <img id="u35_img" class="img " src="images/a_registerms/regen/u29.png"/>
          <div id="u35_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u36" class="ax_default table_cell">
          <img id="u36_img" class="img " src="images/a_registerms/regen/u30.png"/>
          <div id="u36_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u37" class="ax_default table_cell">
          <img id="u37_img" class="img " src="images/a_registerms/regen/u31.png"/>
          <div id="u37_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u38" class="ax_default table_cell">
          <img id="u38_img" class="img " src="images/a_registerms/regen/u26.png"/>
          <div id="u38_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u39" class="ax_default table_cell">
          <img id="u39_img" class="img " src="images/a_registerms/regen/u27.png"/>
          <div id="u39_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u40" class="ax_default table_cell">
          <img id="u40_img" class="img " src="images/a_registerms/regen/u28.png"/>
          <div id="u40_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u41" class="ax_default table_cell">
          <img id="u41_img" class="img " src="images/a_registerms/regen/u29.png"/>
          <div id="u41_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u42" class="ax_default table_cell">
          <img id="u42_img" class="img " src="images/a_registerms/regen/u30.png"/>
          <div id="u42_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u43" class="ax_default table_cell">
          <img id="u43_img" class="img " src="images/a_registerms/regen/u31.png"/>
          <div id="u43_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u44" class="ax_default table_cell">
          <img id="u44_img" class="img " src="images/a_registerms/regen/u44.png"/>
          <div id="u44_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u45" class="ax_default table_cell">
          <img id="u45_img" class="img " src="images/a_registerms/regen/u45.png"/>
          <div id="u45_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u46" class="ax_default table_cell">
          <img id="u46_img" class="img " src="images/a_registerms/regen/u46.png"/>
          <div id="u46_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u47" class="ax_default table_cell">
          <img id="u47_img" class="img " src="images/a_registerms/regen/u47.png"/>
          <div id="u47_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u48" class="ax_default table_cell">
          <img id="u48_img" class="img " src="images/a_registerms/regen/u48.png"/>
          <div id="u48_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u49" class="ax_default table_cell">
          <img id="u49_img" class="img " src="images/a_registerms/regen/u49.png"/>
          <div id="u49_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u50" class="ax_default table_cell">
          <img id="u50_img" class="img " src="images/a_registerms/regen/u50.png"/>
          <div id="u50_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u51" class="ax_default table_cell">
          <img id="u51_img" class="img " src="images/a_registerms/regen/u51.png"/>
          <div id="u51_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u52" class="ax_default table_cell">
          <img id="u52_img" class="img " src="images/a_registerms/regen/u52.png"/>
          <div id="u52_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u53" class="ax_default table_cell">
          <img id="u53_img" class="img " src="images/a_registerms/regen/u53.png"/>
          <div id="u53_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u54" class="ax_default table_cell">
          <img id="u54_img" class="img " src="images/a_registerms/regen/u54.png"/>
          <div id="u54_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u55" class="ax_default table_cell">
          <img id="u55_img" class="img " src="images/a_registerms/regen/u55.png"/>
          <div id="u55_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>
      </div>

      <!-- 重置1 (矩形) -->
      <div id="u56" class="ax_default button cus" data-label="重置1" onclick="Reset(this)" data-index="0" style="visibility:hidden">
        <div id="u56_div" class=""></div>
        <div id="u56_text" class="text ">
          <p><span style="text-decoration:none;">重置</span></p>
        </div>
      </div>

      <!-- 重置2 (矩形) -->
      <div id="u57" class="ax_default button cus" data-label="重置2" onclick="Reset(this)" data-index="1" style="visibility:hidden">
        <div id="u57_div" class=""></div>
        <div id="u57_text" class="text ">
          <p><span style="text-decoration:none;">重置</span></p>
        </div>
      </div>

      <!-- 重置3 (矩形) -->
      <div id="u58" class="ax_default button cus" data-label="重置3" onclick="Reset(this)" data-index="2" style="visibility:hidden">
        <div id="u58_div" class=""></div>
        <div id="u58_text" class="text ">
          <p><span style="text-decoration:none;">重置</span></p>
        </div>
      </div>

      <!-- 重置4 (矩形) -->
      <div id="u59" class="ax_default button cus" data-label="重置4" onclick="Reset(this)" data-index="3" style="visibility:hidden">
        <div id="u59_div" class=""></div>
        <div id="u59_text" class="text ">
          <p><span style="text-decoration:none;">重置</span></p>
        </div>
      </div>

      <!-- 重置5 (矩形) -->
      <div id="u60" class="ax_default button cus" data-label="重置5" onclick="Reset(this)" data-index="4" style="visibility:hidden">
        <div id="u60_div" class=""></div>
        <div id="u60_text" class="text ">
          <p><span style="text-decoration:none;">重置</span></p>
        </div>
      </div>

      <!-- 上一页 (矩形) -->
      <div id="u61" class="ax_default button cus" data-label="上一页" onclick="rgByPage(g_rgNowPage, -1)">
        <div id="u61_div" class=""></div>
        <div id="u61_text" class="text ">
          <p><span style="text-decoration:none;">上一页</span></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u62" class="ax_default button cus" data-label="下一页" onclick="rgByPage(g_rgNowPage, 1)">
        <div id="u62_div" class=""></div>
        <div id="u62_text" class="text ">
          <p><span style="text-decoration:none;">下一页</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>


         
    <script>

        var rgType = new Array(["#u26", "#u27", "#u28", "#u29", "#u30", "#u56"],
                                ["#u32", "#u33", "#u34", "#u35", "#u36", "#u57"],
                                ["#u38", "#u39", "#u40", "#u41", "#u42", "#u58"],
                                ["#u44", "#u45", "#u46", "#u47", "#u48", "#u59"],
                                ["#u50", "#u51", "#u52", "#u53", "#u54", "#u60"]);

        var g_rgNowPage = <%=rgNowPage%>;

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
                url: "a_RegisterMS.aspx",
                type: "post",
                async: true,
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {

                    var rgJsonData = JSON.parse(data);
                    // 先清除数据
                    for (var m = 0; m < 5; m++) {
                        for (var k = 0; k < 5; k++)
                            $(rgType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                        $(rgType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                    }
                    // 再更新数据
                    for (var b = 0; b < rgJsonData.length; b++) {

                        $(rgType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].Uid);
                        $(rgType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].TelNumber);
                        $(rgType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].Fname);
                        $(rgType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].IdCard);
                        $(rgType[b][4] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].CheckinCount);
                        $(rgType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-uid', rgJsonData[b].Uid);
                    }
                }
            });
        }

        function rgByPage(rgNowPage, tag) {

            if (rgNowPage == <%=rgMaxPage%> && tag == 1)
                return;
            if (rgNowPage == 1 && tag == -1)
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
                url: "a_RegisterMS.aspx",
                type: "post",
                async: true,
                data: { "rgNowPage": rgNowPage + tag, "postTag": "rgByPage" },
                dataType: "text",
                success: function (data) {

                    if (tag == 1)
                        g_rgNowPage++;
                    else
                        g_rgNowPage--;

                    var rgJsonData = JSON.parse(data);
                    // 先清除数据
                    for (var m = 0; m < 5; m++) {
                        for (var k = 0; k < 5; k++)
                            $(rgType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                        $(rgType[m][5]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                    }
                    // 再更新数据
                    for (var b = 0; b < rgJsonData.length; b++) {

                        $(rgType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].Uid);
                        $(rgType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].TelNumber);
                        $(rgType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].Fname);
                        $(rgType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].IdCard);
                        $(rgType[b][4] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rgJsonData[b].CheckinCount);
                        $(rgType[b][5]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-uid', rgJsonData[b].Uid);
                    }
                }
            });
        }

        function Reset(select) {

            var uid = $(select).attr('data-value-uid');

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
                url: "a_RegisterMS.aspx",
                type: "post",
                async: true,
                data: { "uid": uid, "postTag": "update" },
                dataType: "text",
                success: function (data) {

                    if (data != -1) {
                        window.pop('密码重置为身份证后6位~');
                    }
                    else {

                    }
                }
            });

        }

        // 其他事件

        $('#u507').addClass('cus').click(function () {
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
