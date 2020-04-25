<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="u_ExService.aspx.cs" EnableSessionState="False" Inherits="iRan.view.u_ExService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>u_ExService</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/u_exservice/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/u_exservice/data.js"></script>
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
        #u791{
            cursor:pointer;
        }
        .osTextArea {
            background-color: #f2f2f2;            
            display: flex;
            font-size: 0.9em;
            border-width: 0px;
            margin-top:100px;
            width: 100%;
            height:100%;            
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
      <div id="u745" class="ax_default box_2">
        <div id="u745_div" class=""></div>
        <div id="u745_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u746" class="ax_default heading_1">
        <div id="u746_div" class=""></div>
        <div id="u746_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>

      <!-- 额外服务 (动态面板) -->

      <div id="u747" class="ax_default" data-label="额外服务">
        <div id="u747_state0" class="panel_state" data-label="选择" style="">


                <div id="u747_state0_content" class="panel_state_content">
                <%
                    int index = 0;
                    int name_top = 50;
                    int reduce_top = 57;

                    string name_topValue = string.Empty;
                    string reduce_topValue = string.Empty;

                    foreach (iRan.Model.ExService ex in showExs)
                    {
                        name_top += 70;
                        reduce_top += 70;

                        name_topValue = "top:" + name_top + "px";
                        reduce_topValue = "top:" + reduce_top + "px";

                %>
                        <div id="<%=exsclassType[index,0] %>" class="ax_default exsinfo">

                            <div id="<%=exsclassType[index,1] %>" class="ax_default label stock" style="<%=name_topValue%>">
                                <div id="<%=exsclassType[index,1] %>_div" class=""></div>
                                <div id="<%=exsclassType[index,1] %>_text" class="text">
                                    <p><span style="text-decoration: none;">库存<%=ex.GoodsStock %>&nbsp; &nbsp; 单价￥<%=ex.GoodsPrice %></span></p>
                                </div>
                            </div>

                            <div id="<%=exsclassType[index,2]%>" class="ax_default label name" style="<%=name_topValue%>" data-value-gsid="<%=ex.GoodsID %>" data-value-gsname="<%=ex.GoodsName %>" data-value-gsstock="<%=ex.GoodsStock %>" data-value-gsprice="<%=ex.GoodsPrice %>">
                                <div id="<%=exsclassType[index,2]%>_div" class=""></div>
                                <div id="<%=exsclassType[index,2]%>_text" class="text ">
                                    <p><span style="text-decoration: none;" data-value="<%=ex.GoodsID %>"><%=ex.GoodsName %></span></p>
                                </div>
                            </div>

                            <div id="<%=exsclassType[index,3]%>" class="ax_default text_field" style="<%=name_topValue%>">
                                <div id="<%=exsclassType[index,3]%>_div" class=""></div>
                                <input id="<%=exsclassType[index,3]%>_input" type="text" value="0" class="<%=exsclassType[index,3]%>_input gscount" oninput="numberchanged(this, event)"/>
                            </div>

                            <div id="<%=exsclassType[index,4] %>" class="ax_default button cus" style="<%=reduce_topValue%>" onclick="GoodsReduce(this)">
                                <div id="<%=exsclassType[index,4] %>_div" class=""></div>
                                <div id="<%=exsclassType[index,4] %>_text" class="text ">
                                    <p><span style="text-decoration: none;">-</span></p>
                                </div>
                            </div>

                            <div id="<%=exsclassType[index,5]%>" class="ax_default button cus" style="<%=reduce_topValue%>" onclick="GoodsAdd(this)">
                                <div id="<%=exsclassType[index,5]%>_div" class=""></div>
                                <div id="<%=exsclassType[index,5]%>_text" class="text ">
                                    <p><span style="text-decoration: none;">+</span></p>
                                </div>
                            </div>

                        </div>

                <%       
                        index++;
                    }
                %>

                    <div id="leftp" class="ax_default button cus" data-label="上一页" onclick="gsByPage(g_gsNowPage, -1)">
                            <div id="leftp_div" class=""></div>
                            <div id="leftp_text" class="text ">
                                <p><span style="text-decoration: none;">上一页</span></p>
                            </div>
                        </div>

                    <div id="rightp" class="ax_default button cus" data-label="下一页" onclick="gsByPage(g_gsNowPage, 1)">
                            <div id="rightp_div" class=""></div>
                            <div id="rightp_text" class="text ">
                                <p><span style="text-decoration: none;">下一页</span></p>
                            </div>
                        </div>
                        <div id="u784" class="ax_default button" data-label="结算" onclick="Settle()">
                            <div id="u784_div" class=""></div>
                            <div id="u784_text" class="text ">
                                <p><span style="text-decoration: none;">结算</span></p>
                            </div>
                        </div>

                        <div id="u785" class="ax_default label" data-label="标头">
                            <div id="u785_div" class=""></div>
                            <div id="u785_text" class="text ">
                                <p><span style="text-decoration: none;">额外服务</span></p>
                            </div>
                        </div>

                </div>


        </div>
        <div id="u747_state1" class="panel_state" data-label="结算" style="visibility: hidden;">
          <div id="u747_state1_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u786" class="ax_default button">
              <div id="u786_div" class=""></div>
              <div id="u786_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 总统套房-大圆床- (矩形) -->
            <div id="u787" class="ax_default heading_1" data-label="总统套房-大圆床-">
              <div id="u787_div" class=""></div>
              <div id="u787_text" class="text ">
                <p><textarea rows="6" cols="40" style="text-decoration:none;" class="osTextArea" readonly="readonly"></textarea></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u788" class="ax_default label">
              <div id="u788_div" class=""></div>
              <div id="u788_text" class="text ">
                <p><span style="text-decoration:none;"></span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u789" class="ax_default button cus" onclick="Reserve()">
              <div id="u789_div" class=""></div>
              <div id="u789_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>

            <!-- 标头 (矩形) -->
            <div id="u790" class="ax_default label" data-label="标头">
              <div id="u790_div" class=""></div>
              <div id="u790_text" class="text ">
                <p><span style="text-decoration:none;">结算</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u791" class="ax_default button">
        <div id="u791_div" class=""></div>
        <div id="u791_text" class="text ">
          <p><span style="text-decoration:none;">返回首页</span></p>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>

    <script>
        var parms = window.location.search;
        var noPurchase = false;        
        var goodsList = new Array();
        var goodsId, goodsName, goodsStock, goodsPrice, goodsCount;

        function GoodsReduce(Select) {

            goodsId = $(Select).parent().find('.name').attr('data-value-gsid');
            goodsName = $(Select).parent().find('.name').attr('data-value-gsname');
            goodsStock = $(Select).parent().find('.name').attr('data-value-gsstock');
            goodsPrice = $(Select).parent().find('.name').attr('data-value-gsprice');
            goodsCount = parseInt($(Select).parent().find('.text_field').find('input').val());
            
            // 如果当前选择数量再减一就小于了0，则不进行reduce操作
            if (goodsCount - 1 < 0)
                return;
            $(Select).parent().find('.text_field').find('input').val(--goodsCount);     
            var goods = new Array(goodsId, goodsName, goodsStock, goodsPrice, goodsCount);
            
            for (var i = 0; i < goodsList.length; i++) {
                if (goods[0] == goodsList[i][0]) {                    
                    if (goods[4] == 0) {
                        goodsList.splice(i, 1);
                        break;
                    }
                    else {
                        goodsList[i][4] = goods[4];
                        break;
                    }
                }
            }
            
            console.log(goodsList);

        }

        function GoodsAdd(Select) {

            goodsId = $(Select).parent().find('.name').attr('data-value-gsid');
            goodsName = $(Select).parent().find('.name').attr('data-value-gsname');
            goodsStock = $(Select).parent().find('.name').attr('data-value-gsstock');
            goodsPrice = $(Select).parent().find('.name').attr('data-value-gsprice');            
            goodsCount = parseInt($(Select).parent().find('.text_field').find('input').val());
            // 如果当前选择数量再加一就超过了库存，则不进行add操作
            if (goodsCount + 1 > goodsStock)
                return;
            $(Select).parent().find('.text_field').find('input').val(++goodsCount);

            var goods = new Array(goodsId, goodsName, goodsStock, goodsPrice, goodsCount);

            var isAlreadyHave = 0;
            for (var i = 0; i < goodsList.length; i++) {
                if (goods[0] == goodsList[i][0]) {
                    isAlreadyHave = 1;
                    goodsList[i][4] = goods[4];
                    break;
                }
            }
            if (isAlreadyHave == 0)
                goodsList.push(goods);
            else
                isAlreadyHave = 0;
            console.log(goodsList);
        }

        function Settle() {
                         
            if (goodsList.length == 0) {
                noPurchase = true;
                $('#u787').find('textarea').html('暂不购买');
                $('#u788').find('span').html('');
                $('#u789').find('span').html('结束');
            }
            else {
                var settleInfo = "", total = 0;
                for (var m = 0; m < goodsList.length; m++) {                   
                    settleInfo += goodsList[m][1] + "*" + goodsList[m][4] + ", 单价￥" + goodsList[m][3] + "\n";

                    total += goodsList[m][3] * goodsList[m][4];
                }
                $('#u787').find('textarea').html(settleInfo);
                $('#u788').find('span').html("￥" + total);
                $('#u789').find('span').html('预定');
            }            
            
        }

        $('#u791').click(function () {
            var reg_uid;
            var reg = new RegExp("(^|&)" + "uid" + "=([^&]*)(&|$)", "i");
                 var r = window.location.search.substr(1).match(reg);
                 if (r != null) 
                     reg_uid = decodeURI(r[2]);
                 else 
                     reg_uid = null;
            $(window).attr('location', 'u_MainPage.aspx?uid=' + reg_uid);
        });

        function Reserve() {    
            
            var splitGoodsArr;
            // 添加分割字符，方便再后端提取前台数组数据
            if (!noPurchase) {
                for (var b = 0; b < goodsList.length; b++) {
                    goodsList[b].join(',')
                }    
                splitGoodsArr = goodsList.join(';');
            }
            else
                splitGoodsArr = null;

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
                url: "u_ExService.aspx" + parms,
                type: "post",
                data: { "split_goods_arr": splitGoodsArr, "nopurchase": noPurchase, "postTag": "reserve" },
                dataType: "text",
                traditional: true,
                success: function (data) {

                    if (data != -1) {
                        $(window).attr('location', 'u_MainPage.aspx?uid=<%=uid%>' + '&res=' + data);
                    }
                    else {
                        console.log('预定失败');
                        alert('预定失败，请重试');
                        window.location.reload();
                    }
                }
            });            
        }

        var gsType = new Array(
            ["u750", "u749", "u752", "u751", "u753"],
            ["u756", "u755", "u758", "u757", "u759"],
            ["u762", "u761", "u764", "u763", "u765"],
            ["u768", "u767", "u770", "u769", "u771"],
            ["u774", "u773", "u776", "u775", "u777"],
            ["u780", "u779", "u782", "u781", "u783"]);

        g_gsNowPage = <%=gsNowPage%>;
        gsMaxPage = <%=gsMaxPage%>;
        function gsByPage(gsNowPage, tag) {

            updatePage(g_gsNowPage);
            if (gsNowPage == gsMaxPage && tag == 1)
                return;
            if (gsNowPage == 1 && tag == -1)
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
                url: "u_ExService.aspx",
                type: "post",
                data: { "gsNowPage": gsNowPage + tag, "postTag": "gsByPage" },
                dataType: "text",
                success: function (data) {

                    if (tag == 1)
                        g_gsNowPage++;
                    else
                        g_gsNowPage--;

                    if (data == -1) {

                    }
                    else {
                        var gsJsonData = JSON.parse(data);
                        
                        // 先清除数据
                        for (var m = 0; m < 6; m++) {   
                            for (var k = 0; k < 5; k++)
                                $("#" + gsType[m][k]).css('visibility', 'hidden').css('display', 'none'); 
                        }
                        
                        // 再更新数据
                        for (var b = 0; b < gsJsonData.length; b++) {
                            
                            $("#" + gsType[b][0]).css('visibility', 'visible').css('display', 'flex').attr('data-value-gsid', gsJsonData[b].GoodsID).attr('data-value-gsname', gsJsonData[b].GoodsName).attr('data-value-gsstock', gsJsonData[b].GoodsStock).attr('data-value-gsprice', gsJsonData[b].GoodsPrice);
                            $("#" + gsType[b][1]).css('visibility', 'visible').css('display', 'flex');

                            $("#" + gsType[b][0] + "_text").find('span').html(gsJsonData[b].GoodsName).css('visibility', 'visible').css('display', 'block'); 

                            $("#" + gsType[b][1] + "_text").find('span').html("库存" + gsJsonData[b].GoodsStock + "&nbsp; &nbsp; " + "单价¥" + gsJsonData[b].GoodsPrice).css('visibility', 'visible').css('display', 'block');    
                            
                            $("#" + gsType[b][2]).css('visibility', 'visible').css('display', 'block');
                            $("#" + gsType[b][3]).css('visibility', 'visible').css('display', 'block');

                            var hasMatch = 0;
                            if (goodsList.length != 0) {
                                for (var k = 0; k < goodsList.length; k++) {
                                    if (goodsList[k][0] == gsJsonData[b].GoodsID) {
                                        $("#" + gsType[b][3] + "_input").val(goodsList[k][4]);
                                        hasMatch = 1;
                                        break;
                                    }
                                }
                            }
                            if (hasMatch == 1)
                                hasMatch = 0;
                            else
                                $("#" + gsType[b][3] + "_input").val(0);
                            $("#" + gsType[b][4]).css('visibility', 'visible').css('display', 'block');
                        }
                    }
                }
            });

        }

        function updatePage(gsNowPage) {

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
                url: "u_ExService.aspx",
                type: "post",
                async: true,
                data: { "gsNowPage": gsNowPage, "postTag": "updatePage" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {
                        
                    }
                    else {
                        gsMaxPage = data;
                        return data;
                    }
                }
            });
        }

        function numberchanged(select, event) {
            
            var inputVal = event.target.value,
                maxStock = parseInt($(select).parent().parent().find('.name').attr('data-value-gsstock'));
            if (isNaN(inputVal) || inputVal == "") {
                $(select).val(0);
                return;
            }
            if (inputVal > maxStock) {
                $(select).val(maxStock);
            }
            if (inputVal < 0) {
                $(select).val(0);
                return;
            }
            //console.log($(select).val());
            
            goodsId = $(select).parent().parent().find('.name').attr('data-value-gsid');
            goodsName = $(select).parent().parent().find('.name').attr('data-value-gsname');
            goodsStock = maxStock;
            goodsPrice = $(select).parent().parent().find('.name').attr('data-value-gsprice');
            goodsCount = $(select).val();
            
            var goods = new Array(goodsId, goodsName, goodsStock, goodsPrice, goodsCount);

            var isAlreadyHave = 0;

            for (var i = 0; i < goodsList.length; i++) {
                if (goods[0] == goodsList[i][0]) {
                    isAlreadyHave = 1;
                    if (goodsCount != 0) {
                        goodsList[i][4] = goods[4];
                        break;
                    }                        
                    else {
                        goodsList.splice(i, 1);
                        break;
                    }
                    break;
                }
            }
            if (isAlreadyHave == 0) {
                if (goodsCount != 0)
                    goodsList.push(goods);
                else
                    return;
            }
                
            else
                isAlreadyHave = 0;
            console.log(goodsList);
        }

        $(".gscount").focus(function () {
            var nowVal = $(this).val();
            if (nowVal == 0) {
                $(this).val('');
            }            
        }).blur(function () {
            var nowVal = $(this).val();
            if (nowVal == '') {
                $(this).val(0);
            }
            return;
        });
       
    </script>
    </form>
</body>
</html>
