<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_CheckinInfo.aspx.cs" EnableSessionState="False" Inherits="iRan.view.a_CheckinInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_CheckinInfo</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_checkininfo/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_checkininfo/data.js"></script>
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
      <div id="u170" class="ax_default box_2">
        <div id="u170_div" class=""></div>
        <div id="u170_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- 标头 (矩形) -->
      <div id="u171" class="ax_default label" data-label="标头">
        <div id="u171_div" class=""></div>
        <div id="u171_text" class="text ">
          <p><span style="text-decoration:none;">入住信息查询</span></p>
        </div>
      </div>

      <!-- CheckinPanel (动态面板) -->
      <div id="u172" class="ax_default" data-label="CheckinPanel">
        <div id="u172_state0" class="panel_state" data-label="用户信息查询" style="">
          <div id="u172_state0_content" class="panel_state_content">

            <!-- Unnamed (表格) -->
            <div id="u173" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u174" class="ax_default table_cell">
                <img id="u174_img" class="img " src="images/a_checkininfo/u174.png"/>
                <div id="u174_text" class="text ">
                  <p><span style="text-decoration:none;">订单号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u175" class="ax_default table_cell">
                <img id="u175_img" class="img " src="images/a_checkininfo/u175.png"/>
                <div id="u175_text" class="text ">
                  <p><span style="text-decoration:none;">姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u176" class="ax_default table_cell">
                <img id="u176_img" class="img " src="images/a_checkininfo/u176.png"/>
                <div id="u176_text" class="text ">
                  <p><span style="text-decoration:none;">客房号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u177" class="ax_default table_cell">
                <img id="u177_img" class="img " src="images/a_checkininfo/u177.png"/>
                <div id="u177_text" class="text ">
                  <p><span style="text-decoration:none;">入住时间</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u178" class="ax_default table_cell">
                <img id="u178_img" class="img " src="images/a_checkininfo/u178.png"/>
                <div id="u178_text" class="text ">
                  <p><span style="text-decoration:none;">操作</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u179" class="ax_default table_cell">
                <img id="u179_img" class="img " src="images/a_checkininfo/u179.png"/>
                <div id="u179_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u180" class="ax_default table_cell">
                <img id="u180_img" class="img " src="images/a_checkininfo/u180.png"/>
                <div id="u180_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u181" class="ax_default table_cell">
                <img id="u181_img" class="img " src="images/a_checkininfo/u181.png"/>
                <div id="u181_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u182" class="ax_default table_cell">
                <img id="u182_img" class="img " src="images/a_checkininfo/u182.png"/>
                <div id="u182_text" class="text ">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u183" class="ax_default table_cell">
                <img id="u183_img" class="img " src="images/a_checkininfo/u183.png"/>
                <div id="u183_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u184" class="ax_default table_cell">
                <img id="u184_img" class="img " src="images/a_checkininfo/u179.png"/>
                <div id="u184_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u185" class="ax_default table_cell">
                <img id="u185_img" class="img " src="images/a_checkininfo/u180.png"/>
                <div id="u185_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u186" class="ax_default table_cell">
                <img id="u186_img" class="img " src="images/a_checkininfo/u181.png"/>
                <div id="u186_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u187" class="ax_default table_cell">
                <img id="u187_img" class="img " src="images/a_checkininfo/u182.png"/>
                <div id="u187_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u188" class="ax_default table_cell">
                <img id="u188_img" class="img " src="images/a_checkininfo/u183.png"/>
                <div id="u188_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u189" class="ax_default table_cell">
                <img id="u189_img" class="img " src="images/a_checkininfo/u179.png"/>
                <div id="u189_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u190" class="ax_default table_cell">
                <img id="u190_img" class="img " src="images/a_checkininfo/u180.png"/>
                <div id="u190_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u191" class="ax_default table_cell">
                <img id="u191_img" class="img " src="images/a_checkininfo/u181.png"/>
                <div id="u191_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u192" class="ax_default table_cell">
                <img id="u192_img" class="img " src="images/a_checkininfo/u182.png"/>
                <div id="u192_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u193" class="ax_default table_cell">
                <img id="u193_img" class="img " src="images/a_checkininfo/u183.png"/>
                <div id="u193_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u194" class="ax_default table_cell">
                <img id="u194_img" class="img " src="images/a_checkininfo/u194.png"/>
                <div id="u194_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u195" class="ax_default table_cell">
                <img id="u195_img" class="img " src="images/a_checkininfo/u195.png"/>
                <div id="u195_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u196" class="ax_default table_cell">
                <img id="u196_img" class="img " src="images/a_checkininfo/u196.png"/>
                <div id="u196_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u197" class="ax_default table_cell">
                <img id="u197_img" class="img " src="images/a_checkininfo/u197.png"/>
                <div id="u197_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u198" class="ax_default table_cell">
                <img id="u198_img" class="img " src="images/a_checkininfo/u198.png"/>
                <div id="u198_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u199" class="ax_default table_cell">
                <img id="u199_img" class="img " src="images/a_checkininfo/u199.png"/>
                <div id="u199_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u200" class="ax_default table_cell">
                <img id="u200_img" class="img " src="images/a_checkininfo/u200.png"/>
                <div id="u200_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u201" class="ax_default table_cell">
                <img id="u201_img" class="img " src="images/a_checkininfo/u201.png"/>
                <div id="u201_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u202" class="ax_default table_cell">
                <img id="u202_img" class="img " src="images/a_checkininfo/u202.png"/>
                <div id="u202_text" class="text " style="display:none; visibility: hidden">
                  <p><span style="text-decoration:none;"></span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u203" class="ax_default table_cell">
                <img id="u203_img" class="img " src="images/a_checkininfo/u203.png"/>
                <div id="u203_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>
            </div>

            <!-- 查看1 (矩形) -->
            <div id="u204" class="ax_default button ax_default_hidden" data-label="查看1" onclick="PersonalInfo(this, 0)">
              <div id="u204_div" class=""></div>
              <div id="u204_text" class="text " data-value-uid="" data-value-cid="">
                <p><span style="text-decoration:none;">查看</span></p>
              </div>
            </div>

            <!-- 查看2 (矩形) -->
            <div id="u205" class="ax_default button ax_default_hidden" data-label="查看2" onclick="PersonalInfo(this, 1)">
              <div id="u205_div" class=""></div>
              <div id="u205_text" class="text " data-value-uid="" data-value-cid="">
                <p><span style="text-decoration:none;">查看</span></p>
              </div>
            </div>

            <!-- 查看3 (矩形) -->
            <div id="u206" class="ax_default button ax_default_hidden" data-label="查看3" onclick="PersonalInfo(this, 2)">
              <div id="u206_div" class=""></div>
              <div id="u206_text" class="text " data-value-uid="" data-value-cid="">
                <p><span style="text-decoration:none;">查看</span></p>
              </div>
            </div>

            <!-- 查看4 (矩形) -->
            <div id="u207" class="ax_default button ax_default_hidden" data-label="查看4" onclick="PersonalInfo(this, 3)">
              <div id="u207_div" class=""></div>
              <div id="u207_text" class="text " data-value-uid="" data-value-cid="">
                <p><span style="text-decoration:none;">查看</span></p>
              </div>
            </div>

            <!-- 查看5 (矩形) -->
            <div id="u208" class="ax_default button ax_default_hidden" data-label="查看5" onclick="PersonalInfo(this, 4)">
              <div id="u208_div" class=""></div>
              <div id="u208_text" class="text " data-value-uid="" data-value-cid="">
                <p><span style="text-decoration:none;">查看</span></p>
              </div>
            </div>

            <!-- 上一页 (矩形) -->
            <div id="u209" class="ax_default button cus" data-label="上一页" onclick="ckInfoByPage(g_ckInfoNowPage, -1)">
              <div id="u209_div" class=""></div>
              <div id="u209_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>

            <!-- 下一页 (矩形) -->
            <div id="u210" class="ax_default button cus" data-label="下一页" onclick="ckInfoByPage(g_ckInfoNowPage, 1)">
              <div id="u210_div" class=""></div>
              <div id="u210_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u172_state1" class="panel_state" data-label="用户入住信息" style="visibility: hidden;">
          <div id="u172_state1_content" class="panel_state_content">

            <!-- 返回 (矩形) -->
            <div id="u211" class="ax_default button" data-label="返回">
              <div id="u211_div" class=""></div>
              <div id="u211_text" class="text ">
                <p><span style="text-decoration:none;">返回</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u212" class="ax_default box_1">
              <img id="u212_img" class="img " src="images/a_checkininfo/u212.svg"/>
              <div id="u212_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- u_name (矩形) -->
            <div id="u213" class="ax_default label" data-label="u_name">
              <div id="u213_div" class=""></div>
              <div id="u213_text" class="text ">
                <p><span style="text-decoration:none;">曾子墨</span></p>
              </div>
            </div>

              <div id="ckstatus" class="ax_default label" data-label="u_name">
              <div id="ckstatus_div" class=""></div>
              <div id="ckstatus_text" class="text ">
                <p><span style="text-decoration:none;">定点杆状态</span></p>
              </div>
            </div>

            <!-- u_order3 (矩形) -->
            <div id="u214" class="ax_default label" data-label="u_order3">
              <div id="u214_div" class=""></div>
              <div id="u214_text" class="text ">
                <p><span style="text-decoration:none;">2020年4月3日入住单人房-硬板床-3145</span></p>
              </div>
            </div>

            <!-- u_order4 (矩形) -->
            <div id="u215" class="ax_default label" data-label="u_order4">
              <div id="u215_div" class=""></div>
              <div id="u215_text" class="text ">
                <p><span style="text-decoration:none;">没有额外服务</span></p><p><span style="text-decoration:none;font-size:24px">消费总额：￥365.0</span></p>
              </div>
            </div>

            <!-- u_order1 (矩形) -->
            <div id="u216" class="ax_default label" data-label="u_order1">
              <div id="u216_div" class=""></div>
              <div id="u216_text" class="text ">
                <p><span style="text-decoration:none;">手机号码：18827546685</span></p>
              </div>
            </div>

            <!-- u_order2 (矩形) -->
            <div id="u217" class="ax_default label" data-label="u_order2">
              <div id="u217_div" class=""></div>
              <div id="u217_text" class="text ">
                <p><span style="text-decoration:none;">身份证号：420684199903250035</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u219" class="ax_default">
        <img id="u219_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u219_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u220" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u221" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u221_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u221_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u222" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u222_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u222_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u223" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u223_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u223_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u224" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u224_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u224_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u225" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u225_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u225_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u226" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u226_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u226_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u227" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u227_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u227_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u228" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u228_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u228_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u229" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u229_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u229_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u230" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u230_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u230_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u231" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u231_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u231_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u232" class="ax_default menu_item">
            <img id="u232_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u232_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u233" class="ax_default box_1">
        <img id="u233_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u233_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u234" class="ax_default label">
        <div id="u234_div" class=""></div>
        <div id="u234_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u218" style="display:none; visibility:hidden;"></div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>
    <script>

        var ckInfoType = new Array(
            ["u179", "u180", "u181", "u182", "u204"],
            ["u184", "u185", "u186", "u187", "u205"],
            ["u189", "u190", "u191", "u192", "u206"],
            ["u194", "u195", "u196", "u197", "u207"],
            ["u199", "u200", "u201", "u202", "u208"]);
        var ckGidType = new Array(["单人房-硬板床", "单人房-软榻床"],
                                ["双人房-硬板床", "双人房-软榻床"],
                                ["", "总统套房-软榻床", "总统套房-大圆床"]);

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
                url: "a_CheckinInfo.aspx",
                type: "post",
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var ckInfoJsonData = JSON.parse(data);
                        //console.log(ckInfoJsonData.length);
                        
                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 4; k++)
                                $("#" + ckInfoType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                            $("#" + ckInfoType[m][4]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                        }

                        // 再更新数据
                        for (var b = 0; b < ckInfoJsonData.length; b++) {
                            $("#" + ckInfoType[b][0] + "_text").css('visibility','visible').css('display','block').find('span').html(ckInfoJsonData[b].Oid);       
                            $("#" + ckInfoType[b][1] + "_text").css('visibility', 'visible').css('display','block').find('span').html(ckInfoJsonData[b].Fname);
                            $("#" + ckInfoType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(ckInfoJsonData[b].Gid);
                            var ckTime = new Date(ckInfoJsonData[b].CheckinTime),
                                ckYear = ckTime.getFullYear(),
                                ckMonth = ckTime.getMonth() + 1,
                                ckDay = ckTime.getDate();                                
                            if (ckMonth < 10)
                                ckMonth = '0' + ckMonth;
                            if (ckDay < 10)
                                ckDay = '0' + ckDay;
                            var ckDate = ckYear + "/" + ckMonth + "/" + ckDay;
                            $("#" + ckInfoType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(ckDate);
                            $("#" + ckInfoType[b][4]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-uid', ckInfoJsonData[b].Uid).attr('data-value-cid', ckInfoJsonData[b].Cid);                            
                        }                                                
                    }
                }
            });       
        };

        // 定义全局变量
        var g_ckInfoNowPage = <%=ckInfoNowPage%>;
        
        // 入住信息Ajax异步获取
        function ckInfoByPage(ckInfoNowPage, tag) {
            
            if (ckInfoNowPage == <%=ckInfoMaxPage%> && tag == 1)
                return;
            if (ckInfoNowPage == 1 && tag == -1)
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
                url: "a_CheckinInfo.aspx",
                type: "post",
                async: true,
                data: { "ckInfoNowPage": (ckInfoNowPage + tag), "postTag": "ckInfoByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_ckInfoNowPage++;
                    else
                        g_ckInfoNowPage--;

                    var ckInfoByPageData = JSON.parse(data);
                    // 先清除数据
                    for (var m = 0; m < 5; m++) {
                        for (var k = 0; k < 4; k++)
                            $("#" + ckInfoType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                        $("#" + ckInfoType[m][4]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                    }

                    // 再更新数据
                    for (var b = 0; b < ckInfoByPageData.length; b++) {
                        $("#" + ckInfoType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(ckInfoByPageData[b].Oid);
                        $("#" + ckInfoType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(ckInfoByPageData[b].Fname);
                        $("#" + ckInfoType[b][2] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(ckInfoByPageData[b].Gid);
                        var ckTime = new Date(ckInfoByPageData[b].CheckinTime),
                            ckYear = ckTime.getFullYear(),
                            ckMonth = ckTime.getMonth() + 1,
                            ckDay = ckTime.getDate();
                        if (ckMonth < 10)
                            ckMonth = '0' + ckMonth;
                        if (ckDay < 10)
                            ckDay = '0' + ckDay;
                        var ckDate = ckYear + "/" + ckMonth + "/" + ckDay;
                        $("#" + ckInfoType[b][3] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(ckDate);
                        $("#" + ckInfoType[b][4]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-uid', ckInfoByPageData[b].Uid).attr('data-value-cid', ckInfoByPageData[b].Cid);
                    }     
                               
                }
            });

        }

        var ckStatus = new Array("订单待处理", "订单已通过", "入住中", "订单已完成");

        function PersonalInfo(select, typeIndex) {

            var uid = $(select).attr('data-value-uid'),
                cid = $(select).attr('data-value-cid'),
                oid = $("#" + ckInfoType[typeIndex][0]).find('span').html();
            //console.log('oid=' + oid + ', uid=' + uid + ', cid=' + cid);
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
                url: "a_CheckinInfo.aspx",
                type: "post",
                async: true,
                data: { "oid": oid, "uid": uid, "cid": cid, "postTag": "personalCkInfo" },
                dataType: "text",
                success: function (data) {
                    
                    var personalCkInfoData = JSON.parse(data);
                    $('#u213_text').find('span').html(personalCkInfoData[0].Fname);
                    $('#ckstatus_text').find('span').html(ckStatus[personalCkInfoData[0].CheckinStatus]);
                    $('#u216_text').find('span').html("手机号码：" + personalCkInfoData[0].TelNumber);
                    $('#u217_text').find('span').html("身份证号：" + personalCkInfoData[0].Idcard);
                    var ckTime = new Date(personalCkInfoData[0].CheckinTime),
                        ckYear = ckTime.getFullYear(),
                        ckMonth = ckTime.getMonth() + 1,
                        ckDay = ckTime.getDate(),
                        ckRoomType = personalCkInfoData[0].RoomType,
                        ckBedType = personalCkInfoData[0].BedType,
                        ckGid = personalCkInfoData[0].Gid;
                    if (ckMonth < 10)
                        ckMonth = '0' + ckMonth;
                    if (ckDay < 10)
                        ckDay = '0' + ckDay;
                    var ckInfo = ckYear + "年" + ckMonth + "月" + ckDay + "日入住" + ckGidType[ckRoomType][ckBedType] + "-" + ckGid;                    
                    $('#u214_text').find('span').html(ckInfo);    

                    if (personalCkInfoData[0].esOrderContent == "") {
                        $('#u215_text').find('span').eq(0).html("没有额外服务");
                        $('#u215_text').find('span').eq(1).html("消费总额：¥" + personalCkInfoData[0].cTotalPrice);
                    }

                    else {
                        $('#u215_text').find('span').html(personalCkInfoData[0].esOrderContent);
                        $('#u215_text').find('span').eq(1).html("消费总额：¥" + personalCkInfoData[0].cTotalPrice);
                    }
                }
            });

        }

        // 其他事件
        $('#u234').addClass('cus').click(function () {
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
