<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_SelfInfo.aspx.cs" EnableSessionState="ReadOnly" Inherits="iRan.view.a_SelfInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_SelfInfo</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_selfinfo/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_selfinfo/data.js"></script>

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
            left:42.6%;
            width:275px;
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
      <div id="u553" class="ax_default box_2">
        <div id="u553_div" class=""></div>
        <div id="u553_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u555" class="ax_default">
        <img id="u555_menu" class="img " src="images/a_mainpage/u27_menu.png" alt="u555_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u556" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u557" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u557_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u557_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u558" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u558_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u558_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u559" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u559_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u559_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u560" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u560_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u560_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u561" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u561_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u561_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u562" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u562_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u562_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u563" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u563_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u563_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u564" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u564_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u564_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u565" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u565_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u565_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u566" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u566_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u566_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u567" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u567_img" class="img " src="images/a_mainpage/u29.png"/>
            <div id="u567_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u568" class="ax_default menu_item">
            <img id="u568_img" class="img " src="images/a_mainpage/u40.png"/>
            <div id="u568_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u569" class="ax_default box_1">
        <img id="u569_img" class="img " src="images/a_mainpage/u41.svg"/>
        <div id="u569_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u570" class="ax_default label">
        <div id="u570_div" class=""></div>
        <div id="u570_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>
      <div id="u554" style="display:none; visibility:hidden;"></div>

      <!-- 下一页 (矩形) -->
      <div id="u571" class="ax_default button cus" data-label="下一页" onclick="ChangeSelfPWD()">
        <div id="u571_div" class=""></div>
        <div id="u571_text" class="text ">
          <p><span style="text-decoration:none;">修改密码</span></p>
        </div>
      </div>

      <!-- 标头 (矩形) -->
      <div id="u572" class="ax_default label" data-label="标头">
        <div id="u572_div" class=""></div>
        <div id="u572_text" class="text ">
          <p><span style="text-decoration:none;">个人信息修改</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u573" class="ax_default text_field">
        <div id="u573_div" class=""></div>
        <input id="u573_input" type="password" value="" class="u573_input"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u574" class="ax_default label">
        <div id="u574_div" class=""></div>
        <div id="u574_text" class="text ">
          <p><span style="text-decoration:none;">原密码：</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u575" class="ax_default text_field">
        <div id="u575_div" class=""></div>
        <input id="u575_input" type="password" value="" class="u575_input"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u576" class="ax_default label">
        <div id="u576_div" class=""></div>
        <div id="u576_text" class="text ">
          <p><span style="text-decoration:none;">新密码：</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u577" class="ax_default text_field">
        <div id="u577_div" class=""></div>
        <input id="u577_input" type="password" value="" class="u577_input"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u578" class="ax_default label">
        <div id="u578_div" class=""></div>
        <div id="u578_text" class="text ">
          <p><span style="text-decoration:none;">确认密码：</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    
    <script>

        var parms = window.location.search;

        $('#u821').click(function () {
            $(window).attr('location', 'u_MainPage.aspx' + parms);
        });

        function ChangeSelfPWD() {
                
            var oldpwd = $('#u573_input').val(),
                newpwd = $('#u575_input').val(),
                confirmpwd = $('#u577_input').val();
            //console.log(oldpwd + " " + newpwd + " " + confirmpwd);
            if (oldpwd == null || oldpwd == "") {
                window.pop("原密码不可以为空哦~");
                return;
            }

            if (newpwd == null || newpwd == "" || confirmpwd == null || confirmpwd == "") {
                window.pop("新密码和确认密码都不可以为空诶~");
                return;
            }

            if (newpwd != confirmpwd) {
                window.pop("两次输入的新密码不一致哦~");
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
                url: "a_SelfInfo.aspx" + parms,
                type: "post",
                data: { "oldpwd": oldpwd, "newpwd": newpwd, "postTag": "changepwd" },
                dataType: "text",
                success: function (data) {
                    if (data == 1) {
                        $(window).attr('location', 'a_MainPage.aspx?res=1');
                    }
                    else if (data == -2) {
                        $(window).attr('location', "Sign in.aspx?res=5");
                    }
                    else {
                        window.pop("请输入正确的原密码~");
                        $('#u573_input').val('');
                        $('#u575_input').val('');
                        $('#u577_input').val('');
                    }
                }
            });
        }

        // 其他事件

        $('#u570').addClass('cus').click(function () {
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
