<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign in.aspx.cs" Inherits="iRan.view.Sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Sign in</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/sign_in/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/jquery.animate-colors-min.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script src="resources/scripts/axure/jquery.nicescroll.min.js"></script>
    <script src="files/iRan.js"></script>
    <script src="data/document.js"></script>
    <script src="files/sign_in/data.js"></script>
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
        ._modal{
            top:82%;
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
      <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- username (文本框) -->
      <div id="u1" class="ax_default text_field" data-label="username">
        <div id="u1_div" class=""></div>
        <input id="u1_input" type="text" value="" class="u1_input" name="username"/>
      </div>

      <!-- password (文本框) -->
      <div id="u2" class="ax_default text_field" data-label="password">
        <div id="u2_div" class=""></div>
        <input id="u2_input" type="password" value="" class="u2_input" name="password"/>
      </div>                 
            
      <!-- Unnamed (矩形) -->
      <div id="u3" class="ax_default label">
        <div id="u3_div" class=""></div>
        <div id="u3_text" class="text ">
          <p><span style="text-decoration:none;">登录</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u4" class="ax_default button cus">
        <div id="u4_div" class="u_custom"><span style="text-decoration:none;">登录</span></div>
      </div>
      <script>
          $(function () {
              $("#u4_div").mouseenter(function () {
                  $(this).stop(true, false).animate({
                      backgroundColor: '#353535',
                      color: 'rgba(242, 242, 242, 1)'
                  }, 750)
              });
              $("#u4_div").mouseleave(function () {
                  $(this).stop(true, false).animate({
                      backgroundColor: 'rgba(242, 242, 242, 1)',
                      color: '#191629'
                  }, 750)
              });
              $("#u6_div").mouseenter(function () {
                  $(this).stop(true, false).animate({
                      backgroundColor: '#353535',
                      color: 'rgba(242, 242, 242, 1)'
                  }, 750)
              });
              $("#u6_div").mouseleave(function () {
                  $(this).stop(true, false).animate({
                      backgroundColor: 'rgba(242, 242, 242, 1)',
                      color: '#191629'
                  }, 750)
              });
          });
      </script>
      <!-- Unnamed (矩形) -->
      <div id="u5" class="ax_default label">
        <div id="u5_div" class=""></div>
        <div id="u5_text" class="text ">
          <p><span style="text-decoration:none;" id="textColorSet">秒速酒店</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u6" class="ax_default button cus" <%--onclick="ClkCallBack()"--%>>
        <div id="u6_div" class="u_custom"><span style="text-decoration:none;">注册</span></div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>
    <input type="submit" id="sub" hidden="hidden" />
    </form>
    <script>
        $('#u4').click(function () {
            $('#sub').trigger('click');
        });

        $('#u6').click(function () {
<%--            if ('<%=SignUpAdd%>' == 'javascript:void(0)') {
                window.pop('注册暂未开放');

            }--%>
            $(window).attr('location', '<%=SignUpAdd%>');
        });       
             
        //回车事件
        document.onkeydown = function (event) {
            var e = event || window.event;
            if (e && e.keyCode == 13) { //回车键的键值为13
                $("#u4").click(); //调用登录按钮的登录事件
            }
        }; 
    </script>
</body>
</html>
