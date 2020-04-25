<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="u_CheckOut.aspx.cs" EnableSessionState="False" Inherits="iRan.view.u_CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>u_CheckOut</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/u_checkout/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/u_checkout/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
        $axure.utils.getReloadPath = function () { return 'resources/reload.html'; };
        function notlogined() {
            alert("请先登录");
            $(window).attr('location', 'Sign in.aspx?res=5');
        }
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
            top:75%;
            left:44%;
            width:220px;
            height:35px;
            line-height:35px;
            z-index:9999;
            color: #191629;
            background-color:#f2f2f2;
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
      <div id="u828" class="ax_default box_2">
        <div id="u828_div" class=""></div>
        <div id="u828_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- 退房 (矩形) -->
      <div id="u829" class="ax_default button cus" data-label="退房" onclick="CheckOut()">
        <div id="u829_div" class=""></div>
        <div id="u829_text" class="text ">
          <p><span style="text-decoration:none;">退房</span></p>
        </div>
      </div>

      <!-- 标头 (矩形) -->
      <div id="u830" class="ax_default label" data-label="标头">
        <div id="u830_div" class=""></div>
        <div id="u830_text" class="text ">
          <p><span style="text-decoration:none;">退房</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u831" class="ax_default heading_1">
        <div id="u831_div" class=""></div>
        <div id="u831_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u832" class="ax_default button cus">
        <div id="u832_div" class=""></div>
        <div id="u832_text" class="text ">
          <p><span style="text-decoration:none;">返回首页</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u833" class="ax_default label">
        <div id="u833_div" class=""></div>
        <div id="u833_text" class="text ">
          <p><span style="text-decoration:none;"><%=Content %></span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    <script>

        var parms = window.location.search;

        $('#u832').click(function () {            
            $(window).attr('location', 'u_MainPage.aspx' + parms);
        });

        function CheckOut() {

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
                url: "u_CheckOut.aspx" + parms,
                type: "post",
                data: { "postTag": "checkout" },
                dataType: "text",
                success: function (data) {
                    if (data != -1) {
                        $(window).attr('location', 'u_MainPage.aspx?uid=<%=uid%>&res=2');
                    }
                    else {     
                        $(window).attr('location', 'u_MainPage.aspx?uid=<%=uid%>&res=4');
                    }
                }
            });
        }

    </script>

    </form>
</body>
</html>
