<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="u_SelfInfo.aspx.cs" Inherits="iRan.view.u_SelfInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>u_SelfInfo</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/u_selfinfo/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/u_selfinfo/data.js"></script>
    <script src="files/AutoAdjustPostion.js"></script>
    <link href="files/CommonPrompt.css" rel="stylesheet" />
    <script src="files/CommonPrompt.js"></script>
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

        #backWhole {
				width: 100%;
				height: 100%;
				max-width: 100%;
				max-height: 100%;
				position: fixed;
				background-color: #f2f2f2;
		}
			
		.back_show {
			animation: back_show_animat 0.6s ease-in-out;
			animation-fill-mode: forwards;
		}
			
		.back_hide {
			animation: back_hide_animat 0.6s ease-in-out;
			animation-fill-mode: forwards;
		}
			
		@keyframes back_show_animat {
			0% {
				opacity: 0;
			}
			100% {
				opacity: 0.6;
			}
		}
			
		@keyframes back_hide_animat {
			0% {
				opacity: 0.6;
			}
			100% {
				opacity: 0;
			}
		}
    </style>
</head>

<div id="backWhole" style="display: none">

</div>
<body>
    <div id="div"></div>
    <div>
        <button id="popInfo1" onclick="ff()" hidden="hidden"></button>
        <button id="popInfo2" onclick="ll()" hidden="hidden"></button>
        <button id="popInfo3" onclick="gg()" hidden="hidden"></button>
        <button id="popInfo4" onclick="hh()" hidden="hidden"></button>
    </div>

    <form id="form1" runat="server">
        <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u817" class="ax_default box_2">
        <div id="u817_div" class=""></div>
        <div id="u817_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- 下一页 (矩形) -->
      <div id="u818" class="ax_default button cus" data-label="修改密码" onclick="ChangeSelfPWD()">
        <div id="u818_div" class=""></div>
        <div id="u818_text" class="text ">
          <p><span style="text-decoration:none;">修改密码</span></p>
        </div>
      </div>

      <!-- 标头 (矩形) -->
      <div id="u819" class="ax_default label" data-label="标头">
        <div id="u819_div" class=""></div>
        <div id="u819_text" class="text ">
          <p><span style="text-decoration:none;">个人信息修改</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u820" class="ax_default heading_1">
        <div id="u820_div" class=""></div>
        <div id="u820_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u821" class="ax_default button cus">
        <div id="u821_div" class=""></div>
        <div id="u821_text" class="text ">
          <p><span style="text-decoration:none;">返回首页</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u822" class="ax_default text_field">
        <div id="u822_div" class=""></div>
        <input id="u822_input" type="password" value="" class="u822_input"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u823" class="ax_default label">
        <div id="u823_div" class=""></div>
        <div id="u823_text" class="text ">
          <p><span style="text-decoration:none;">原密码：</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u824" class="ax_default text_field">
        <div id="u824_div" class=""></div>
        <input id="u824_input" type="password" value="" class="u824_input"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u825" class="ax_default label">
        <div id="u825_div" class=""></div>
        <div id="u825_text" class="text ">
          <p><span style="text-decoration:none;">新密码：</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u826" class="ax_default text_field">
        <div id="u826_div" class=""></div>
        <input id="u826_input" type="password" value="" class="u826_input"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u827" class="ax_default label">
        <div id="u827_div" class=""></div>
        <div id="u827_text" class="text ">
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

            var oldpwd = $('#u822_input').val(),
                newpwd = $('#u824_input').val(),
                confirmpwd = $('#u826_input').val();
            //console.log(oldpwd + " " + newpwd + " " + confirmpwd);
            if (oldpwd == null || oldpwd == "") {
                $('#popInfo1').trigger('click');
                return;
            }
                
            if (newpwd == null || newpwd == "" || confirmpwd == null || confirmpwd == "") {
                $('#popInfo3').trigger('click');
                return;
            }

            if (newpwd != confirmpwd) {
                $('#popInfo4').trigger('click');
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
                url: "u_SelfInfo.aspx" + parms,
                type: "post",
                data: { "oldpwd": oldpwd, "newpwd": newpwd, "postTag": "changepwd" },
                dataType: "text",
                success: function (data) {
                    if (data == 1) {
                        $(window).attr('location', 'u_MainPage.aspx?uid=<%=uid%>&res=3');
                    }
                    else {
                        $('#popInfo2').trigger('click');
                        $('#u822_input').val('');
                        $('#u824_input').val('');
                        $('#u826_input').val('');
                    }
                }
            });
        }
    </script>

    <script desc="此脚本标签负责存放窗口提示信息集合">
        let back = {
            backWhole: null,
            animationTime: 600,
            init: function () {
                this.backWhole = document.querySelector("#backWhole")
            },
            show: function () {

                /**
                * 显示背景。
                */
                {
                    this.backWhole.style.display = "inline-block"
                    this.backWhole.classList.remove("back_hide")
                    this.backWhole.classList.add("back_show")
                }

            },
            hide: function () {

                {
                    this.backWhole.classList.remove("back_show")
                    this.backWhole.classList.add("back_hide")
                }

                let that = this
                let fun = function (that) {
                    that.backWhole.style.display = "none"
                }
                setTimeout(function () {
                    fun(that)
                }, this.animationTime)
            }
        }

        /**
        * 这段脚本存放着信息框的加载对象，信息框可以通过一个对象来直接加载。
        * @type {any[]}
        */
        let infoList = new Array()

        infoList[301] = {
            mainClass: "infoBox_img_error",
            head: "密码修改失败",
            content: "原密码不可以为空哦~",
            option: [{
                span: "确定",
                action: true,
                fun: function (data) {
                    infoBox.hideInfoBox(back.hide, null, back, null);
                    //window.location.reload();
                }
            },
            ]
        }
        infoList[302] = {
            mainClass: "infoBox_img_error",
            head: "密码修改失败",
            content: "请输入正确的原密码",
            option: [{
                span: "确定",
                action: true,
                fun: function (data) {
                    infoBox.hideInfoBox(back.hide, null, back, null);
                    //window.location.reload();
                }
            },
            ]
        }
        infoList[303] = {
            mainClass: "infoBox_img_error",
            head: "密码修改失败",
            content: "新密码和确认密码都不可以为空诶~",
            option: [{
                span: "确定",
                action: true,
                fun: function (data) {
                    infoBox.hideInfoBox(back.hide, null, back, null);
                    //window.location.reload();
                }
            },
            ]
        }
        infoList[304] = {
            mainClass: "infoBox_img_error",
            head: "密码修改失败",
            content: "两次输入的新密码不一致哦~",
            option: [{
                span: "确定",
                action: true,
                fun: function (data) {
                    infoBox.hideInfoBox(back.hide, null, back, null);
                    //window.location.reload();
                }
            },
            ]
        }
        /**
        * 获取一个信息对象。
        * @param infoData 需要给这个信息对象传入的数据对象，这个数据对象可以被信息框中的选项执行函数直接引用。
        * @param no  信息框对象的编号。
        * @returns {{data: *, info: *}}
        */
        function getInfoData(infoData, no) {
            let data = {
                data: infoData,
                info: infoList[no]
            }
            return data
        }
    </script>

    <script>
        function ff() {
            showInfoBox3(null, 301)
        }
        function ll() {
            showInfoBox3(null, 302)
        }
        function gg() {
            showInfoBox3(null, 303)
        }
        function hh() {
            showInfoBox3(null, 304)
        }

        function showInfoBox3(data, no) {
            if (infoBox.isShow == true) {

                infoBox.addTask(getInfoData(data, no), back.show, null, back, null, 200) //  600 - 400 = 200 ?  因为黑色背景的动画时间要比信息框长200毫秒 ， 如果不设置这个值 ， 队列中的任务会被过早的执行，导致异常。
                return
            }
            infoBox.loadInfoBox(getInfoData(data, no))
            infoBox.showInfoBox(back.show, null, null, null)
        }

        window.onload = function () {
            autoPostionService.init(true)
            infoBox.init("div")
            back.init()
        }
    </script> 
    </form>
</body>
</html>
