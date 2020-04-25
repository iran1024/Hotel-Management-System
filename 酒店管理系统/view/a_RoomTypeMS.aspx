<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_RoomTypeMS.aspx.cs" Inherits="iRan.view.a_RoomTypeMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>a_RoomTypeMs</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/a_roomtypems/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/a_roomtypems/data.js"></script>
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
            top:68.4%;
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
        .osTextArea {
            background-color: #f2f2f2;            
            display: flex;
            font-size: 0.8em;
            border-width: 0px;
            width: 100%;
            height:100%;
            font-weight: bold;
            color: #191629;            
            font-family: '微软雅黑 Bold', '微软雅黑';
            resize: none;
            text-align:left;
            letter-spacing:2px;
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
      <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (adminMaster) -->

      <!-- Unnamed (菜单) -->
      <div id="u2" class="ax_default">
        <img id="u2_menu" class="img " src="images/a_roomtypems/regen/u2_menu.png" alt="u2_menu"/>

        <!-- Unnamed (表格) -->
        <div id="u3" class="ax_default">

          <!-- Unnamed (菜单项) -->
          <div id="u4" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u4_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u4_text" class="text ">
              <p><span style="text-decoration:none;">退出系统</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u5" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u5_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u5_text" class="text ">
              <p><span style="text-decoration:none;">客房信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u6" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u6_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u6_text" class="text ">
              <p><span style="text-decoration:none;">房型信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u7" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u7_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u7_text" class="text ">
              <p><span style="text-decoration:none;">入住信息查询</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u8" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u8_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u8_text" class="text ">
              <p><span style="text-decoration:none;">订单管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u9" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u9_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u9_text" class="text ">
              <p><span style="text-decoration:none;">额外服务管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u10" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u10_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u10_text" class="text ">
              <p><span style="text-decoration:none;">保洁服务</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u11" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u11_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u11_text" class="text ">
              <p><span style="text-decoration:none;">财务报表</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u12" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u12_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u12_text" class="text ">
              <p><span style="text-decoration:none;">注册用户管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u13" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u13_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u13_text" class="text ">
              <p><span style="text-decoration:none;">个人信息管理</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u14" class="ax_default menu_item" onclick="Redirect(this)">
            <img id="u14_img" class="img " src="images/a_roomtypems/regen/u4.png"/>
            <div id="u14_text" class="text ">
              <p><span style="text-decoration:none;">通知公告</span></p>
            </div>
          </div>

          <!-- Unnamed (菜单项) -->
          <div id="u15" class="ax_default menu_item">
            <img id="u15_img" class="img " src="images/a_roomtypems/regen/u15.png"/>
            <div id="u15_text" class="text " style="display:none; visibility: hidden">
              <p></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u16" class="ax_default box_1">
        <img id="u16_img" class="img " src="images/a_roomtypems/regen/u16.svg"/>
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
          <p><span style="text-decoration:none;">房型信息管理</span></p>
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u19" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u20" class="ax_default table_cell">
          <img id="u20_img" class="img " src="images/a_roomtypems/regen/u20.png"/>
          <div id="u20_text" class="text ">
            <p><span style="text-decoration:none;">床型</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u21" class="ax_default table_cell">
          <img id="u21_img" class="img " src="images/a_roomtypems/regen/u21.png"/>
          <div id="u21_text" class="text ">
            <p><span style="text-decoration:none;">简介</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u22" class="ax_default table_cell">
          <img id="u22_img" class="img " src="images/a_roomtypems/regen/u22.png"/>
          <div id="u22_text" class="text ">
            <p><span style="text-decoration:none;">操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u23" class="ax_default table_cell">
          <img id="u23_img" class="img " src="images/a_roomtypems/regen/u23.png"/>
          <div id="u23_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u24" class="ax_default table_cell">
          <img id="u24_img" class="img " src="images/a_roomtypems/regen/u24.png"/>
          <div id="u24_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u25" class="ax_default table_cell">
          <img id="u25_img" class="img " src="images/a_roomtypems/regen/u25.png"/>
          <div id="u25_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u26" class="ax_default table_cell">
          <img id="u26_img" class="img " src="images/a_roomtypems/regen/u23.png"/>
          <div id="u26_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u27" class="ax_default table_cell">
          <img id="u27_img" class="img " src="images/a_roomtypems/regen/u24.png"/>
          <div id="u27_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u28" class="ax_default table_cell">
          <img id="u28_img" class="img " src="images/a_roomtypems/regen/u25.png"/>
          <div id="u28_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u29" class="ax_default table_cell">
          <img id="u29_img" class="img " src="images/a_roomtypems/regen/u29.png"/>
          <div id="u29_text" class="text ">
            <p><span style="text-decoration:none;"></span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u30" class="ax_default table_cell">
          <img id="u30_img" class="img " src="images/a_roomtypems/regen/u30.png"/>
          <div id="u30_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u31" class="ax_default table_cell">
          <img id="u31_img" class="img " src="images/a_roomtypems/regen/u31.png"/>
          <div id="u31_text" class="text " style="display:none; visibility: hidden">
            <p></p>
          </div>
        </div>
      </div>

      <!-- 上一页 (矩形) -->
      <div id="u32" class="ax_default button cus" data-label="上一页" onclick="rtByPage(g_rtNowPage, -1)">
        <div id="u32_div" class=""></div>
        <div id="u32_text" class="text ">
          <p><span style="text-decoration:none;">上一页</span></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u33" class="ax_default button cus" data-label="下一页" onclick="rtByPage(g_rtNowPage, 1)">
        <div id="u33_div" class=""></div>
        <div id="u33_text" class="text ">
          <p><span style="text-decoration:none;">下一页</span></p>
        </div>
      </div>

      <!-- 修改1 (矩形) -->
      <div id="u34" class="ax_default button cus" data-label="修改1" onclick="update(this)" data-index="0">
        <div id="u34_div" class=""></div>
        <div id="u34_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改2 (矩形) -->
      <div id="u35" class="ax_default button cus" data-label="修改2" onclick="update(this)" data-index="1">
        <div id="u35_div" class=""></div>
        <div id="u35_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>

      <!-- 修改3 (矩形) -->
      <div id="u36" class="ax_default button cus" data-label="修改3" onclick="update(this)" data-index="2">
        <div id="u36_div" class=""></div>
        <div id="u36_text" class="text ">
          <p><span style="text-decoration:none;">修改</span></p>
        </div>
      </div>
         
      <!-- Unnamed (文本域) -->
      <div id="u37" class="ax_default table_cell">        
          <div id="u37_text" class="text " style="display:block; visibility: visible">
            <p><textarea rows="3" cols="40" style="text-decoration:none;" class="osTextArea"></textarea></p>
          </div>        
      </div>

      <!-- Unnamed (文本域) -->
      <div id="u38" class="ax_default table_cell">        
        <div id="u38_text" class="text " style="display:block; visibility: visible">
            <p><textarea rows="3" cols="40" style="text-decoration:none;" class="osTextArea"></textarea></p>
          </div> 
      </div>

      <!-- Unnamed (文本域) -->
      <div id="u39" class="ax_default table_cell">
        
       <div id="u39_text" class="text " style="display:block; visibility: visible">
            <p><textarea rows="3" cols="40" style="text-decoration:none;" class="osTextArea"></textarea></p>
          </div>       
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    <script>

        var rtType = new Array(
            ["#u23", "#u37", "#u34"],
            ["#u26", "#u38", "#u35"],
            ["#u29", "#u39", "#u36"]);

        var rbType = new Array(["单人房-硬板床", "单人房-软榻床"],
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
                url: "a_RoomTypeMS.aspx",
                type: "post",
                async: true,
                data: { "postTag": "load" },
                dataType: "text",
                success: function (data) {                    

                    var rtJsonData = JSON.parse(data);
                    // 先清除数据
                    for (var m = 0; m < 3; m++) {
                        for (var k = 0; k < 2; k++)
                            $(rtType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                        $(rtType[m][2]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                    }
                    // 再更新数据
                    for (var b = 0; b < rtJsonData.length; b++) {

                        $(rtType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rbType[rtJsonData[b].RoomType][rtJsonData[b].BedType]);
                        $(rtType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('.osTextArea').val(rtJsonData[b].Syno);
                        $(rtType[b][2]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-roomtype', rtJsonData[b].RoomType).attr('data-value-bedtype', rtJsonData[b].BedType);
                    }

                }
            });
        }

        var g_rtNowPage = <%=rtNowPage%>;

        // Ajax
        function rtByPage(rtNowPage, tag) {

            if (rtNowPage == <%=rtMaxPage%> && tag == 1)
                return;
            if (rtNowPage == 1 && tag == -1)
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
                url: "a_RoomTypeMS.aspx",
                type: "post",
                async: true,
                data: { "rtNowPage": rtNowPage + tag, "postTag": "rtByPage" },
                dataType: "text",
                success: function (data) {

                    if (tag == 1)
                        g_rtNowPage++;
                    else
                        g_rtNowPage--;

                    var rtJsonData = JSON.parse(data);
                    // 先清除数据
                    for (var m = 0; m < 3; m++) {
                        for (var k = 0; k < 2; k++)
                            $(rtType[m][k] + "_text").css('visibility', 'hidden').css('display', 'none');
                        $(rtType[m][2]).css('visibility', 'hidden').css('display', 'none').addClass('ax_default_hidden');
                    }
                    // 再更新数据
                    for (var b = 0; b < rtJsonData.length; b++) {
                                                
                        $(rtType[b][0] + "_text").css('visibility', 'visible').css('display', 'block').find('span').html(rbType[rtJsonData[b].RoomType][rtJsonData[b].BedType]);
                        $(rtType[b][1] + "_text").css('visibility', 'visible').css('display', 'block').find('.osTextArea').val(rtJsonData[b].Syno);
                        $(rtType[b][2]).css('visibility', 'visible').css('display', 'block').removeClass('ax_default_hidden').attr('data-value-roomtype', rtJsonData[b].RoomType).attr('data-value-bedtype', rtJsonData[b].BedType);
                    }

                }
            });
        }

        function update(select) {

            var index = $(select).attr('data-index'),
                roomtype = $(rtType[index][2]).attr('data-value-roomtype'),
                bedtype = $(rtType[index][2]).attr('data-value-bedtype'),
                syno = $(rtType[index][1] + "_text").find('.osTextArea').val();
            
            if (GetVarcharLength(syno) > 512) {
                window.pop("字数太多啦~");
                return;
            }

            /*五千年前的独木舟，你曾渡多少身影？五千年，轮回、等待、执著，独木舟，孤单、简单、想念，为一份水的柔情，醉倒湖心，一涯情深。我梦化成舟，投影在你的波心。*/
            
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
                url: "a_RoomTypeMS.aspx",
                type: "post",
                async: true,
                data: { "roomtype": roomtype, "bedtype": bedtype, "syno": syno, "postTag": "update" },
                dataType: "text",
                success: function (data) {

                    if (data != -1) {
                        window.pop("修改成功咯~");
                    }
                    else {

                    }
                }
            });
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

    </script>
    </form>
</body>
</html>
