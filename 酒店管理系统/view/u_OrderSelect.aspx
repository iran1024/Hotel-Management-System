<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="u_OrderSelect.aspx.cs" EnableSessionState="False" Inherits="iRan.view.u_OrderSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>u_OrderSelect</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/u_orderselect/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/u_orderselect/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
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
        
        .osTextArea {
            background-color: #f2f2f2;            
            display: flex;
            font-size: 0.9em;
            border-width: 0px;
            width: 100%;
            height:100%;
            font-weight: bold;
            color: #191629;            
            font-family: '微软雅黑 Bold', '微软雅黑';
            resize: none;
            text-align:center;
            user-select:none;
            -moz-user-select:none;
            -webkit-user-select:none;
            -ms-user-select:none;
            overflow-x: hidden;
			overflow-y: scroll;
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
      <div id="u792" class="ax_default box_2">
        <div id="u792_div" class=""></div>
        <div id="u792_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u793" class="ax_default button cus" data-label="下一页" onclick="osByPage(g_osNowPage, 1)">
        <div id="u793_div" class=""></div>
        <div id="u793_text" class="text ">
          <p><span style="text-decoration:none;">下一页</span></p>
        </div>
      </div>

      <!-- 标头 (矩形) -->
      <div id="u794" class="ax_default label" data-label="标头">
        <div id="u794_div" class=""></div>
        <div id="u794_text" class="text ">
          <p><span style="text-decoration:none;">订单查询</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u795" class="ax_default heading_1">
        <div id="u795_div" class=""></div>
        <div id="u795_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u796" class="ax_default button cus">
        <div id="u796_div" class=""></div>
        <div id="u796_text" class="text ">
          <p><span style="text-decoration:none;">返回首页</span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u797" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u798" class="ax_default table_cell">
          <img id="u798_img" class="img " src="images/u_orderselect/u798.png"/>
          <div id="u798_text" class="text ">
            <p><span style="text-decoration:none;">订单号</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u799" class="ax_default table_cell">
          <img id="u799_img" class="img " src="images/u_orderselect/u799.png"/>
          <div id="u799_text" class="text ">
            <p><span style="text-decoration:none;">订单内容</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u800" class="ax_default table_cell">
          <img id="u800_img" class="img " src="images/u_orderselect/u800.png"/>
          <div id="u800_text" class="text ">
            <p><span style="text-decoration:none;">订单金额</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u801" class="ax_default table_cell">
          <img id="u801_img" class="img " src="images/u_orderselect/u801.png"/>
          <div id="u801_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u802" class="ax_default table_cell">
          <img id="u802_img" class="img " src="images/u_orderselect/u802.png"/>
          <div id="u802_text" class="text ">
            <p><textarea rows="2" cols="40" style="text-decoration:none;" class="osTextArea" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u803" class="ax_default table_cell">
          <img id="u803_img" class="img " src="images/u_orderselect/u803.png"/>
          <div id="u803_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u804" class="ax_default table_cell">
          <img id="u804_img" class="img " src="images/u_orderselect/u801.png"/>
          <div id="u804_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u805" class="ax_default table_cell">
          <img id="u805_img" class="img " src="images/u_orderselect/u802.png"/>
          <div id="u805_text" class="text " style="display:none; visibility: hidden">
            <p><textarea rows="2" cols="40" style="text-decoration:none;" class="osTextArea" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u806" class="ax_default table_cell">
          <img id="u806_img" class="img " src="images/u_orderselect/u803.png"/>
          <div id="u806_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u807" class="ax_default table_cell">
          <img id="u807_img" class="img " src="images/u_orderselect/u801.png"/>
          <div id="u807_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u808" class="ax_default table_cell">
          <img id="u808_img" class="img " src="images/u_orderselect/u802.png"/>
          <div id="u808_text" class="text " style="display:none; visibility: hidden">
            <p><textarea rows="2" cols="40" style="text-decoration:none;" class="osTextArea" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u809" class="ax_default table_cell">
          <img id="u809_img" class="img " src="images/u_orderselect/u803.png"/>
          <div id="u809_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u810" class="ax_default table_cell">
          <img id="u810_img" class="img " src="images/u_orderselect/u801.png"/>
          <div id="u810_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u811" class="ax_default table_cell">
          <img id="u811_img" class="img " src="images/u_orderselect/u802.png"/>
          <div id="u811_text" class="text " style="display:none; visibility: hidden">
            <p><textarea rows="2" cols="40" style="text-decoration:none;" class="osTextArea" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u812" class="ax_default table_cell">
          <img id="u812_img" class="img " src="images/u_orderselect/u803.png"/>
          <div id="u812_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u813" class="ax_default table_cell">
          <img id="u813_img" class="img " src="images/u_orderselect/u813.png"/>
          <div id="u813_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u814" class="ax_default table_cell">
          <img id="u814_img" class="img " src="images/u_orderselect/u814.png"/>
          <div id="u814_text" class="text " style="display:none; visibility: hidden">
            <p><textarea rows="2" cols="40" style="text-decoration:none;" class="osTextArea" readonly="readonly"></textarea></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u815" class="ax_default table_cell">
          <img id="u815_img" class="img " src="images/u_orderselect/u815.png"/>
          <div id="u815_text" class="text " style="display:none; visibility: hidden">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>
      </div>

      <!-- 上一页 (矩形) -->
      <div id="u816" class="ax_default button cus" data-label="上一页" onclick="osByPage(g_osNowPage, -1)">
        <div id="u816_div" class=""></div>
        <div id="u816_text" class="text ">
          <p><span style="text-decoration:none;">上一页</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>
    <script>

        var parms = window.location.search;

        $('#u796').click(function () {
            $(window).attr('location', 'u_MainPage.aspx' + parms);
        });

        g_osNowPage = <%=osNowPage%>;
        

        var osInfoType = new Array(
            ["#u801_text", "#u802_text", "#u803_text"],
            ["#u804_text", "#u805_text", "#u806_text"],
            ["#u807_text", "#u808_text", "#u809_text"],
            ["#u810_text", "#u811_text", "#u812_text"],
            ["#u813_text", "#u814_text", "#u815_text"]);

        var osGidType = new Array(["单人房-硬板床", "单人房-软榻床"],
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
                url: "u_OrderSelect.aspx" + parms,
                type: "post",
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {

                    }
                    else {
                        var osJsonData = JSON.parse(data);                        

                        // 先清除数据
                        for (var m = 0; m < 5; m++) {
                            for (var k = 0; k < 3; k++)
                                $(osInfoType[m][k]).css('visibility', 'hidden').css('display', 'none');                            
                        }

                        // 再更新数据
                        for (var b = 0; b < osJsonData.length; b++) {

                            var ckTime = new Date(osJsonData[b].CheckinTime),
                                ckYear = ckTime.getFullYear(),
                                ckMonth = ckTime.getMonth() + 1,
                                ckDay = ckTime.getDate(),
                                ckRoomType = osJsonData[b].RoomType,
                                ckBedType = osJsonData[b].BedType,
                                ckGid = osJsonData[b].Gid;
                            var ckInfo = ckYear + "年" + ckMonth + "月" + ckDay + "日入住" + osGidType[ckRoomType][ckBedType] + "-" + ckGid;
                            //console.log(osJsonData[b].esOrderContent == "");
                            if (osJsonData[b].esOrderContent != "")
                                ckInfo += '\n' + osJsonData[b].esOrderContent;
                            else
                                ckInfo += '\n' + "没有预定额外服务";
                            $(osInfoType[b][0]).css('visibility', 'visible').css('display', 'block').find('span').html(osJsonData[b].Oid);
                            $(osInfoType[b][1]).css('visibility', 'visible').css('display', 'block').find('.osTextArea').html(ckInfo);
                            $(osInfoType[b][2]).css('visibility', 'visible').css('display', 'block').find('span').html("¥" + osJsonData[b].cTotalPrice);                           
                        }
                    }
                }
            });
        };

        // 个人订单Ajax异步获取
        function osByPage(osNowPage, tag) {

            if (osNowPage == <%=osMaxPage%> && tag == 1)
                return;
            if (osNowPage == 1 && tag == -1)
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
                url: "u_OrderSelect.aspx" + parms,
                type: "post",
                async: true,
                data: { "osNowPage": (osNowPage + tag), "postTag": "osByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_osNowPage++;
                    else
                        g_osNowPage--;

                    var osByPageJsonData = JSON.parse(data);
                    // 先清除数据
                    for (var m = 0; m < 5; m++) {
                        for (var k = 0; k < 3; k++)
                            $(osInfoType[m][k]).css('visibility', 'hidden').css('display', 'none');                        
                    }
                    // 再更新数据
                    for (var b = 0; b < osByPageJsonData.length; b++) {

                        var ckTime = new Date(osByPageJsonData[b].CheckinTime),
                            ckYear = ckTime.getFullYear(),
                            ckMonth = ckTime.getMonth() + 1,
                            ckDay = ckTime.getDate(),
                            ckRoomType = osByPageJsonData[b].RoomType,
                            ckBedType = osByPageJsonData[b].BedType,
                            ckGid = osByPageJsonData[b].Gid;
                        var ckInfo = ckYear + "年" + ckMonth + "月" + ckDay + "日入住" + osGidType[ckRoomType][ckBedType] + "-" + ckGid;
                        if (osByPageJsonData[b].esOrderContent != "")
                            ckInfo += '\n' + osByPageJsonData[b].esOrderContent;
                        else
                            ckInfo += '\n' + "没有预定额外服务";
                        $(osInfoType[b][0]).css('visibility', 'visible').css('display', 'block').find('span').html(osByPageJsonData[b].Oid);
                        $(osInfoType[b][1]).css('visibility', 'visible').css('display', 'block').find('.osTextArea').html(ckInfo);
                        $(osInfoType[b][2]).css('visibility', 'visible').css('display', 'block').find('span').html("¥" + osByPageJsonData[b].cTotalPrice);
                    }

                }
            });

        }

    </script>
    </form>

</body>
</html>
