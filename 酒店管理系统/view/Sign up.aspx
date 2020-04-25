<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign up.aspx.cs" Inherits="iRan.view.Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Sign up</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/sign_up/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/sign_up/data.js"></script>
    <script src="data/jquery.color-2.1.2.min.js"></script>
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
        #u12{
            cursor:pointer;
        }
         body{
            user-select:none;
            -moz-user-select:none;
            -webkit-user-select:none;
            -ms-user-select:none;
        }
        ._modal{
            top:85%;
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
      <div id="u7" class="ax_default box_2">
        <div id="u7_div" class=""></div>
        <div id="u7_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- telnumber (文本框) -->
      <div id="u8" class="ax_default text_field" data-label="telnumber">
        <div id="u8_div" class=""></div>
        <input id="u8_input" type="text" value="" class="u8_input" name="telnumber"/>
      </div>

      <!-- password (文本框) -->
      <div id="u9" class="ax_default text_field" data-label="password">
        <div id="u9_div" class=""></div>
        <input id="u9_input" type="password" value="" class="u9_input" name="password"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u10" class="ax_default label">
        <div id="u10_div" class=""></div>
        <div id="u10_text" class="text ">
          <p><span style="text-decoration:none;">注册</span></p>
        </div>
      </div>

      <!-- registBtn (矩形) -->
      <div id="u11" class="ax_default button cus" data-label="registBtn">
        <div id="u11_div" class="u_custom"><span style="text-decoration:none;">注册</span></div>
      </div>
    <script>
        $(function () {
            $('#u11_div').mouseenter(function () {
                $(this).stop(true, false).animate({
                    backgroundColor: '#353535',
                    color: 'rgba(242, 242, 242, 1)'
                }, 750)
            });
            $('#u11_div').mouseleave(function () {
                $(this).stop(true, false).animate({
                    backgroundColor: 'rgba(242, 242, 242, 1)',
                    color: '#191629'
                }, 750)
            });
        });
             </script>


      <!-- Unnamed (矩形) -->
      <div id="u12" class="ax_default label">
        <div id="u12_div" class=""></div>
        <div id="u12_text" class="text ">
          <p><span style="text-decoration:none;" id="textColorSet">秒速酒店</span></p>
        </div>
      </div>

      <!-- pwdAgian (文本框) -->
      <div id="u13" class="ax_default text_field" data-label="pwdAgian">
        <div id="u13_div" class=""></div>
        <input id="u13_input" type="password" value="" class="u13_input" name="pwdAgian"/>
      </div>

      <!-- name (文本框) -->
      <div id="u14" class="ax_default text_field" data-label="name">
        <div id="u14_div" class=""></div>
        <input id="u14_input" type="text" value="" class="u14_input" name="name"/>
      </div>

      <!-- idcard (文本框) -->
      <div id="u15" class="ax_default text_field" data-label="idcard">
        <div id="u15_div" class=""></div>
        <input id="u15_input" type="text" value="" class="u15_input" name="idcard"/>
      </div>

      <!-- nickname (文本框) -->
      <div id="u16" class="ax_default text_field" data-label="nickname">
        <div id="u16_div" class=""></div>
        <input id="u16_input" type="text" value="" class="u16_input" name="nickname"/>
      </div>
    </div>



    <script src="resources/scripts/axure/ios.js"></script>
        <input type="submit" id="sub" hidden="hidden" />
    </form>
    <script>
        $('#u11').click(function () {
            $('#sub').trigger('click');
        });
        $('#u12').click(function () {
            $(window).attr('location', 'Sign in.aspx');
        });
    </script>
</body>
</html>
