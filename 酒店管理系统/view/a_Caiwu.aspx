<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_Caiwu.aspx.cs" Inherits="iRan.view.a_Caiwu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_Caiwu</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_caiwu/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_caiwu/data.js"></script>
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
      <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- 财务报表 (动态面板) -->
      <div id="u1" class="ax_default" data-label="财务报表">
        <div id="u1_state0" class="panel_state" data-label="选择业务类型" style="">
          <div id="u1_state0_content" class="panel_state_content">

            <!-- svg2 (SVG) -->
            <div id="u2" class="ax_default image" data-label="svg2" onclick="gsIncomeInfo()">
              <img id="u2_img" class="img " src="images/a_caiwu/regen/svg2_u2.svg"/>
              <div id="u2_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- svg1 (SVG) -->
            <div id="u3" class="ax_default image" data-label="svg1" onclick="grIncomeInfo()">
              <img id="u3_img" class="img " src="images/a_caiwu/regen/svg1_u3.svg"/>
              <div id="u3_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- 选项2 (矩形) -->
            <div id="u4" class="ax_default label" data-label="选项2">
              <div id="u4_div" class=""></div>
              <div id="u4_text" class="text ">
                <p><span style="text-decoration:none;">额外服务</span></p>
              </div>
            </div>

            <!-- 选项1 (矩形) -->
            <div id="u5" class="ax_default label" data-label="选项1">
              <div id="u5_div" class=""></div>
              <div id="u5_text" class="text ">
                <p><span style="text-decoration:none;">客房</span></p>
              </div>
            </div>

            <!-- 标头 (矩形) -->
            <div id="u6" class="ax_default label" data-label="标头">
              <div id="u6_div" class=""></div>
              <div id="u6_text" class="text ">
                <p><span style="text-decoration:none;">财务报表</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u1_state1" class="panel_state" data-label="客房" style="visibility: hidden;">
          <div id="u1_state1_content" class="panel_state_content">

            <!-- 标头 (矩形) -->
            <div id="u7" class="ax_default label" data-label="标头">
              <div id="u7_div" class=""></div>
              <div id="u7_text" class="text ">
                <p><span style="text-decoration:none;">客房收入</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u8" class="ax_default button">
              <div id="u8_div" class=""></div>
              <div id="u8_text" class="text ">
                <p><span style="text-decoration:none;">返回</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u9" class="ax_default box_1">
              <div id="u9_div" class=""></div>
              <div id="u9_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- 总统套房-大圆床 (矩形) -->
            <div id="u10" class="ax_default box_1" data-label="总统套房-大圆床">
              <div id="u10_div" class=""></div>
              <div id="u10_text" class="text ">
                <p><span style="text-decoration:none;">总统套房-大圆床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u11" class="ax_default box_1">
              <div id="u11_div" class=""></div>
              <div id="u11_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u12" class="ax_default box_1">
              <div id="u12_div" class=""></div>
              <div id="u12_text" class="text ">
                <p><span style="text-decoration:none;">总统套房-软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u13" class="ax_default box_1">
              <div id="u13_div" class=""></div>
              <div id="u13_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u14" class="ax_default box_1">
              <div id="u14_div" class=""></div>
              <div id="u14_text" class="text ">
                <p><span style="text-decoration:none;">双人房-软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u15" class="ax_default box_1">
              <div id="u15_div" class=""></div>
              <div id="u15_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u16" class="ax_default box_1">
              <div id="u16_div" class=""></div>
              <div id="u16_text" class="text ">
                <p><span style="text-decoration:none;">双人房-硬板床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u17" class="ax_default box_1">
              <div id="u17_div" class=""></div>
              <div id="u17_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u18" class="ax_default box_1">
              <div id="u18_div" class=""></div>
              <div id="u18_text" class="text ">
                <p><span style="text-decoration:none;">单人房-软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u19" class="ax_default box_1">
              <div id="u19_div" class=""></div>
              <div id="u19_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u20" class="ax_default box_1">
              <div id="u20_div" class=""></div>
              <div id="u20_text" class="text ">
                <p><span style="text-decoration:none;">单人房-硬板床</span></p>
              </div>
            </div>

            <!-- 收入 (矩形) -->
            <div id="u21" class="ax_default box_1" data-label="收入">
              <div id="u21_div" class=""></div>
              <div id="u21_text" class="text ">
                <p><span style="text-decoration:none;">订单数</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u22" class="ax_default box_1">
              <div id="u22_div" class=""></div>
              <div id="u22_text" class="text ">
                <p><span style="text-decoration:none;">房型</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u23" class="ax_default box_1">
              <div id="u23_div" class=""></div>
              <div id="u23_text" class="text ">
                <p><span style="text-decoration:none;">560</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u24" class="ax_default box_1">
              <div id="u24_div" class=""></div>
              <div id="u24_text" class="text ">
                <p><span style="text-decoration:none;">560</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u25" class="ax_default box_1">
              <div id="u25_div" class=""></div>
              <div id="u25_text" class="text ">
                <p><span style="text-decoration:none;">560</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u26" class="ax_default box_1">
              <div id="u26_div" class=""></div>
              <div id="u26_text" class="text ">
                <p><span style="text-decoration:none;">560</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u27" class="ax_default box_1">
              <div id="u27_div" class=""></div>
              <div id="u27_text" class="text ">
                <p><span style="text-decoration:none;">560</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u28" class="ax_default box_1">
              <div id="u28_div" class=""></div>
              <div id="u28_text" class="text ">
                <p><span style="text-decoration:none;">560</span></p>
              </div>
            </div>

            <!-- 收入 (矩形) -->
            <div id="u29" class="ax_default box_1" data-label="收入">
              <div id="u29_div" class=""></div>
              <div id="u29_text" class="text ">
                <p><span style="text-decoration:none;">总收入</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u1_state2" class="panel_state" data-label="额外服务" style="visibility: hidden;">
          <div id="u1_state2_content" class="panel_state_content">

            <!-- 标头 (矩形) -->
            <div id="u30" class="ax_default label" data-label="标头">
              <div id="u30_div" class=""></div>
              <div id="u30_text" class="text ">
                <p><span style="text-decoration:none;">额外服务收入</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u31" class="ax_default button">
              <div id="u31_div" class=""></div>
              <div id="u31_text" class="text ">
                <p><span style="text-decoration:none;">返回</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u32" class="ax_default box_1">
              <div id="u32_div" class=""></div>
              <div id="u32_text" class="text ">
                <p><span style="text-decoration:none;">500</span></p>
              </div>
            </div>

            <!-- 总统套房-大圆床 (矩形) -->
            <div id="u33" class="ax_default box_1" data-label="总统套房-大圆床">
              <div id="u33_div" class=""></div>
              <div id="u33_text" class="text ">
                <p><span style="text-decoration:none;">草莓</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u34" class="ax_default box_1">
              <div id="u34_div" class=""></div>
              <div id="u34_text" class="text ">
                <p><span style="text-decoration:none;">500</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u35" class="ax_default box_1">
              <div id="u35_div" class=""></div>
              <div id="u35_text" class="text ">
                <p><span style="text-decoration:none;">草莓</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u36" class="ax_default box_1">
              <div id="u36_div" class=""></div>
              <div id="u36_text" class="text ">
                <p><span style="text-decoration:none;">500</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u37" class="ax_default box_1">
              <div id="u37_div" class=""></div>
              <div id="u37_text" class="text ">
                <p><span style="text-decoration:none;">草莓</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u38" class="ax_default box_1">
              <div id="u38_div" class=""></div>
              <div id="u38_text" class="text ">
                <p><span style="text-decoration:none;">500</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u39" class="ax_default box_1">
              <div id="u39_div" class=""></div>
              <div id="u39_text" class="text ">
                <p><span style="text-decoration:none;">草莓</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u40" class="ax_default box_1">
              <div id="u40_div" class=""></div>
              <div id="u40_text" class="text ">
                <p><span style="text-decoration:none;">500</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u41" class="ax_default box_1">
              <div id="u41_div" class=""></div>
              <div id="u41_text" class="text ">
                <p><span style="text-decoration:none;">草莓</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u42" class="ax_default box_1">
              <div id="u42_div" class=""></div>
              <div id="u42_text" class="text ">
                <p><span style="text-decoration:none;">500</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u43" class="ax_default box_1">
              <div id="u43_div" class=""></div>
              <div id="u43_text" class="text ">
                <p><span style="text-decoration:none;">草莓</span></p>
              </div>
            </div>

            <!-- 收入 (矩形) -->
            <div id="u44" class="ax_default box_1" data-label="收入">
              <div id="u44_div" class=""></div>
              <div id="u44_text" class="text ">
                <p><span style="text-decoration:none;">总收入</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u45" class="ax_default box_1">
              <div id="u45_div" class=""></div>
              <div id="u45_text" class="text ">
                <p><span style="text-decoration:none;">业务名称</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u46" class="ax_default box_1">
              <div id="u46_div" class=""></div>
              <div id="u46_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u47" class="ax_default box_1">
              <div id="u47_div" class=""></div>
              <div id="u47_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u48" class="ax_default box_1">
              <div id="u48_div" class=""></div>
              <div id="u48_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u49" class="ax_default box_1">
              <div id="u49_div" class=""></div>
              <div id="u49_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u50" class="ax_default box_1">
              <div id="u50_div" class=""></div>
              <div id="u50_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u51" class="ax_default box_1">
              <div id="u51_div" class=""></div>
              <div id="u51_text" class="text ">
                <p><span style="text-decoration:none;">2</span></p>
              </div>
            </div>

            <!-- 收入 (矩形) -->
            <div id="u52" class="ax_default box_1" data-label="收入">
              <div id="u52_div" class=""></div>
              <div id="u52_text" class="text ">
                <p><span style="text-decoration:none;">订单数</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u54" class="ax_default">
        <img id="u54_menu" class="img " src="images/a_caiwu/regen/u54_menu.png" alt="u54_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u55" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u56" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u56_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u56_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u57" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u57_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u57_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u58" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u58_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u58_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u59" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u59_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u59_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u60" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u60_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u60_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u61" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u61_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u61_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u62" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u62_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u62_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u63" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u63_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u63_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u64" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u64_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u64_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u65" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u65_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u65_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u66" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u66_img" class="img " src="images/a_caiwu/regen/u56.png"/>
            <div id="u66_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u67" class="ax_default menu_item">
            <img id="u67_img" class="img " src="images/a_caiwu/regen/u67.png"/>
            <div id="u67_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u68" class="ax_default box_1">
        <img id="u68_img" class="img " src="images/a_caiwu/regen/u68.svg"/>
        <div id="u68_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u69" class="ax_default label">
        <div id="u69_div" class=""></div>
        <div id="u69_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u53" style="display:none; visibility:hidden;"></div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>


    <script>

        var grType = new Array(["#u19", "#u28"],
                                ["#u17", "#u27"],
                                ["#u15", "#u26"],
                                ["#u13", "#u25"],
                                ["#u11", "#u24"],
                                ["#u9", "#u23"]);

        var gsType = new Array(["#u43", "#u51", "#u42"],
                                ["#u41", "#u50", "#u40"],
                                ["#u39", "#u49", "#u38"],
                                ["#u37", "#u48", "#u36"],
                                ["#u35", "#u47", "#u34"],
                                ["#u33", "#u46", "#u32"]);

        var rbTypeIndex = new Array([0, 1], [2, 3], [-1, 4, 5]);

        function grIncomeInfo() {

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
                url: "a_Caiwu.aspx",
                type: "post",
                data: { "postTag": "grincome" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var grJsonData = JSON.parse(data);
                        //console.log(ckInfoJsonData.length);

                        // 先清除数据
                        for (var m = 0; m < 6; m++) {
                            for (var k = 0; k < 2; k++) {
                                $(grType[m][k] + "_text").find('span').html(0);                                
                            }                           
                        }

                        // 再更新数据
                        for (var b = 0; b < grJsonData.length; b++) {
                            $(grType[rbTypeIndex[grJsonData[b].RoomType][grJsonData[b].BedType]][0] + "_text").find('span').html(grJsonData[b].ckorderCount);
                            $(grType[rbTypeIndex[grJsonData[b].RoomType][grJsonData[b].BedType]][1] + "_text").find('span').html(grJsonData[b].Total_gr_Income); 
                        }
                    }
                }
            });
        }


        function gsIncomeInfo() {

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
                url: "a_Caiwu.aspx",
                type: "post",
                data: { "postTag": "gsincome" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var gsJsonData = JSON.parse(data);
                        //console.log(ckInfoJsonData.length);

                        // 先清除数据
                        for (var m = 0; m < 6; m++) {
                            for (var k = 0; k < 3; k++) {
                                $(gsType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');                                
                            }                            
                        }

                        // 再更新数据
                        for (var b = 0; b < gsJsonData.length; b++) {
                            $(gsType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].goodsname);
                            $(gsType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].count);
                            $(gsType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(gsJsonData[b].TotalPrice);
                        }
                    }
                }
            });
        }



        // 其他事件

        $('#u69').addClass('cus').click(function () {
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
