<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="u_OrderRoom.aspx.cs" EnableSessionState="False" Inherits="iRan.view.u_OrderRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>u_OrderRoom</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/u_orderroom/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/u_orderroom/data.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="files/daterangepicker.js"></script>    
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <script src="files/iRan.js"></script>
    <link href="files/custom.css" rel="stylesheet" />
    <script src="files/AutoAdjustPostion.js"></script>
    <link href="files/CommonPrompt.css" rel="stylesheet" />
    <script src="files/CommonPrompt.js"></script>
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
        //禁止滚动条        
    </script>
    <script>
        /**
* Minified by jsDelivr using Terser v3.14.1.
* Original file: /npm/daterangepicker@3.0.5/daterangepicker.js
* 
* Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
*/
        !function (t, e) {
            if ("function" == typeof define && define.amd) define(["moment", "jquery"], function (t, a) {
                return a.fn || (a.fn = {}), "function" != typeof t && t.default && (t = t.default), e(t, a)
            });
            else if ("object" == typeof module && module.exports) {
                var a = "undefined" != typeof window ? window.jQuery : void 0;
                a || (a = require("jquery")).fn || (a.fn = {});
                var i = "undefined" != typeof window && void 0 !== window.moment ? window.moment : require("moment");
                module.exports = e(i, a)
            } else t.daterangepicker = e(t.moment, t.jQuery)
        }(this, function (t, e) {
            var a = function (a, i, s) {
                if (this.parentEl = "body", this.element = e(a), this.startDate = t().startOf("day"), this.endDate = t().endOf("day"), this.minDate = !1, this.maxDate = !1, this.maxSpan = !1, this.autoApply = !1, this.singleDatePicker = !1, this.showDropdowns = !1, this.minYear = t().subtract(100, "year").format("YYYY"), this.maxYear = t().add(100, "year").format("YYYY"), this.showWeekNumbers = !1, this.showISOWeekNumbers = !1, this.showCustomRangeLabel = !0, this.timePicker = !1, this.timePicker24Hour = !1, this.timePickerIncrement = 1, this.timePickerSeconds = !1, this.linkedCalendars = !0, this.autoUpdateInput = !0, this.alwaysShowCalendars = !1, this.ranges = {}, this.opens = "right", this.element.hasClass("pull-right") && (this.opens = "left"), this.drops = "down", this.element.hasClass("dropup") && (this.drops = "up"), this.buttonClasses = "btn btn-sm", this.applyButtonClasses = "btn-primary", this.cancelButtonClasses = "btn-default", this.locale = {
                    direction: "ltr",
                    format: t.localeData().longDateFormat("L"),
                    separator: " - ",
                    applyLabel: "Apply",
                    cancelLabel: "Cancel",
                    weekLabel: "W",
                    customRangeLabel: "Custom Range",
                    daysOfWeek: t.weekdaysMin(),
                    monthNames: t.monthsShort(),
                    firstDay: t.localeData().firstDayOfWeek()
                }, this.callback = function () { }, this.isShowing = !1, this.leftCalendar = {}, this.rightCalendar = {}, "object" == typeof i && null !== i || (i = {}), "string" == typeof (i = e.extend(this.element.data(), i)).template || i.template instanceof e || (i.template = '<div class="daterangepicker"><div class="ranges"></div><div class="drp-calendar left"><div class="calendar-table"></div><div class="calendar-time"></div></div><div class="drp-calendar right"><div class="calendar-table"></div><div class="calendar-time"></div></div><div class="drp-buttons"><span class="drp-selected"></span><button class="cancelBtn" type="button"></button><button class="applyBtn" disabled="disabled" type="button"></button> </div></div>'), this.parentEl = i.parentEl && e(i.parentEl).length ? e(i.parentEl) : e(this.parentEl), this.container = e(i.template).appendTo(this.parentEl), "object" == typeof i.locale && ("string" == typeof i.locale.direction && (this.locale.direction = i.locale.direction), "string" == typeof i.locale.format && (this.locale.format = i.locale.format), "string" == typeof i.locale.separator && (this.locale.separator = i.locale.separator), "object" == typeof i.locale.daysOfWeek && (this.locale.daysOfWeek = i.locale.daysOfWeek.slice()), "object" == typeof i.locale.monthNames && (this.locale.monthNames = i.locale.monthNames.slice()), "number" == typeof i.locale.firstDay && (this.locale.firstDay = i.locale.firstDay), "string" == typeof i.locale.applyLabel && (this.locale.applyLabel = i.locale.applyLabel), "string" == typeof i.locale.cancelLabel && (this.locale.cancelLabel = i.locale.cancelLabel), "string" == typeof i.locale.weekLabel && (this.locale.weekLabel = i.locale.weekLabel), "string" == typeof i.locale.customRangeLabel)) {
                    (f = document.createElement("textarea")).innerHTML = i.locale.customRangeLabel;
                    var n = f.value;
                    this.locale.customRangeLabel = n
                }
                if (this.container.addClass(this.locale.direction), "string" == typeof i.startDate && (this.startDate = t(i.startDate, this.locale.format)), "string" == typeof i.endDate && (this.endDate = t(i.endDate, this.locale.format)), "string" == typeof i.minDate && (this.minDate = t(i.minDate, this.locale.format)), "string" == typeof i.maxDate && (this.maxDate = t(i.maxDate, this.locale.format)), "object" == typeof i.startDate && (this.startDate = t(i.startDate)), "object" == typeof i.endDate && (this.endDate = t(i.endDate)), "object" == typeof i.minDate && (this.minDate = t(i.minDate)), "object" == typeof i.maxDate && (this.maxDate = t(i.maxDate)), this.minDate && this.startDate.isBefore(this.minDate) && (this.startDate = this.minDate.clone()), this.maxDate && this.endDate.isAfter(this.maxDate) && (this.endDate = this.maxDate.clone()), "string" == typeof i.applyButtonClasses && (this.applyButtonClasses = i.applyButtonClasses), "string" == typeof i.applyClass && (this.applyButtonClasses = i.applyClass), "string" == typeof i.cancelButtonClasses && (this.cancelButtonClasses = i.cancelButtonClasses), "string" == typeof i.cancelClass && (this.cancelButtonClasses = i.cancelClass), "object" == typeof i.maxSpan && (this.maxSpan = i.maxSpan), "object" == typeof i.dateLimit && (this.maxSpan = i.dateLimit), "string" == typeof i.opens && (this.opens = i.opens), "string" == typeof i.drops && (this.drops = i.drops), "boolean" == typeof i.showWeekNumbers && (this.showWeekNumbers = i.showWeekNumbers), "boolean" == typeof i.showISOWeekNumbers && (this.showISOWeekNumbers = i.showISOWeekNumbers), "string" == typeof i.buttonClasses && (this.buttonClasses = i.buttonClasses), "object" == typeof i.buttonClasses && (this.buttonClasses = i.buttonClasses.join(" ")), "boolean" == typeof i.showDropdowns && (this.showDropdowns = i.showDropdowns), "number" == typeof i.minYear && (this.minYear = i.minYear), "number" == typeof i.maxYear && (this.maxYear = i.maxYear), "boolean" == typeof i.showCustomRangeLabel && (this.showCustomRangeLabel = i.showCustomRangeLabel), "boolean" == typeof i.singleDatePicker && (this.singleDatePicker = i.singleDatePicker, this.singleDatePicker && (this.endDate = this.startDate.clone())), "boolean" == typeof i.timePicker && (this.timePicker = i.timePicker), "boolean" == typeof i.timePickerSeconds && (this.timePickerSeconds = i.timePickerSeconds), "number" == typeof i.timePickerIncrement && (this.timePickerIncrement = i.timePickerIncrement), "boolean" == typeof i.timePicker24Hour && (this.timePicker24Hour = i.timePicker24Hour), "boolean" == typeof i.autoApply && (this.autoApply = i.autoApply), "boolean" == typeof i.autoUpdateInput && (this.autoUpdateInput = i.autoUpdateInput), "boolean" == typeof i.linkedCalendars && (this.linkedCalendars = i.linkedCalendars), "function" == typeof i.isInvalidDate && (this.isInvalidDate = i.isInvalidDate), "function" == typeof i.isCustomDate && (this.isCustomDate = i.isCustomDate), "boolean" == typeof i.alwaysShowCalendars && (this.alwaysShowCalendars = i.alwaysShowCalendars), 0 != this.locale.firstDay)
                    for (var r = this.locale.firstDay; r > 0;) this.locale.daysOfWeek.push(this.locale.daysOfWeek.shift()), r--;
                var o, l, h;
                if (void 0 === i.startDate && void 0 === i.endDate && e(this.element).is(":text")) {
                    var c = e(this.element).val(),
                        d = c.split(this.locale.separator);
                    o = l = null, 2 == d.length ? (o = t(d[0], this.locale.format), l = t(d[1], this.locale.format)) : this.singleDatePicker && "" !== c && (o = t(c, this.locale.format), l = t(c, this.locale.format)), null !== o && null !== l && (this.setStartDate(o), this.setEndDate(l))
                }
                if ("object" == typeof i.ranges) {
                    for (h in i.ranges) {
                        o = "string" == typeof i.ranges[h][0] ? t(i.ranges[h][0], this.locale.format) : t(i.ranges[h][0]), l = "string" == typeof i.ranges[h][1] ? t(i.ranges[h][1], this.locale.format) : t(i.ranges[h][1]), this.minDate && o.isBefore(this.minDate) && (o = this.minDate.clone());
                        var m = this.maxDate;
                        if (this.maxSpan && m && o.clone().add(this.maxSpan).isAfter(m) && (m = o.clone().add(this.maxSpan)), m && l.isAfter(m) && (l = m.clone()), !(this.minDate && l.isBefore(this.minDate, this.timepicker ? "minute" : "day") || m && o.isAfter(m, this.timepicker ? "minute" : "day"))) {
                            var f;
                            (f = document.createElement("textarea")).innerHTML = h;
                            n = f.value;
                            this.ranges[n] = [o, l]
                        }
                    }
                    var p = "<ul>";
                    for (h in this.ranges) p += '<li data-range-key="' + h + '">' + h + "</li>";
                    this.showCustomRangeLabel && (p += '<li data-range-key="' + this.locale.customRangeLabel + '">' + this.locale.customRangeLabel + "</li>"), p += "</ul>", this.container.find(".ranges").prepend(p)
                }
                "function" == typeof s && (this.callback = s), this.timePicker || (this.startDate = this.startDate.startOf("day"), this.endDate = this.endDate.endOf("day"), this.container.find(".calendar-time").hide()), this.timePicker && this.autoApply && (this.autoApply = !1), this.autoApply && this.container.addClass("auto-apply"), "object" == typeof i.ranges && this.container.addClass("show-ranges"), this.singleDatePicker && (this.container.addClass("single"), this.container.find(".drp-calendar.left").addClass("single"), this.container.find(".drp-calendar.left").show(), this.container.find(".drp-calendar.right").hide(), this.timePicker || this.container.addClass("auto-apply")), (void 0 === i.ranges && !this.singleDatePicker || this.alwaysShowCalendars) && this.container.addClass("show-calendar"), this.container.addClass("opens" + this.opens), this.container.find(".applyBtn, .cancelBtn").addClass(this.buttonClasses), this.applyButtonClasses.length && this.container.find(".applyBtn").addClass(this.applyButtonClasses), this.cancelButtonClasses.length && this.container.find(".cancelBtn").addClass(this.cancelButtonClasses), this.container.find(".applyBtn").html(this.locale.applyLabel), this.container.find(".cancelBtn").html(this.locale.cancelLabel), this.container.find(".drp-calendar").on("click.daterangepicker", ".prev", e.proxy(this.clickPrev, this)).on("click.daterangepicker", ".next", e.proxy(this.clickNext, this)).on("mousedown.daterangepicker", "td.available", e.proxy(this.clickDate, this)).on("mouseenter.daterangepicker", "td.available", e.proxy(this.hoverDate, this)).on("change.daterangepicker", "select.yearselect", e.proxy(this.monthOrYearChanged, this)).on("change.daterangepicker", "select.monthselect", e.proxy(this.monthOrYearChanged, this)).on("change.daterangepicker", "select.hourselect,select.minuteselect,select.secondselect,select.ampmselect", e.proxy(this.timeChanged, this)), this.container.find(".ranges").on("click.daterangepicker", "li", e.proxy(this.clickRange, this)), this.container.find(".drp-buttons").on("click.daterangepicker", "button.applyBtn", e.proxy(this.clickApply, this)).on("click.daterangepicker", "button.cancelBtn", e.proxy(this.clickCancel, this)), this.element.is("input") || this.element.is("button") ? this.element.on({
                    "click.daterangepicker": e.proxy(this.show, this),
                    "focus.daterangepicker": e.proxy(this.show, this),
                    "keyup.daterangepicker": e.proxy(this.elementChanged, this),
                    "keydown.daterangepicker": e.proxy(this.keydown, this)
                }) : (this.element.on("click.daterangepicker", e.proxy(this.toggle, this)), this.element.on("keydown.daterangepicker", e.proxy(this.toggle, this))), this.updateElement()
            };
            return a.prototype = {
                constructor: a,
                setStartDate: function (e) {
                    "string" == typeof e && (this.startDate = t(e, this.locale.format)), "object" == typeof e && (this.startDate = t(e)), this.timePicker || (this.startDate = this.startDate.startOf("day")), this.timePicker && this.timePickerIncrement && this.startDate.minute(Math.round(this.startDate.minute() / this.timePickerIncrement) * this.timePickerIncrement), this.minDate && this.startDate.isBefore(this.minDate) && (this.startDate = this.minDate.clone(), this.timePicker && this.timePickerIncrement && this.startDate.minute(Math.round(this.startDate.minute() / this.timePickerIncrement) * this.timePickerIncrement)), this.maxDate && this.startDate.isAfter(this.maxDate) && (this.startDate = this.maxDate.clone(), this.timePicker && this.timePickerIncrement && this.startDate.minute(Math.floor(this.startDate.minute() / this.timePickerIncrement) * this.timePickerIncrement)), this.isShowing || this.updateElement(), this.updateMonthsInView()
                },
                setEndDate: function (e) {
                    "string" == typeof e && (this.endDate = t(e, this.locale.format)), "object" == typeof e && (this.endDate = t(e)), this.timePicker || (this.endDate = this.endDate.endOf("day")), this.timePicker && this.timePickerIncrement && this.endDate.minute(Math.round(this.endDate.minute() / this.timePickerIncrement) * this.timePickerIncrement), this.endDate.isBefore(this.startDate) && (this.endDate = this.startDate.clone()), this.maxDate && this.endDate.isAfter(this.maxDate) && (this.endDate = this.maxDate.clone()), this.maxSpan && this.startDate.clone().add(this.maxSpan).isBefore(this.endDate) && (this.endDate = this.startDate.clone().add(this.maxSpan)), this.previousRightTime = this.endDate.clone(), this.container.find(".drp-selected").html(this.startDate.format(this.locale.format) + this.locale.separator + this.endDate.format(this.locale.format)), this.isShowing || this.updateElement(), this.updateMonthsInView()
                },
                isInvalidDate: function () {
                    return !1
                },
                isCustomDate: function () {
                    return !1
                },
                updateView: function () {
                    this.timePicker && (this.renderTimePicker("left"), this.renderTimePicker("right"), this.endDate ? this.container.find(".right .calendar-time select").removeAttr("disabled").removeClass("disabled") : this.container.find(".right .calendar-time select").attr("disabled", "disabled").addClass("disabled")), this.endDate && this.container.find(".drp-selected").html(this.startDate.format(this.locale.format) + this.locale.separator + this.endDate.format(this.locale.format)), this.updateMonthsInView(), this.updateCalendars(), this.updateFormInputs()
                },
                updateMonthsInView: function () {
                    if (this.endDate) {
                        if (!this.singleDatePicker && this.leftCalendar.month && this.rightCalendar.month && (this.startDate.format("YYYY-MM") == this.leftCalendar.month.format("YYYY-MM") || this.startDate.format("YYYY-MM") == this.rightCalendar.month.format("YYYY-MM")) && (this.endDate.format("YYYY-MM") == this.leftCalendar.month.format("YYYY-MM") || this.endDate.format("YYYY-MM") == this.rightCalendar.month.format("YYYY-MM"))) return;
                        this.leftCalendar.month = this.startDate.clone().date(2), this.linkedCalendars || this.endDate.month() == this.startDate.month() && this.endDate.year() == this.startDate.year() ? this.rightCalendar.month = this.startDate.clone().date(2).add(1, "month") : this.rightCalendar.month = this.endDate.clone().date(2)
                    } else this.leftCalendar.month.format("YYYY-MM") != this.startDate.format("YYYY-MM") && this.rightCalendar.month.format("YYYY-MM") != this.startDate.format("YYYY-MM") && (this.leftCalendar.month = this.startDate.clone().date(2), this.rightCalendar.month = this.startDate.clone().date(2).add(1, "month"));
                    this.maxDate && this.linkedCalendars && !this.singleDatePicker && this.rightCalendar.month > this.maxDate && (this.rightCalendar.month = this.maxDate.clone().date(2), this.leftCalendar.month = this.maxDate.clone().date(2).subtract(1, "month"))
                },
                updateCalendars: function () {
                    if (this.timePicker) {
                        var t, e, a, i;
                        if (this.endDate) {
                            if (t = parseInt(this.container.find(".left .hourselect").val(), 10), e = parseInt(this.container.find(".left .minuteselect").val(), 10), isNaN(e) && (e = parseInt(this.container.find(".left .minuteselect option:last").val(), 10)), a = this.timePickerSeconds ? parseInt(this.container.find(".left .secondselect").val(), 10) : 0, !this.timePicker24Hour) "PM" === (i = this.container.find(".left .ampmselect").val()) && t < 12 && (t += 12), "AM" === i && 12 === t && (t = 0)
                        } else if (t = parseInt(this.container.find(".right .hourselect").val(), 10), e = parseInt(this.container.find(".right .minuteselect").val(), 10), isNaN(e) && (e = parseInt(this.container.find(".right .minuteselect option:last").val(), 10)), a = this.timePickerSeconds ? parseInt(this.container.find(".right .secondselect").val(), 10) : 0, !this.timePicker24Hour) "PM" === (i = this.container.find(".right .ampmselect").val()) && t < 12 && (t += 12), "AM" === i && 12 === t && (t = 0);
                        this.leftCalendar.month.hour(t).minute(e).second(a), this.rightCalendar.month.hour(t).minute(e).second(a)
                    }
                    this.renderCalendar("left"), this.renderCalendar("right"), this.container.find(".ranges li").removeClass("active"), null != this.endDate && this.calculateChosenLabel()
                },
                renderCalendar: function (a) {
                    var i, s = (i = "left" == a ? this.leftCalendar : this.rightCalendar).month.month(),
                        n = i.month.year(),
                        r = i.month.hour(),
                        o = i.month.minute(),
                        l = i.month.second(),
                        h = t([n, s]).daysInMonth(),
                        c = t([n, s, 1]),
                        d = t([n, s, h]),
                        m = t(c).subtract(1, "month").month(),
                        f = t(c).subtract(1, "month").year(),
                        p = t([f, m]).daysInMonth(),
                        u = c.day();
                    (i = []).firstDay = c, i.lastDay = d;
                    for (var D = 0; D < 6; D++) i[D] = [];
                    var g = p - u + this.locale.firstDay + 1;
                    g > p && (g -= 7), u == this.locale.firstDay && (g = p - 6);
                    for (var y = t([f, m, g, 12, o, l]), k = (D = 0, 0), b = 0; D < 42; D++, k++, y = t(y).add(24, "hour")) D > 0 && k % 7 == 0 && (k = 0, b++), i[b][k] = y.clone().hour(r).minute(o).second(l), y.hour(12), this.minDate && i[b][k].format("YYYY-MM-DD") == this.minDate.format("YYYY-MM-DD") && i[b][k].isBefore(this.minDate) && "left" == a && (i[b][k] = this.minDate.clone()), this.maxDate && i[b][k].format("YYYY-MM-DD") == this.maxDate.format("YYYY-MM-DD") && i[b][k].isAfter(this.maxDate) && "right" == a && (i[b][k] = this.maxDate.clone());
                    "left" == a ? this.leftCalendar.calendar = i : this.rightCalendar.calendar = i;
                    var v = "left" == a ? this.minDate : this.startDate,
                        C = this.maxDate,
                        Y = ("left" == a ? this.startDate : this.endDate, this.locale.direction, '<table class="table-condensed">');
                    Y += "<thead>", Y += "<tr>", (this.showWeekNumbers || this.showISOWeekNumbers) && (Y += "<th></th>"), v && !v.isBefore(i.firstDay) || this.linkedCalendars && "left" != a ? Y += "<th></th>" : Y += '<th class="prev available"><span></span></th>';
                    var w = this.locale.monthNames[i[1][1].month()] + i[1][1].format(" YYYY");
                    if (this.showDropdowns) {
                        for (var P = i[1][1].month(), x = i[1][1].year(), M = C && C.year() || this.maxYear, I = v && v.year() || this.minYear, S = x == I, B = x == M, A = '<select class="monthselect">', L = 0; L < 12; L++)(!S || v && L >= v.month()) && (!B || C && L <= C.month()) ? A += "<option value='" + L + "'" + (L === P ? " selected='selected'" : "") + ">" + this.locale.monthNames[L] + "</option>" : A += "<option value='" + L + "'" + (L === P ? " selected='selected'" : "") + " disabled='disabled'>" + this.locale.monthNames[L] + "</option>";
                        A += "</select>";
                        for (var N = '<select class="yearselect">', E = I; E <= M; E++) N += '<option value="' + E + '"' + (E === x ? ' selected="selected"' : "") + ">" + E + "</option>";
                        w = A + (N += "</select>")
                    }
                    if (Y += '<th colspan="5" class="month">' + w + "</th>", C && !C.isAfter(i.lastDay) || this.linkedCalendars && "right" != a && !this.singleDatePicker ? Y += "<th></th>" : Y += '<th class="next available"><span></span></th>', Y += "</tr>", Y += "<tr>", (this.showWeekNumbers || this.showISOWeekNumbers) && (Y += '<th class="week">' + this.locale.weekLabel + "</th>"), e.each(this.locale.daysOfWeek, function (t, e) {
                        Y += "<th>" + e + "</th>"
                    }), Y += "</tr>", Y += "</thead>", Y += "<tbody>", null == this.endDate && this.maxSpan) {
                        var W = this.startDate.clone().add(this.maxSpan).endOf("day");
                        C && !W.isBefore(C) || (C = W)
                    }
                    for (b = 0; b < 6; b++) {
                        Y += "<tr>", this.showWeekNumbers ? Y += '<td class="week">' + i[b][0].week() + "</td>" : this.showISOWeekNumbers && (Y += '<td class="week">' + i[b][0].isoWeek() + "</td>");
                        for (k = 0; k < 7; k++) {
                            var O = [];
                            i[b][k].isSame(new Date, "day") && O.push("today"), i[b][k].isoWeekday() > 5 && O.push("weekend"), i[b][k].month() != i[1][1].month() && O.push("off", "ends"), this.minDate && i[b][k].isBefore(this.minDate, "day") && O.push("off", "disabled"), C && i[b][k].isAfter(C, "day") && O.push("off", "disabled"), this.isInvalidDate(i[b][k]) && O.push("off", "disabled"), i[b][k].format("YYYY-MM-DD") == this.startDate.format("YYYY-MM-DD") && O.push("active", "start-date"), null != this.endDate && i[b][k].format("YYYY-MM-DD") == this.endDate.format("YYYY-MM-DD") && O.push("active", "end-date"), null != this.endDate && i[b][k] > this.startDate && i[b][k] < this.endDate && O.push("in-range");
                            var H = this.isCustomDate(i[b][k]);
                            !1 !== H && ("string" == typeof H ? O.push(H) : Array.prototype.push.apply(O, H));
                            var j = "",
                                R = !1;
                            for (D = 0; D < O.length; D++) j += O[D] + " ", "disabled" == O[D] && (R = !0);
                            R || (j += "available"), Y += '<td class="' + j.replace(/^\s+|\s+$/g, "") + '" data-title="r' + b + "c" + k + '">' + i[b][k].date() + "</td>"
                        }
                        Y += "</tr>"
                    }
                    Y += "</tbody>", Y += "</table>", this.container.find(".drp-calendar." + a + " .calendar-table").html(Y)
                },
                renderTimePicker: function (t) {
                    if ("right" != t || this.endDate) {
                        var e, a, i, s = this.maxDate;
                        if (!this.maxSpan || this.maxDate && !this.startDate.clone().add(this.maxSpan).isBefore(this.maxDate) || (s = this.startDate.clone().add(this.maxSpan)), "left" == t) a = this.startDate.clone(), i = this.minDate;
                        else if ("right" == t) {
                            a = this.endDate.clone(), i = this.startDate;
                            var n = this.container.find(".drp-calendar.right .calendar-time");
                            if ("" != n.html() && (a.hour(isNaN(a.hour()) ? n.find(".hourselect option:selected").val() : a.hour()), a.minute(isNaN(a.minute()) ? n.find(".minuteselect option:selected").val() : a.minute()), a.second(isNaN(a.second()) ? n.find(".secondselect option:selected").val() : a.second()), !this.timePicker24Hour)) {
                                var r = n.find(".ampmselect option:selected").val();
                                "PM" === r && a.hour() < 12 && a.hour(a.hour() + 12), "AM" === r && 12 === a.hour() && a.hour(0)
                            }
                            a.isBefore(this.startDate) && (a = this.startDate.clone()), s && a.isAfter(s) && (a = s.clone())
                        }
                        e = '<select class="hourselect">';
                        for (var o = this.timePicker24Hour ? 0 : 1, l = this.timePicker24Hour ? 23 : 12, h = o; h <= l; h++) {
                            var c = h;
                            this.timePicker24Hour || (c = a.hour() >= 12 ? 12 == h ? 12 : h + 12 : 12 == h ? 0 : h);
                            var d = a.clone().hour(c),
                                m = !1;
                            i && d.minute(59).isBefore(i) && (m = !0), s && d.minute(0).isAfter(s) && (m = !0), c != a.hour() || m ? e += m ? '<option value="' + h + '" disabled="disabled" class="disabled">' + h + "</option>" : '<option value="' + h + '">' + h + "</option>" : e += '<option value="' + h + '" selected="selected">' + h + "</option>"
                        }
                        e += "</select> ", e += ': <select class="minuteselect">';
                        for (h = 0; h < 60; h += this.timePickerIncrement) {
                            var f = h < 10 ? "0" + h : h;
                            d = a.clone().minute(h), m = !1;
                            i && d.second(59).isBefore(i) && (m = !0), s && d.second(0).isAfter(s) && (m = !0), a.minute() != h || m ? e += m ? '<option value="' + h + '" disabled="disabled" class="disabled">' + f + "</option>" : '<option value="' + h + '">' + f + "</option>" : e += '<option value="' + h + '" selected="selected">' + f + "</option>"
                        }
                        if (e += "</select> ", this.timePickerSeconds) {
                            e += ': <select class="secondselect">';
                            for (h = 0; h < 60; h++) {
                                f = h < 10 ? "0" + h : h, d = a.clone().second(h), m = !1;
                                i && d.isBefore(i) && (m = !0), s && d.isAfter(s) && (m = !0), a.second() != h || m ? e += m ? '<option value="' + h + '" disabled="disabled" class="disabled">' + f + "</option>" : '<option value="' + h + '">' + f + "</option>" : e += '<option value="' + h + '" selected="selected">' + f + "</option>"
                            }
                            e += "</select> "
                        }
                        if (!this.timePicker24Hour) {
                            e += '<select class="ampmselect">';
                            var p = "",
                                u = "";
                            i && a.clone().hour(12).minute(0).second(0).isBefore(i) && (p = ' disabled="disabled" class="disabled"'), s && a.clone().hour(0).minute(0).second(0).isAfter(s) && (u = ' disabled="disabled" class="disabled"'), a.hour() >= 12 ? e += '<option value="AM"' + p + '>AM</option><option value="PM" selected="selected"' + u + ">PM</option>" : e += '<option value="AM" selected="selected"' + p + '>AM</option><option value="PM"' + u + ">PM</option>", e += "</select>"
                        }
                        this.container.find(".drp-calendar." + t + " .calendar-time").html(e)
                    }
                },
                updateFormInputs: function () {
                    this.singleDatePicker || this.endDate && (this.startDate.isBefore(this.endDate) || this.startDate.isSame(this.endDate)) ? this.container.find("button.applyBtn").removeAttr("disabled") : this.container.find("button.applyBtn").attr("disabled", "disabled")
                },
                move: function () {
                    var t, a = {
                        top: 0,
                        left: 0
                    },
                        i = e(window).width();
                    this.parentEl.is("body") || (a = {
                        top: this.parentEl.offset().top - this.parentEl.scrollTop(),
                        left: this.parentEl.offset().left - this.parentEl.scrollLeft()
                    }, i = this.parentEl[0].clientWidth + this.parentEl.offset().left), t = "up" == this.drops ? this.element.offset().top - this.container.outerHeight() - a.top : this.element.offset().top + this.element.outerHeight() - a.top, this.container.css({
                        top: 0,
                        left: 0,
                        right: "auto"
                    });
                    var s = this.container.outerWidth();
                    if (this.container["up" == this.drops ? "addClass" : "removeClass"]("drop-up"), "left" == this.opens) {
                        var n = i - this.element.offset().left - this.element.outerWidth();
                        s + n > e(window).width() ? this.container.css({
                            top: t,
                            right: "auto",
                            left: 9
                        }) : this.container.css({
                            top: t,
                            right: n,
                            left: "auto"
                        })
                    } else if ("center" == this.opens) {
                        (r = this.element.offset().left - a.left + this.element.outerWidth() / 2 - s / 2) < 0 ? this.container.css({
                            top: t,
                            right: "auto",
                            left: 9
                        }) : r + s > e(window).width() ? this.container.css({
                            top: t,
                            left: "auto",
                            right: 0
                        }) : this.container.css({
                            top: t,
                            left: r,
                            right: "auto"
                        })
                    } else {
                        var r;
                        (r = this.element.offset().left - a.left) + s > e(window).width() ? this.container.css({
                            top: t,
                            left: "auto",
                            right: 0
                        }) : this.container.css({
                            top: t,
                            left: r,
                            right: "auto"
                        })
                    }
                },
                show: function (t) {
                    this.isShowing || (this._outsideClickProxy = e.proxy(function (t) {
                        this.outsideClick(t)
                    }, this), e(document).on("mousedown.daterangepicker", this._outsideClickProxy).on("touchend.daterangepicker", this._outsideClickProxy).on("click.daterangepicker", "[data-toggle=dropdown]", this._outsideClickProxy).on("focusin.daterangepicker", this._outsideClickProxy), e(window).on("resize.daterangepicker", e.proxy(function (t) {
                        this.move(t)
                    }, this)), this.oldStartDate = this.startDate.clone(), this.oldEndDate = this.endDate.clone(), this.previousRightTime = this.endDate.clone(), this.updateView(), this.container.show(), this.move(), this.element.trigger("show.daterangepicker", this), this.isShowing = !0)
                },
                hide: function (t) {
                    this.isShowing && (this.endDate || (this.startDate = this.oldStartDate.clone(), this.endDate = this.oldEndDate.clone()), this.startDate.isSame(this.oldStartDate) && this.endDate.isSame(this.oldEndDate) || this.callback(this.startDate.clone(), this.endDate.clone(), this.chosenLabel), this.updateElement(), e(document).off(".daterangepicker"), e(window).off(".daterangepicker"), this.container.hide(), this.element.trigger("hide.daterangepicker", this), this.isShowing = !1)
                },
                toggle: function (t) {
                    this.isShowing ? this.hide() : this.show()
                },
                outsideClick: function (t) {
                    var a = e(t.target);
                    "focusin" == t.type || a.closest(this.element).length || a.closest(this.container).length || a.closest(".calendar-table").length || (this.hide(), this.element.trigger("outsideClick.daterangepicker", this))
                },
                showCalendars: function () {
                    this.container.addClass("show-calendar"), this.move(), this.element.trigger("showCalendar.daterangepicker", this)
                },
                hideCalendars: function () {
                    this.container.removeClass("show-calendar"), this.element.trigger("hideCalendar.daterangepicker", this)
                },
                clickRange: function (t) {
                    var e = t.target.getAttribute("data-range-key");
                    if (this.chosenLabel = e, e == this.locale.customRangeLabel) this.showCalendars();
                    else {
                        var a = this.ranges[e];
                        this.startDate = a[0], this.endDate = a[1], this.timePicker || (this.startDate.startOf("day"), this.endDate.endOf("day")), this.alwaysShowCalendars || this.hideCalendars(), this.clickApply()
                    }
                },
                clickPrev: function (t) {
                    e(t.target).parents(".drp-calendar").hasClass("left") ? (this.leftCalendar.month.subtract(1, "month"), this.linkedCalendars && this.rightCalendar.month.subtract(1, "month")) : this.rightCalendar.month.subtract(1, "month"), this.updateCalendars()
                },
                clickNext: function (t) {
                    e(t.target).parents(".drp-calendar").hasClass("left") ? this.leftCalendar.month.add(1, "month") : (this.rightCalendar.month.add(1, "month"), this.linkedCalendars && this.leftCalendar.month.add(1, "month")), this.updateCalendars()
                },
                hoverDate: function (t) {
                    if (e(t.target).hasClass("available")) {
                        var a = e(t.target).attr("data-title"),
                            i = a.substr(1, 1),
                            s = a.substr(3, 1),
                            n = e(t.target).parents(".drp-calendar").hasClass("left") ? this.leftCalendar.calendar[i][s] : this.rightCalendar.calendar[i][s],
                            r = this.leftCalendar,
                            o = this.rightCalendar,
                            l = this.startDate;
                        this.endDate || this.container.find(".drp-calendar tbody td").each(function (t, a) {
                            if (!e(a).hasClass("week")) {
                                var i = e(a).attr("data-title"),
                                    s = i.substr(1, 1),
                                    h = i.substr(3, 1),
                                    c = e(a).parents(".drp-calendar").hasClass("left") ? r.calendar[s][h] : o.calendar[s][h];
                                c.isAfter(l) && c.isBefore(n) || c.isSame(n, "day") ? e(a).addClass("in-range") : e(a).removeClass("in-range")
                            }
                        })
                    }
                },
                clickDate: function (t) {
                    if (e(t.target).hasClass("available")) {
                        var a = e(t.target).attr("data-title"),
                            i = a.substr(1, 1),
                            s = a.substr(3, 1),
                            n = e(t.target).parents(".drp-calendar").hasClass("left") ? this.leftCalendar.calendar[i][s] : this.rightCalendar.calendar[i][s];
                        if (this.endDate || n.isBefore(this.startDate, "day")) {
                            if (this.timePicker) {
                                var r = parseInt(this.container.find(".left .hourselect").val(), 10);
                                if (!this.timePicker24Hour) "PM" === (h = this.container.find(".left .ampmselect").val()) && r < 12 && (r += 12), "AM" === h && 12 === r && (r = 0);
                                var o = parseInt(this.container.find(".left .minuteselect").val(), 10);
                                isNaN(o) && (o = parseInt(this.container.find(".left .minuteselect option:last").val(), 10));
                                var l = this.timePickerSeconds ? parseInt(this.container.find(".left .secondselect").val(), 10) : 0;
                                n = n.clone().hour(r).minute(o).second(l)
                            }
                            this.endDate = null, this.setStartDate(n.clone())
                        } else if (!this.endDate && n.isBefore(this.startDate)) this.setEndDate(this.startDate.clone());
                        else {
                            if (this.timePicker) {
                                var h;
                                r = parseInt(this.container.find(".right .hourselect").val(), 10);
                                if (!this.timePicker24Hour) "PM" === (h = this.container.find(".right .ampmselect").val()) && r < 12 && (r += 12), "AM" === h && 12 === r && (r = 0);
                                o = parseInt(this.container.find(".right .minuteselect").val(), 10);
                                isNaN(o) && (o = parseInt(this.container.find(".right .minuteselect option:last").val(), 10));
                                l = this.timePickerSeconds ? parseInt(this.container.find(".right .secondselect").val(), 10) : 0;
                                n = n.clone().hour(r).minute(o).second(l)
                            }
                            this.setEndDate(n.clone()), this.autoApply && (this.calculateChosenLabel(), this.clickApply())
                        }
                        this.singleDatePicker && (this.setEndDate(this.startDate), this.timePicker || this.clickApply()), this.updateView(), t.stopPropagation()
                    }


                    var clickYearMonth = t.delegateTarget.children[0].children[0].children[0].children[0].children[1].innerHTML,
                        clickMonth,
                        clickYear = clickYearMonth.substring(7, 3);
                    var monthStr = $('.active:not(.ends)').parent().parent().siblings().find('.month').html();
                    monthStr = monthStr.length == 7 ? monthStr.substring(1, 0) : monthStr.substring(2, 0);
                    clickMonth = monthStr;
                    //console.log(clickYear);
                    //var testDate = new Date("2020/05/03");

                    //var tagDays = new Date(testDate.getTime() - (7 - 2) * (1000 * 24 * 60 * 60));
                    //console.log(tagDays);
                    //var clickdate = new Date(clickYear, clickMonth - 1, t.currentTarget.innerHTML);			
                    //console.log(monthStr);
                    //console.log(offDateTimeList);
                    for (var m = 0; m < offDateTimeList.ckDateTime.length; m++) {
                        ckdate = new Date(offDateTimeList.ckDateTime[m]);
                        ckYear = ckdate.getFullYear();
                        ckMonth = ckdate.getMonth() + 1;
                        ckDay = ckdate.getDate();
                        offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                        ckdays = offDateTimeList.ckDays[m];
                        offClickDays(offdate, ckdays, $('.active').html(), clickMonth, clickYear);

                    }
                    //offClickDays("2020/04/27", 5, $('.active').html(), clickMonth, clickYear);

                },
                calculateChosenLabel: function () {
                    var t = !0,
                        e = 0;
                    for (var a in this.ranges) {
                        if (this.timePicker) {
                            var i = this.timePickerSeconds ? "YYYY-MM-DD HH:mm:ss" : "YYYY-MM-DD HH:mm";
                            if (this.startDate.format(i) == this.ranges[a][0].format(i) && this.endDate.format(i) == this.ranges[a][1].format(i)) {
                                t = !1, this.chosenLabel = this.container.find(".ranges li:eq(" + e + ")").addClass("active").attr("data-range-key");
                                break
                            }
                        } else if (this.startDate.format("YYYY-MM-DD") == this.ranges[a][0].format("YYYY-MM-DD") && this.endDate.format("YYYY-MM-DD") == this.ranges[a][1].format("YYYY-MM-DD")) {
                            t = !1, this.chosenLabel = this.container.find(".ranges li:eq(" + e + ")").addClass("active").attr("data-range-key");
                            break
                        }
                        e++
                    }
                    t && (this.showCustomRangeLabel ? this.chosenLabel = this.container.find(".ranges li:last").addClass("active").attr("data-range-key") : this.chosenLabel = null, this.showCalendars())
                },
                clickApply: function (t) {
                    this.hide(), this.element.trigger("apply.daterangepicker", this)
                },
                clickCancel: function (t) {
                    this.startDate = this.oldStartDate, this.endDate = this.oldEndDate, this.hide(), this.element.trigger("cancel.daterangepicker", this)
                },
                monthOrYearChanged: function (t) {
                    var a = e(t.target).closest(".drp-calendar").hasClass("left"),
                        i = a ? "left" : "right",
                        s = this.container.find(".drp-calendar." + i),
                        n = parseInt(s.find(".monthselect").val(), 10),
                        r = s.find(".yearselect").val();
                    a || (r < this.startDate.year() || r == this.startDate.year() && n < this.startDate.month()) && (n = this.startDate.month(), r = this.startDate.year()), this.minDate && (r < this.minDate.year() || r == this.minDate.year() && n < this.minDate.month()) && (n = this.minDate.month(), r = this.minDate.year()), this.maxDate && (r > this.maxDate.year() || r == this.maxDate.year() && n > this.maxDate.month()) && (n = this.maxDate.month(), r = this.maxDate.year()), a ? (this.leftCalendar.month.month(n).year(r), this.linkedCalendars && (this.rightCalendar.month = this.leftCalendar.month.clone().add(1, "month"))) : (this.rightCalendar.month.month(n).year(r), this.linkedCalendars && (this.leftCalendar.month = this.rightCalendar.month.clone().subtract(1, "month"))), this.updateCalendars()
                },
                timeChanged: function (t) {
                    var a = e(t.target).closest(".drp-calendar"),
                        i = a.hasClass("left"),
                        s = parseInt(a.find(".hourselect").val(), 10),
                        n = parseInt(a.find(".minuteselect").val(), 10);
                    isNaN(n) && (n = parseInt(a.find(".minuteselect option:last").val(), 10));
                    var r = this.timePickerSeconds ? parseInt(a.find(".secondselect").val(), 10) : 0;
                    if (!this.timePicker24Hour) {
                        var o = a.find(".ampmselect").val();
                        "PM" === o && s < 12 && (s += 12), "AM" === o && 12 === s && (s = 0)
                    }
                    if (i) {
                        var l = this.startDate.clone();
                        l.hour(s), l.minute(n), l.second(r), this.setStartDate(l), this.singleDatePicker ? this.endDate = this.startDate.clone() : this.endDate && this.endDate.format("YYYY-MM-DD") == l.format("YYYY-MM-DD") && this.endDate.isBefore(l) && this.setEndDate(l.clone())
                    } else if (this.endDate) {
                        var h = this.endDate.clone();
                        h.hour(s), h.minute(n), h.second(r), this.setEndDate(h)
                    }
                    this.updateCalendars(), this.updateFormInputs(), this.renderTimePicker("left"), this.renderTimePicker("right")
                },
                elementChanged: function () {
                    if (this.element.is("input") && this.element.val().length) {
                        var e = this.element.val().split(this.locale.separator),
                            a = null,
                            i = null;
                        2 === e.length && (a = t(e[0], this.locale.format), i = t(e[1], this.locale.format)), (this.singleDatePicker || null === a || null === i) && (i = a = t(this.element.val(), this.locale.format)), a.isValid() && i.isValid() && (this.setStartDate(a), this.setEndDate(i), this.updateView())
                    }
                },
                keydown: function (t) {
                    9 !== t.keyCode && 13 !== t.keyCode || this.hide(), 27 === t.keyCode && (t.preventDefault(), t.stopPropagation(), this.hide())
                },
                updateElement: function () {
                    if (this.element.is("input") && this.autoUpdateInput) {
                        var t = this.startDate.format(this.locale.format);
                        this.singleDatePicker || (t += this.locale.separator + this.endDate.format(this.locale.format)), t !== this.element.val() && this.element.val(t).trigger("change")
                    }
                },
                remove: function () {
                    this.container.remove(), this.element.off(".daterangepicker"), this.element.removeData()
                }
            }, e.fn.daterangepicker = function (t, i) {
                var s = e.extend(!0, {}, e.fn.daterangepicker.defaultOptions, t);
                return this.each(function () {
                    var t = e(this);
                    t.data("daterangepicker") && t.data("daterangepicker").remove(), t.data("daterangepicker", new a(t, s, i))
                }), this
            }, a
        });
        //# sourceMappingURL=/sm/3a884fe0bdb97cb3a94b410e67cf38fdc248890d5581232077b3e6241e25cd21.map
        function offClickDays(selectedDate, selectDays, clickDay, clickMonth, clickYear) {
            //console.log('点击后禁用');
            //console.log(selectedDate + '-' + selectDays);
            var maxDayCount, todayIndex;
            var leftMonth, rightMonth, offLeftMonth, offRightMonth, offLeftDay, offRightDay, offLeftYear, offRightYear;

            var offLeftDate = selectedDate;
            var endSelectDate = new Date(selectedDate.replace("-", "/"));
            endSelectDate.setDate((endSelectDate.getDate() - 1) + selectDays);
            var offRightDate;
            if ((endSelectDate.getMonth() + 1) < 10) {
                offRightDate = endSelectDate.getFullYear() + '/' + ('0' + (endSelectDate.getMonth() + 1)) + "/" + endSelectDate.getDate();
            } else
                offRightDate = endSelectDate.getFullYear() + '/' + (endSelectDate.getMonth() + 1) + "/" + endSelectDate.getDate();

            //console.log(offLeftDate + ' ' + offRightDate);
            // 当前时间选择器左右两边的月份
            leftMonth = Number($('.table-condensed').find('.month').eq(0).html().substring(1, 0));
            rightMonth = Number($('.table-condensed').find('.month').eq(1).html().substring(1, 0));
            // 已经预定过该房间的时间段的开始结束年份
            offLeftYear = Number(offLeftDate.substring(4, 0));
            offRightYear = Number(offRightDate.substring(4, 0));
            // 已经预定过该房间的时间段的开始结束月份
            offLeftMonth = Number(offLeftDate.substring(7, 5));
            offRightMonth = Number(offRightDate.substring(7, 5));
            // 已经预定过该房间的时间段的开始结束天
            offLeftDay = Number(offLeftDate.substring(10, 8));
            offRightDay = Number(offRightDate.substring(10, 8));
            // 某一个月的最大天数
            maxDayCount = new Date(offLeftYear, offLeftMonth, 0).getDate();
            //console.log(leftMonth + " " + offLeftMonth);
            //console.log(rightMonth + " " + offRightMonth);
            // 从今天以后才开始禁用
            todayIndex = $('.today').parent().index($('.today').parent()[1]);
            //console.log($('.today').parent().index($('.today').parent()[1]));
            // 以下是全部日期在左边日历
            if (offLeftMonth == leftMonth && offRightMonth == leftMonth) {
                //console.log('case2 ' + offLeftDay + ' ' + offRightDay);
                //console.log('---左边禁用---');
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');
                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {
                            //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            if (leftTbody.eq(b).find('td').eq(k).html() >= offLeftDay && leftTbody.eq(b).find('td').eq(k).html() <= offRightDay)
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                        }
                    }
                }
                //console.log('---右边禁用---');					
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {
                        if (rightTbody.eq(b).find('td').eq(k).html() >= offLeftDay && rightTbody.eq(b).find('td').eq(k).html() <= offRightDay) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                        }
                    }
                }// 以下是夹中间的情况													
            } else if (offLeftMonth == leftMonth && offRightMonth == rightMonth) {
                //console.log('case2 ' + offLeftDay + ' ' + offRightDay);
                //console.log('---左边禁用---');
                var nextMonthTag = 0;
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');
                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {
                            //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            if (leftTbody.eq(b).find('td').eq(k).html() >= offLeftDay && leftTbody.eq(b).find('td').eq(k).html() <= maxDayCount && nextMonthTag == 0) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                                //console.log(leftTbody.eq(b).find('td').eq(k).html());
                                if (leftTbody.eq(b).find('td').eq(k).html() == maxDayCount)
                                    nextMonthTag = 1;
                            } else if (leftTbody.eq(b).find('td').eq(k).html() <= offRightDay && nextMonthTag == 1) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                                //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            }
                        }
                    }
                }
                //console.log('---右边禁用---');
                nextMonthTag = 0;
                var offEnd = 0;
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {
                        //console.log(leftTbody.eq(b).find('td').eq(k).html());
                        if (rightTbody.eq(b).find('td').eq(k).html() >= offLeftDay && rightTbody.eq(b).find('td').eq(k).html() <= maxDayCount && nextMonthTag == 0 && offEnd == 0) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                            if (rightTbody.eq(b).find('td').eq(k).html() == maxDayCount)
                                nextMonthTag = 1;
                        } else if (rightTbody.eq(b).find('td').eq(k).html() <= offRightDay && nextMonthTag == 1 && offEnd == 0) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                        } else if (rightTbody.eq(b).find('td').eq(k).html() > offRightDay && nextMonthTag == 1) {
                            offEnd = 1;
                        }
                    }
                }// 以下是全部日期在右边日历
            } else if (offLeftMonth == rightMonth && offRightMonth == rightMonth) {
                //console.log('case3 ' + offLeftDay + ' ' + offRightDay);
                //console.log('---左边禁用---');
                var nextMonthTag = 0,
                    startOff = 0;
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');

                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {
                            //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            if (leftTbody.eq(b).find('td').eq(k).html() >= offLeftDay && leftTbody.eq(b).find('td').eq(k).html() <= offRightDay) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                                //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            }
                        }
                    }
                }
                //console.log('---右边禁用---');
                startOff = 0;
                var offEnd = 0;
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {
                        //console.log(leftTbody.eq(b).find('td').eq(k).html());
                        if (leftTbody.eq(b).find('td').eq(k).html() == maxDayCount) {
                            startOff = 1;
                        }
                        if (rightTbody.eq(b).find('td').eq(k).html() >= offLeftDay && rightTbody.eq(b).find('td').eq(k).html() <= offRightDay && startOff == 1 && offEnd == 0) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                        } else if (rightTbody.eq(b).find('td').eq(k).html() == offRightDay && startOff == 1) {
                            startOff = 0;
                            offEnd = 1;
                        }
                    }
                }

            }

            var tempDate = new Date(selectedDate.replace(/-/g, "/"));
            var tempDay = clickDay;
            var startTagDate = new Date(new Date(offRightDate).getTime() - (7 - 2) * (1000 * 24 * 60 * 60));
            tempDate.setMonth(clickMonth, 0);
            tempDate.setDate(tempDay);
            tempDate.setDate(tempDate.getDate() + 7 - 1);
            var clickDate = new Date(clickYear, clickMonth - 1, clickDay);
            var offLeftDateTime = new Date(offLeftDate);

            if (clickDate.getTime() >= startTagDate.getTime() && clickDate.getTime() < offLeftDateTime.getTime()) {
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');
                var leftTitle = $('.table-condensed').eq(0).find('.month').html();
                var leftMonth = parseInt(leftTitle.length == 7 ? leftTitle.substring(0, 1) : leftTitle.substring(0, 2));
                var leftYear = parseInt(leftTitle.length == 7 ? leftTitle.substring(3) : leftTitle.substring(4));
                var rightTitle = $('.table-condensed').eq(1).find('.month').html();
                var rightMonth = parseInt(rightTitle.length == 7 ? rightTitle.substring(0, 1) : rightTitle.substring(0, 2));
                var rightYear = parseInt(rightTitle.length == 7 ? rightTitle.substring(3) : rightTitle.substring(4));
                var leftComVal, rightComVal, offRightDateTomorrow, tempDateComVal;
                var lprevDay = -1, isIntoNextMonth = false;
                //console.log('点击的日期是：' + clickDate + '\n开始触发off的日期是： ' + startTagDate + '\n已有日期的左值是 ' + offLeftDateTime);

                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {

                            if (parseInt(leftTbody.eq(b).find('td').eq(k).html()) < lprevDay)
                                isIntoNextMonth = true;

                            if (!isIntoNextMonth)
                                leftComVal = value2Date(leftYear, leftMonth, leftTbody.eq(b).find('td').eq(k).html());
                            else
                                leftComVal = value2Date(leftYear, leftMonth + 1, leftTbody.eq(b).find('td').eq(k).html());

                            offRightDateTomorrow = value2Date(offRightYear, offRightMonth, (offRightDay + 1));
                            tempDateComVal = value2Date(tempDate.getFullYear(), tempDate.getMonth() + 1, tempDate.getDate());

                            if (leftComVal >= offRightDateTomorrow && leftComVal <= tempDateComVal) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            }

                            lprevDay = parseInt(leftTbody.eq(b).find('td').eq(k).html());

                            //console.log('是否进入下一月:' + isIntoNextMonth + ',' + leftComVal + ',' + offRightDateTomorrow + ' ' + tempDateComVal);
                        }
                    }
                }

                var rprevDay = -1, isLeftMonth = true, isRightMonth = false, isRightNextMonth = false, isAdded = false;
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {

                        //rightComVal = value2Date(rightYear, rightMonth, rightTbody.eq(b).find('td').eq(k).html());

                        if (isLeftMonth && parseInt(rightTbody.eq(b).find('td').eq(k).html()) < rprevDay && !isAdded) {
                            isLeftMonth = false;
                            isRightMonth = true;
                            isAdded = true;
                        }

                        if (isRightMonth && parseInt(rightTbody.eq(b).find('td').eq(k).html()) < rprevDay && !isAdded) {
                            isRightMonth = false;
                            isRightNextMonth = true;
                            isAdded = true;
                        }

                        if (isLeftMonth)
                            rightComVal = value2Date(rightYear, rightMonth - 1, rightTbody.eq(b).find('td').eq(k).html());
                        else if (isRightMonth)
                            rightComVal = value2Date(rightYear, rightMonth, rightTbody.eq(b).find('td').eq(k).html());
                        else if (isRightNextMonth)
                            rightComVal = value2Date(rightYear, rightMonth + 1, rightTbody.eq(b).find('td').eq(k).html());

                        offRightDateTomorrow = value2Date(offRightYear, offRightMonth, (offRightDay + 1));
                        tempDateComVal = value2Date(tempDate.getFullYear(), tempDate.getMonth() + 1, tempDate.getDate());

                        if (rightComVal >= offRightDateTomorrow && rightComVal <= tempDateComVal) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                        }

                        rprevDay = parseInt(rightTbody.eq(b).find('td').eq(k).html());
                        isAdded = false;
                        //console.log(rightComVal + ',' + offRightDateTomorrow + ',' + tempDateComVal);
                    }
                }
            }
        }

        function value2Date(year, month, day) {
            var comDate = new Date();
            comDate.setFullYear(year);
            comDate.setMonth(month - 1);
            comDate.setDate(day);
            comDate = comDate.toISOString().substring(0, 10).replace(/-/g, "/");
            return comDate;
        }


        </script>
    <style>
        .cus{
            cursor:pointer;
        }

        .u_custom {
    position: absolute;
    align-self: center;
    padding: 2px 2px 2px 2px;
    box-sizing: border-box;
    width: 100%;
    word-wrap: break-word;
    text-transform: none;
}
        #u41, #u42, #u57, #u58, #u73, #u74, #u89, #u90, #u105, #u106, #u121, #u122{
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
        .datetime {
		    position:absolute;
            top:410px;
            left:462px;
            width:391px;
            font-size:24px;
            background-color:#f2f2f2;
            border-style: none;
			border-bottom: 2px solid #191629;
            user-select:none;
            -moz-user-select:none;
            -webkit-user-select:none;
            -ms-user-select:none;
            cursor: pointer;
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
        <button id="popInfo1" onclick="ll()" hidden="hidden"></button>
        <button id="popInfo2" onclick="gg()" hidden="hidden"></button>
    </div>

    <form id="form1" runat="server">

<div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u1" class="ax_default heading_1">
        <div id="u1_div" class=""></div>
        <div id="u1_text" class="text ">
          <p><span style="text-decoration:none;">秒速酒店</span></p>
        </div>
      </div>

      <!-- 预定房间 (动态面板) -->
      <div id="u2" class="ax_default" data-label="预定房间">
        <div id="u2_state0" class="panel_state" data-label="选择房型" style="">
          <div id="u2_state0_content" class="panel_state_content">

            <!-- Unnamed (图片 ) -->
            <div id="u3" class="ax_default image">
              <img id="u3_img" class="img " src="images/u_orderroom/regen/u3.svg"/>
              <div id="u3_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (图片 ) -->
            <div id="u4" class="ax_default image">
              <img id="u4_img" class="img " src="images/u_orderroom/regen/u4.svg"/>
              <div id="u4_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (图片 ) -->
            <div id="u5" class="ax_default image">
              <img id="u5_img" class="img " src="images/u_orderroom/regen/u5.png"/>
              <div id="u5_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u6" class="ax_default label">
              <div id="u6_div" class=""></div>
              <div id="u6_text" class="text ">
                <p><span style="text-decoration:none;">单人房</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u7" class="ax_default label">
              <div id="u7_div" class=""></div>
              <div id="u7_text" class="text ">
                <p><span style="text-decoration:none;">双人房</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u8" class="ax_default label">
              <div id="u8_div" class=""></div>
              <div id="u8_text" class="text ">
                <p><span style="text-decoration:none;">总统套房</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state1" class="panel_state" data-label="单人房选择床型" style="visibility: hidden;">
          <div id="u2_state1_content" class="panel_state_content">

            <!-- Unnamed (图片 ) -->
            <div id="u9" class="ax_default image">
              <img id="u9_img" class="img " src="images/u_orderroom/regen/u9.png"/>
              <div id="u9_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (图片 ) -->
            <div id="u10" class="ax_default image">
              <img id="u10_img" class="img " src="images/u_orderroom/regen/u10.png"/>
              <div id="u10_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u11" class="ax_default label">
              <div id="u11_div" class=""></div>
              <div id="u11_text" class="text ">
                <p><span style="text-decoration:none;">硬板床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u12" class="ax_default label">
              <div id="u12_div" class=""></div>
              <div id="u12_text" class="text ">
                <p><span style="text-decoration:none;">软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u13" class="ax_default button">
              <div id="u13_div" class=""></div>
              <div id="u13_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>              

            <!-- Unnamed (矩形) -->
            <div id="u14" class="ax_default heading_1">
              <div id="u14_div" class=""></div>
              <div id="u14_text" class="text ">
                <p><span style="text-decoration:none;">单人房</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state2" class="panel_state" data-label="双人房选择床型" style="visibility: hidden;">
          <div id="u2_state2_content" class="panel_state_content">

            <!-- Unnamed (图片 ) -->
            <div id="u15" class="ax_default image">
              <img id="u15_img" class="img " src="images/u_orderroom/regen/u9.png"/>
              <div id="u15_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (图片 ) -->
            <div id="u16" class="ax_default image">
              <img id="u16_img" class="img " src="images/u_orderroom/regen/u10.png"/>
              <div id="u16_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u17" class="ax_default label">
              <div id="u17_div" class=""></div>
              <div id="u17_text" class="text ">
                <p><span style="text-decoration:none;">硬板床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u18" class="ax_default label">
              <div id="u18_div" class=""></div>
              <div id="u18_text" class="text ">
                <p><span style="text-decoration:none;">软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u19" class="ax_default button">
              <div id="u19_div" class=""></div>
              <div id="u19_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u20" class="ax_default heading_1">
              <div id="u20_div" class=""></div>
              <div id="u20_text" class="text ">
                <p><span style="text-decoration:none;">双人房</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state3" class="panel_state" data-label="总统套房选择床型" style="visibility: hidden;">
          <div id="u2_state3_content" class="panel_state_content">

            <!-- Unnamed (图片 ) -->
            <div id="u21" class="ax_default image">
              <img id="u21_img" class="img " src="images/u_orderroom/regen/u10.png"/>
              <div id="u21_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (图片 ) -->
            <div id="u22" class="ax_default image">
              <img id="u22_img" class="img " src="images/u_orderroom/regen/u22.png"/>
              <div id="u22_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u23" class="ax_default label">
              <div id="u23_div" class=""></div>
              <div id="u23_text" class="text ">
                <p><span style="text-decoration:none;">软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u24" class="ax_default label">
              <div id="u24_div" class=""></div>
              <div id="u24_text" class="text ">
                <p><span style="text-decoration:none;">大圆床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u25" class="ax_default button">
              <div id="u25_div" class=""></div>
              <div id="u25_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u26" class="ax_default heading_1">
              <div id="u26_div" class=""></div>
              <div id="u26_text" class="text ">
                <p><span style="text-decoration:none;">总统套房</span></p>
              </div>
            </div>
          </div>
        </div>

        <div id="u2_state4" class="panel_state" data-label="单人房-硬板床数据显示" style="visibility: hidden;">

          <div id="u2_state4_content" class="panel_state_content">

              <%
                  int index = 0;
                  int img_top = 51, text_top = 60, check_top = 73;

                  string img_topValue = string.Empty;
                  string text_topValue = string.Empty;
                  string check_topValue = string.Empty;
                  foreach (iRan.Model.GuestRoomInfo singlehard in shRoomList)
                  {
                      
                      img_top += 124;
                      text_top += 124;
                      check_top += 124;
                      img_topValue = "top:" + img_top + "px";
                      text_topValue = "top:" + text_top + "px";
                      check_topValue = "top:" + check_top + "px";

              %>
                      <div id="<%=shclassType[index,0] %>" class="ax_default gusinfo">
                          
                          <div id="<%=shclassType[index,3] %>" class="ax_default image" style="<%=check_topValue%>">
                              <img id="<%=shclassType[index,3] %>_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 0, 0)" />
                              <div id="<%=shclassType[index,3] %>_text" class="text " style="display: none; visibility: hidden">
                                  <p></p>
                              </div>
                          </div>
                          
                          <div id="<%=shclassType[index,2] %>" class="ax_default label" style="<%=text_topValue%>">
                              <div id="<%=shclassType[index,2] %>_div" class=""></div>
                              <div id="<%=shclassType[index,2] %>_text" class="text ">
                                  <p><span style="text-decoration: none;">楼层分布：<%=singlehard.FloorDistribution%>楼，面积：<%=singlehard.Area%>m²， 可容人数：<%=singlehard.TolerableNumber%>人，宽带上网：<%=singlehard.HasWlan == 1 ? "是" : "否" %>，房价：<%=singlehard.RoomPrice %>/天</span></p>
                              </div>
                          </div>
                          
                          <div id="<%=shclassType[index,1] %>" class="ax_default box_1 " style="<%=img_topValue%>">
                              <img id="<%=shclassType[index,1] %>_img" class="img " src="images/u_orderroom/regen/u30.svg" />
                              <div id="<%=shclassType[index,1] %>_text" class="text ">
                                  <p><span style="text-decoration: none;" class="room1 gid"><%=singlehard.Gid%></span></p>
                              </div>
                          </div>

                      </div>

              <%       
                      index++;
                  }
              %>

            <!-- Unnamed (矩形) -->
            <div id="u39" class="ax_default label">
              <div id="u39_div" class=""></div>
              <div id="u39_text" class="text ">
                <p><span style="text-decoration:none;">单人房-硬板床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u40" class="ax_default button">
              <div id="u40_div" class=""></div>
              <div id="u40_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u41" class="ax_default button" onclick="shByPage(g_shNowPage, 1)">
              <div id="u41_div" class=""></div>
              <div id="u41_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u42" class="ax_default button" onclick="shByPage(g_shNowPage, -1)">
              <div id="u42_div" class=""></div>
              <div id="u42_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state5" class="panel_state" data-label="单人房-软榻床数据显示" style="visibility: hidden;">
          <div id="u2_state5_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u43" class="ax_default" data-label="第三条" data-left="163" data-top="423" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u44" class="ax_default image">
                <img id="u44_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 0, 1)"/>
                <div id="u44_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u45" class="ax_default label">
                <div id="u45_div" class=""></div>
                <div id="u45_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u46" class="ax_default box_1">
                <img id="u46_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u46_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u47" class="ax_default" data-label="第二条" data-left="163" data-top="299" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u48" class="ax_default image">
                <img id="u48_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 0, 1)"/>
                <div id="u48_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u49" class="ax_default label">
                <div id="u49_div" class=""></div>
                <div id="u49_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u50" class="ax_default box_1">
                <img id="u50_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u50_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u51" class="ax_default" data-label="第一条" data-left="163" data-top="175" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u52" class="ax_default image">
                <img id="u52_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 0, 1)"/>
                <div id="u52_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u53" class="ax_default label">
                <div id="u53_div" class=""></div>
                <div id="u53_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u54" class="ax_default box_1">
                <img id="u54_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u54_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 单人房-软榻床 (矩形) -->
            <div id="u55" class="ax_default label" data-label="单人房-软榻床">
              <div id="u55_div" class=""></div>
              <div id="u55_text" class="text ">
                <p><span style="text-decoration:none;">单人房-软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u56" class="ax_default button">
              <div id="u56_div" class=""></div>
              <div id="u56_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u57" class="ax_default button" onclick="ssByPage(g_ssNowPage, 1)">
              <div id="u57_div" class=""></div>
              <div id="u57_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u58" class="ax_default button" onclick="ssByPage(g_ssNowPage, -1)">
              <div id="u58_div" class=""></div>
              <div id="u58_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state6" class="panel_state" data-label="双人房-硬板床数据显示" style="visibility: hidden;">
          <div id="u2_state6_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u59" class="ax_default" data-label="第三条" data-left="163" data-top="423" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u60" class="ax_default image">
                <img id="u60_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 1, 0)"/>
                <div id="u60_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u61" class="ax_default label">
                <div id="u61_div" class=""></div>
                <div id="u61_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u62" class="ax_default box_1">
                <img id="u62_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u62_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u63" class="ax_default" data-label="第二条" data-left="163" data-top="299" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u64" class="ax_default image">
                <img id="u64_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 1, 0)"/>
                <div id="u64_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u65" class="ax_default label">
                <div id="u65_div" class=""></div>
                <div id="u65_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u66" class="ax_default box_1">
                <img id="u66_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u66_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u67" class="ax_default" data-label="第一条" data-left="163" data-top="175" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u68" class="ax_default image">
                <img id="u68_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 1, 0)"/>
                <div id="u68_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u69" class="ax_default label">
                <div id="u69_div" class=""></div>
                <div id="u69_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u70" class="ax_default box_1">
                <img id="u70_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u70_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 双人房-硬板床 (矩形) -->
            <div id="u71" class="ax_default label" data-label="双人房-硬板床">
              <div id="u71_div" class=""></div>
              <div id="u71_text" class="text ">
                <p><span style="text-decoration:none;">双人房-硬板床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u72" class="ax_default button">
              <div id="u72_div" class=""></div>
              <div id="u72_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u73" class="ax_default button" onclick="dhByPage(g_dhNowPage, 1)">
              <div id="u73_div" class=""></div>
              <div id="u73_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u74" class="ax_default button" onclick="dhByPage(g_dhNowPage, -1)">
              <div id="u74_div" class=""></div>
              <div id="u74_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state7" class="panel_state" data-label="双人房-软榻床数据显示" style="visibility: hidden;">
          <div id="u2_state7_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u75" class="ax_default" data-label="第三条" data-left="163" data-top="423" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u76" class="ax_default image">
                <img id="u76_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 1, 1)"/>
                <div id="u76_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u77" class="ax_default label">
                <div id="u77_div" class=""></div>
                <div id="u77_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u78" class="ax_default box_1">
                <img id="u78_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u78_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u79" class="ax_default" data-label="第二条" data-left="163" data-top="299" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u80" class="ax_default image">
                <img id="u80_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 1, 1)"/>
                <div id="u80_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u81" class="ax_default label">
                <div id="u81_div" class=""></div>
                <div id="u81_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u82" class="ax_default box_1">
                <img id="u82_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u82_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u83" class="ax_default" data-label="第一条" data-left="163" data-top="175" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u84" class="ax_default image">
                <img id="u84_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 1, 1)"/>
                <div id="u84_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u85" class="ax_default label">
                <div id="u85_div" class=""></div>
                <div id="u85_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u86" class="ax_default box_1">
                <img id="u86_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u86_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 双人房-软榻床 (矩形) -->
            <div id="u87" class="ax_default label" data-label="双人房-软榻床">
              <div id="u87_div" class=""></div>
              <div id="u87_text" class="text ">
                <p><span style="text-decoration:none;">双人房-软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u88" class="ax_default button">
              <div id="u88_div" class=""></div>
              <div id="u88_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u89" class="ax_default button" onclick="dsByPage(g_dsNowPage, 1)">
              <div id="u89_div" class=""></div>
              <div id="u89_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u90" class="ax_default button" onclick="dsByPage(g_dsNowPage, -1)">
              <div id="u90_div" class=""></div>
              <div id="u90_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state8" class="panel_state" data-label="总统套房-软榻床数据显示" style="visibility: hidden;">
          <div id="u2_state8_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u91" class="ax_default" data-label="第三条" data-left="163" data-top="423" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u92" class="ax_default image">
                <img id="u92_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 2, 1)"/>
                <div id="u92_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u93" class="ax_default label">
                <div id="u93_div" class=""></div>
                <div id="u93_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u94" class="ax_default box_1">
                <img id="u94_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u94_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u95" class="ax_default" data-label="第二条" data-left="163" data-top="299" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u96" class="ax_default image">
                <img id="u96_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 2, 1)"/>
                <div id="u96_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u97" class="ax_default label">
                <div id="u97_div" class=""></div>
                <div id="u97_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u98" class="ax_default box_1">
                <img id="u98_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u98_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u99" class="ax_default" data-label="第一条" data-left="163" data-top="175" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u100" class="ax_default image">
                <img id="u100_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 2, 1)"/>
                <div id="u100_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u101" class="ax_default label">
                <div id="u101_div" class=""></div>
                <div id="u101_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u102" class="ax_default box_1">
                <img id="u102_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u102_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 总统套房-软榻床 (矩形) -->
            <div id="u103" class="ax_default label" data-label="总统套房-软榻床">
              <div id="u103_div" class=""></div>
              <div id="u103_text" class="text ">
                <p><span style="text-decoration:none;">总统套房-软榻床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u104" class="ax_default button">
              <div id="u104_div" class=""></div>
              <div id="u104_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u105" class="ax_default button" onclick="psByPage(g_psNowPage, 1)">
              <div id="u105_div" class=""></div>
              <div id="u105_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u106" class="ax_default button" onclick="psByPage(g_psNowPage, -1)">
              <div id="u106_div" class=""></div>
              <div id="u106_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state9" class="panel_state" data-label="总统套房-大圆床数据显示" style="visibility: hidden;">
          <div id="u2_state9_content" class="panel_state_content">

            <!-- 第三条 (组合) -->
            <div id="u107" class="ax_default" data-label="第三条" data-left="163" data-top="423" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u108" class="ax_default image">
                <img id="u108_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 2, 2)"/>
                <div id="u108_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u109" class="ax_default label">
                <div id="u109_div" class=""></div>
                <div id="u109_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u110" class="ax_default box_1">
                <img id="u110_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u110_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第二条 (组合) -->
            <div id="u111" class="ax_default" data-label="第二条" data-left="163" data-top="299" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u112" class="ax_default image">
                <img id="u112_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 2, 2)"/>
                <div id="u112_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u113" class="ax_default label">
                <div id="u113_div" class=""></div>
                <div id="u113_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u114" class="ax_default box_1">
                <img id="u114_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u114_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 第一条 (组合) -->
            <div id="u115" class="ax_default" data-label="第一条" data-left="163" data-top="175" data-width="956" data-height="89">

              <!-- Unnamed (图片 ) -->
              <div id="u116" class="ax_default image">
                <img id="u116_img" class="img " src="images/u_orderroom/regen/u28.png" onclick="Settle(this, 2, 2)"/>
                <div id="u116_text" class="text " style="display:none; visibility: hidden">
                  <p></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u117" class="ax_default label">
                <div id="u117_div" class=""></div>
                <div id="u117_text" class="text ">
                  <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²， 可容人数：1人，宽带上网：是，房价：300/天</span></p>
                </div>
              </div>

              <!-- Unnamed (矩形) -->
              <div id="u118" class="ax_default box_1">
                <img id="u118_img" class="img " src="images/u_orderroom/regen/u30.svg"/>
                <div id="u118_text" class="text ">
                  <p><span style="text-decoration:none;">@房间号</span></p>
                </div>
              </div>
            </div>

            <!-- 总统套房-大圆床 (矩形) -->
            <div id="u119" class="ax_default label" data-label="总统套房-大圆床">
              <div id="u119_div" class=""></div>
              <div id="u119_text" class="text ">
                <p><span style="text-decoration:none;">总统套房-大圆床</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u120" class="ax_default button">
              <div id="u120_div" class=""></div>
              <div id="u120_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u121" class="ax_default button" onclick="pcByPage(g_pcNowPage, 1)">
              <div id="u121_div" class=""></div>
              <div id="u121_text" class="text ">
                <p><span style="text-decoration:none;">下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u122" class="ax_default button" onclick="pcByPage(g_pcNowPage, -1)">
              <div id="u122_div" class=""></div>
              <div id="u122_text" class="text ">
                <p><span style="text-decoration:none;">上一页</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state10" class="panel_state" data-label="单人房-硬板床结算" style="visibility: hidden;">
          <div id="u2_state10_content" class="panel_state_content">
            
            <div id="u123" class="ax_default button">
              <div id="u123_div" class=""></div>
              <div id="u123_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 单人房-硬板床- (矩形) -->
            <div id="u124" class="ax_default heading_1 reserve" data-label="单人房-硬板床-" data-value="">
              <div id="u124_div" class=""></div>
              <div id="u124_text" class="text ">
                <p><span style="text-decoration:none;"></span></p>
              </div>
            </div>
            
            <div id="u125" class="ax_default label">
              <div id="u125_div" class=""></div>
              <div id="u125_text" class="text ">
                <p><span style="text-decoration:none;"></span></p>
              </div>
            </div>
            
            <div id="u126" class="ax_default label">
              <div id="u126_div" class=""></div>
              <div id="u126_text" class="text ">
                <p><span style="text-decoration:none;" data-value=""></span></p>
              </div>
            </div>

            <div id='sh_datetime'>
			    <input id="sh_input-datetime" class="datetime" />
		    </div>
            
            
            <div id="u127" class="ax_default button cus" onclick="Reserve(this, 0, 0)">
              <div id="u127_div" class="" ></div>
              <div id="u127_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>

          </div>
        </div>

        <div id="u2_state11" class="panel_state" data-label="单人房-软榻床结算" style="visibility: hidden;">
          <div id="u2_state11_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u128" class="ax_default button">
              <div id="u128_div" class=""></div>
              <div id="u128_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 单人房-软榻床- (矩形) -->
            <div id="u129" class="ax_default heading_1 reserve" data-label="单人房-软榻床-" data-value="">
              <div id="u129_div" class=""></div>
              <div id="u129_text" class="text ">
                <p><span style="text-decoration:none;">单人房-软榻床-3412</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u130" class="ax_default label">
              <div id="u130_div" class=""></div>
              <div id="u130_text" class="text ">
                <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²，可容人数：1人，宽带上网：是</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u131" class="ax_default label">
              <div id="u131_div" class=""></div>
              <div id="u131_text" class="text ">
                <p><span style="text-decoration:none;" data-value="">￥300.0/天</span></p>
              </div>
            </div>

              <div id='ss_datetime'>
			    <input id="ss_input-datetime" class="datetime" />
		    </div>

            <!-- Unnamed (矩形) -->
            <div id="u132" class="ax_default button cus" onclick="Reserve(this, 0, 1)">
              <div id="u132_div" class=""></div>
              <div id="u132_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state12" class="panel_state" data-label="双人房-硬板床结算" style="visibility: hidden;">
          <div id="u2_state12_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u133" class="ax_default button">
              <div id="u133_div" class=""></div>
              <div id="u133_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 双人房-硬板床- (矩形) -->
            <div id="u134" class="ax_default heading_1 reserve" data-label="双人房-硬板床-" data-value="">
              <div id="u134_div" class=""></div>
              <div id="u134_text" class="text ">
                <p><span style="text-decoration:none;">双人房-硬板床-3412</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u135" class="ax_default label">
              <div id="u135_div" class=""></div>
              <div id="u135_text" class="text ">
                <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²，可容人数：1人，宽带上网：是</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u136" class="ax_default label">
              <div id="u136_div" class=""></div>
              <div id="u136_text" class="text ">
                <p><span style="text-decoration:none;" data-value="">￥300.0/天</span></p>
              </div>
            </div>

              <div id='dh_datetime'>
			    <input id="dh_input-datetime" class="datetime" />
		    </div>

            <!-- Unnamed (矩形) -->
            <div id="u137" class="ax_default button cus" onclick="Reserve(this, 1, 0)">
              <div id="u137_div" class=""></div>
              <div id="u137_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state13" class="panel_state" data-label="双人房-软榻床结算" style="visibility: hidden;">
          <div id="u2_state13_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u138" class="ax_default button">
              <div id="u138_div" class=""></div>
              <div id="u138_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 双人房-软榻床- (矩形) -->
            <div id="u139" class="ax_default heading_1 reserve" data-label="双人房-软榻床-" data-value="">
              <div id="u139_div" class=""></div>
              <div id="u139_text" class="text ">
                <p><span style="text-decoration:none;">双人房-软榻床-3412</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u140" class="ax_default label">
              <div id="u140_div" class=""></div>
              <div id="u140_text" class="text ">
                <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²，可容人数：1人，宽带上网：是</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u141" class="ax_default label">
              <div id="u141_div" class=""></div>
              <div id="u141_text" class="text ">
                <p><span style="text-decoration:none;" data-value="">￥300.0/天</span></p>
              </div>
            </div>

              <div id='ds_datetime'>
			    <input id="ds_input-datetime" class="datetime" />
		    </div>

            <!-- Unnamed (矩形) -->
            <div id="u142" class="ax_default button cus" onclick="Reserve(this, 1, 1)">
              <div id="u142_div" class=""></div>
              <div id="u142_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state14" class="panel_state" data-label="总统套房-软榻床结算" style="visibility: hidden;">
          <div id="u2_state14_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u143" class="ax_default button">
              <div id="u143_div" class=""></div>
              <div id="u143_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 总统套房-软榻床- (矩形) -->
            <div id="u144" class="ax_default heading_1 reserve" data-label="总统套房-软榻床-" data-value="">
              <div id="u144_div" class=""></div>
              <div id="u144_text" class="text ">
                <p><span style="text-decoration:none;">总统套房-软榻床-3412</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u145" class="ax_default label">
              <div id="u145_div" class=""></div>
              <div id="u145_text" class="text ">
                <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²，可容人数：1人，宽带上网：是</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u146" class="ax_default label">
              <div id="u146_div" class=""></div>
              <div id="u146_text" class="text ">
                <p><span style="text-decoration:none;" data-value="">￥300.0/天</span></p>
              </div>
            </div>

              <div id='ps_datetime'>
			    <input id="ps_input-datetime" class="datetime" />
		    </div>

            <!-- Unnamed (矩形) -->
            <div id="u147" class="ax_default button cus" onclick="Reserve(this, 2, 1)">
              <div id="u147_div" class=""></div>
              <div id="u147_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u2_state15" class="panel_state" data-label="总统套房-大圆床结算" style="visibility: hidden;">
          <div id="u2_state15_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u148" class="ax_default button">
              <div id="u148_div" class=""></div>
              <div id="u148_text" class="text ">
                <p><span style="text-decoration:none;">上一步</span></p>
              </div>
            </div>

            <!-- 总统套房-大圆床- (矩形) -->
            <div id="u149" class="ax_default heading_1 reserve" data-label="总统套房-大圆床-" data-value="">
              <div id="u149_div" class=""></div>
              <div id="u149_text" class="text ">
                <p><span style="text-decoration:none;">总统套房-大圆床-3412</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u150" class="ax_default label">
              <div id="u150_div" class=""></div>
              <div id="u150_text" class="text ">
                <p><span style="text-decoration:none;">楼层分布：3楼，面积：50m²，可容人数：1人，宽带上网：是</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u151" class="ax_default label">
              <div id="u151_div" class=""></div>
              <div id="u151_text" class="text ">
                <p><span style="text-decoration:none;" data-value="">￥300.0/天</span></p>
              </div>
            </div>

              <div id='pc_datetime'>
			    <input id="pc_input-datetime" class="datetime" />
		    </div>

            <!-- Unnamed (矩形) -->
            <div id="u152" class="ax_default button cus" onclick="Reserve(this, 2, 2)">
              <div id="u152_div" class=""></div>
              <div id="u152_text" class="text ">
                <p><span style="text-decoration:none;">预定</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u153" class="ax_default button cus">
        <div id="u153_div" class=""></div>
        <div id="u153_text" class="text ">
          <p><span style="text-decoration:none;">返回首页</span></p>
        </div>
      </div>

</div>


    <script src="resources/scripts/axure/ios.js"></script>

    <script>
        
        var parms = window.location.search;
        // 单人房-硬板床
        $('#u9').click(function () {                
            SingleHard();        
        });
        // 单人房-软榻床
        $('#u10').click(function () {
            SingleSoft();
        });
        // 双人房-硬板床
        $('#u15').click(function () {
            DoubleHard();
        });
        // 双人房-软榻床
        $('#u16').click(function () {
            DoubleSoft();
        });
        // 总统套房-软榻床
        $('#u21').click(function () {
            PresidentSoft();
        });
        // 总统套房-大圆床
        $('#u22').click(function () {
            PresidentCircle();
        });

        var g_shNowPage = <%=shNowPage%>;
        var g_ssNowPage = <%=ssNowPage%>;
        var g_dhNowPage = <%=dhNowPage%>;
        var g_dsNowPage = <%=dsNowPage%>;
        var g_psNowPage = <%=psNowPage%>;
        var g_pcNowPage = <%=pcNowPage%>;


        function SingleHard() {
            
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "roomtype": 0, "bedtype": 0, "postTag": "sh_room_bed_type" },
                xhrFields: { withCredentials: true },
                dataType: "text",                
                success: function (data) {
                    g_shNowPage = 1;
                    var shFirsrPageData = JSON.parse(data);

                    if (shFirsrPageData.length == 1) {

                        var shroomGid = shFirsrPageData[0].Gid;
                        var shroomInfo = "楼层分布：" + shFirsrPageData[0].FloorDistribution + "楼，面积：" + shFirsrPageData[0].Area + "m²， 可容人数：" + shFirsrPageData[0].TolerableNumber + "人，宽带上网：" + (shFirsrPageData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + shFirsrPageData[0].RoomPrice + "/天";

                        $('#<%=shclassType[0,1] %>_text').find('span').html(shroomGid);
                        $('#<%=shclassType[0,2] %>_text').find('span').html(shroomInfo);
                        $('#u31').hide();
                        $('#u27').hide();
                    }

                    else if (shFirsrPageData.length == 2) {

                        var shroomGidArr = new Array(2);
                        var shroomInfoArr = new Array(2);
                        for (var b = 0; b < shFirsrPageData.length; b++) {
                            shroomGidArr[b] = shFirsrPageData[b].Gid;
                            shroomInfoArr[b] = "楼层分布：" + shFirsrPageData[b].FloorDistribution + "楼，面积：" + shFirsrPageData[b].Area + "m²， 可容人数：" + shFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (shFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + shFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=shclassType[0,1] %>_text').find('span').html(shroomGidArr[0]);
                        $('#<%=shclassType[0,2] %>_text').find('span').html(shroomInfoArr[0]);

                        $('#<%=shclassType[1,1] %>_text').find('span').html(shroomGidArr[1]);
                        $('#<%=shclassType[1,2] %>_text').find('span').html(shroomInfoArr[1]);

                        $('#u27').hide();
                    }
                    else if (shFirsrPageData.length == 3) {                        
                        $('#u31').show();
                        $('#u27').show();
                        var shroomGidArr = new Array(3);
                        var shroomInfoArr = new Array(3);
                        for (var b = 0; b < shFirsrPageData.length; b++) {
                            shroomGidArr[b] = shFirsrPageData[b].Gid;
                            shroomInfoArr[b] = "楼层分布：" + shFirsrPageData[b].FloorDistribution + "楼，面积：" + shFirsrPageData[b].Area + "m²， 可容人数：" + shFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (shFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + shFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=shclassType[0,1] %>_text').find('span').html(shroomGidArr[0]);
                        $('#<%=shclassType[0,2] %>_text').find('span').html(shroomInfoArr[0]);

                        $('#<%=shclassType[1,1] %>_text').find('span').html(shroomGidArr[1]);
                        $('#<%=shclassType[1,2] %>_text').find('span').html(shroomInfoArr[1]);

                        $('#<%=shclassType[2,1] %>_text').find('span').html(shroomGidArr[2]);
                        $('#<%=shclassType[2,2] %>_text').find('span').html(shroomInfoArr[2]);
                    }
                }
            });
        }

        function SingleSoft() {
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "roomtype": 0, "bedtype": 1, "postTag": "ss_room_bed_type" },
                dataType: "text",
                //contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {

                    g_ssNowPage = 1;
                    var ssFirsrPageData = JSON.parse(data);

                    if (ssFirsrPageData.length == 1) {

                        var ssroomGid = ssFirsrPageData[0].Gid;
                        var ssroomInfo = "楼层分布：" + ssFirsrPageData[0].FloorDistribution + "楼，面积：" + ssFirsrPageData[0].Area + "m²， 可容人数：" + ssFirsrPageData[0].TolerableNumber + "人，宽带上网：" + (ssFirsrPageData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + ssFirsrPageData[0].RoomPrice + "/天";

                        $('#<%=ssclassType[0,1] %>_text').find('span').html(ssroomGid);
                        $('#<%=ssclassType[0,2] %>_text').find('span').html(ssroomInfo);
                        $('#u47').hide();
                        $('#u43').hide();
                    }

                    else if (ssFirsrPageData.length == 2) {

                        var ssroomGidArr = new Array(2);
                        var ssroomInfoArr = new Array(2);
                        for (var b = 0; b < ssFirsrPageData.length; b++) {
                            ssroomGidArr[b] = ssFirsrPageData[b].Gid;
                            ssroomInfoArr[b] = "楼层分布：" + ssFirsrPageData[b].FloorDistribution + "楼，面积：" + ssFirsrPageData[b].Area + "m²， 可容人数：" + ssFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (ssFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + ssFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=ssclassType[0,1] %>_text').find('span').html(ssroomGidArr[0]);
                        $('#<%=ssclassType[0,2] %>_text').find('span').html(ssroomInfoArr[0]);

                        $('#<%=ssclassType[1,1] %>_text').find('span').html(ssroomGidArr[1]);
                        $('#<%=ssclassType[1,2] %>_text').find('span').html(ssroomInfoArr[1]);

                        $('#u43').hide();
                    }
                    else if (ssFirsrPageData.length == 3) {                        
                        $('#u47').show();
                        $('#u43').show();
                        var ssroomGidArr = new Array(3);
                        var ssroomInfoArr = new Array(3);
                        for (var b = 0; b < ssFirsrPageData.length; b++) {
                            ssroomGidArr[b] = ssFirsrPageData[b].Gid;
                            ssroomInfoArr[b] = "楼层分布：" + ssFirsrPageData[b].FloorDistribution + "楼，面积：" + ssFirsrPageData[b].Area + "m²， 可容人数：" + ssFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (ssFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + ssFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=ssclassType[0,1] %>_text').find('span').html(ssroomGidArr[0]);
                        $('#<%=ssclassType[0,2] %>_text').find('span').html(ssroomInfoArr[0]);

                        $('#<%=ssclassType[1,1] %>_text').find('span').html(ssroomGidArr[1]);
                        $('#<%=ssclassType[1,2] %>_text').find('span').html(ssroomInfoArr[1]);

                        $('#<%=ssclassType[2,1] %>_text').find('span').html(ssroomGidArr[2]);
                        $('#<%=ssclassType[2,2] %>_text').find('span').html(ssroomInfoArr[2]);
                    }
                }
            });

        }

        function DoubleHard() {
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "roomtype": 1, "bedtype": 0, "postTag": "dh_room_bed_type" },
                dataType: "text",
                //contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {

                    g_dhNowPage = 1;
                    var dhFirsrPageData = JSON.parse(data);

                    if (dhFirsrPageData.length == 1) {

                        var dhroomGid = dhFirsrPageData[0].Gid;
                        var dhroomInfo = "楼层分布：" + dhFirsrPageData[0].FloorDistribution + "楼，面积：" + dhFirsrPageData[0].Area + "m²， 可容人数：" + dhFirsrPageData[0].TolerableNumber + "人，宽带上网：" + (dhFirsrPageData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + dhFirsrPageData[0].RoomPrice + "/天";

                        $('#<%=dhclassType[0,1] %>_text').find('span').html(dhroomGid);
                        $('#<%=dhclassType[0,2] %>_text').find('span').html(dhroomInfo);
                        $('#u63').hide();
                        $('#u59').hide();
                    }

                    else if (dhFirsrPageData.length == 2) {

                        var dhroomGidArr = new Array(2);
                        var dhroomInfoArr = new Array(2);
                        for (var b = 0; b < dhFirsrPageData.length; b++) {
                            dhroomGidArr[b] = dhFirsrPageData[b].Gid;
                            dhroomInfoArr[b] = "楼层分布：" + dhFirsrPageData[b].FloorDistribution + "楼，面积：" + dhFirsrPageData[b].Area + "m²， 可容人数：" + dhFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (dhFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dhFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=dhclassType[0,1] %>_text').find('span').html(dhroomGidArr[0]);
                        $('#<%=dhclassType[0,2] %>_text').find('span').html(dhroomInfoArr[0]);

                        $('#<%=dhclassType[1,1] %>_text').find('span').html(dhroomGidArr[1]);
                        $('#<%=dhclassType[1,2] %>_text').find('span').html(dhroomInfoArr[1]);

                        $('#u59').hide();
                    }
                    else if (dhFirsrPageData.length == 3) {
                        $('#u63').show();
                        $('#u59').show();
                        var dhroomGidArr = new Array(3);
                        var dhroomInfoArr = new Array(3);
                        for (var b = 0; b < dhFirsrPageData.length; b++) {
                            dhroomGidArr[b] = dhFirsrPageData[b].Gid;
                            dhroomInfoArr[b] = "楼层分布：" + dhFirsrPageData[b].FloorDistribution + "楼，面积：" + dhFirsrPageData[b].Area + "m²， 可容人数：" + dhFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (dhFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dhFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=dhclassType[0,1] %>_text').find('span').html(dhroomGidArr[0]);
                        $('#<%=dhclassType[0,2] %>_text').find('span').html(dhroomInfoArr[0]);

                        $('#<%=dhclassType[1,1] %>_text').find('span').html(dhroomGidArr[1]);
                        $('#<%=dhclassType[1,2] %>_text').find('span').html(dhroomInfoArr[1]);

                        $('#<%=dhclassType[2,1] %>_text').find('span').html(dhroomGidArr[2]);
                        $('#<%=dhclassType[2,2] %>_text').find('span').html(dhroomInfoArr[2]);
                    }
                }
            });
        }

        function DoubleSoft() {
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "roomtype": 1, "bedtype": 1, "postTag": "ds_room_bed_type" },
                dataType: "text",
                //contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {

                    g_dsNowPage = 1;
                    var dsFirsrPageData = JSON.parse(data);

                    if (dsFirsrPageData.length == 1) {

                        var dsroomGid = dsFirsrPageData[0].Gid;
                        var dsroomInfo = "楼层分布：" + dsFirsrPageData[0].FloorDistribution + "楼，面积：" + dsFirsrPageData[0].Area + "m²， 可容人数：" + dsFirsrPageData[0].TolerableNumber + "人，宽带上网：" + (dsFirsrPageData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + dsFirsrPageData[0].RoomPrice + "/天";

                        $('#<%=dsclassType[0,1] %>_text').find('span').html(dsroomGid);
                        $('#<%=dsclassType[0,2] %>_text').find('span').html(dsroomInfo);
                        $('#u79').hide();
                        $('#u75').hide();
                    }

                    else if (dsFirsrPageData.length == 2) {

                        var dsroomGidArr = new Array(2);
                        var dsroomInfoArr = new Array(2);
                        for (var b = 0; b < dsFirsrPageData.length; b++) {
                            dsroomGidArr[b] = dsFirsrPageData[b].Gid;
                            dsroomInfoArr[b] = "楼层分布：" + dsFirsrPageData[b].FloorDistribution + "楼，面积：" + dsFirsrPageData[b].Area + "m²， 可容人数：" + dsFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (dsFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dsFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=dsclassType[0,1] %>_text').find('span').html(dsroomGidArr[0]);
                        $('#<%=dsclassType[0,2] %>_text').find('span').html(dsroomInfoArr[0]);

                        $('#<%=dsclassType[1,1] %>_text').find('span').html(dsroomGidArr[1]);
                        $('#<%=dsclassType[1,2] %>_text').find('span').html(dsroomInfoArr[1]);

                        $('#u75').hide();
                    }
                    else if (dsFirsrPageData.length == 3) {
                        $('#u79').show();
                        $('#u75').show();
                        var dsroomGidArr = new Array(3);
                        var dsroomInfoArr = new Array(3);
                        for (var b = 0; b < dsFirsrPageData.length; b++) {
                            dsroomGidArr[b] = dsFirsrPageData[b].Gid;
                            dsroomInfoArr[b] = "楼层分布：" + dsFirsrPageData[b].FloorDistribution + "楼，面积：" + dsFirsrPageData[b].Area + "m²， 可容人数：" + dsFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (dsFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dsFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=dsclassType[0,1] %>_text').find('span').html(dsroomGidArr[0]);
                        $('#<%=dsclassType[0,2] %>_text').find('span').html(dsroomInfoArr[0]);

                        $('#<%=dsclassType[1,1] %>_text').find('span').html(dsroomGidArr[1]);
                        $('#<%=dsclassType[1,2] %>_text').find('span').html(dsroomInfoArr[1]);

                        $('#<%=dsclassType[2,1] %>_text').find('span').html(dsroomGidArr[2]);
                        $('#<%=dsclassType[2,2] %>_text').find('span').html(dsroomInfoArr[2]);
                    }
                }
            });
        }

        function PresidentSoft() {
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "roomtype": 2, "bedtype": 1, "postTag": "ps_room_bed_type" },
                dataType: "text",
                //contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {

                    g_psNowPage = 1;
                    var psFirsrPageData = JSON.parse(data);

                    if (psFirsrPageData.length == 1) {

                        var psroomGid = psFirsrPageData[0].Gid;
                        var psroomInfo = "楼层分布：" + psFirsrPageData[0].FloorDistribution + "楼，面积：" + psFirsrPageData[0].Area + "m²， 可容人数：" + psFirsrPageData[0].TolerableNumber + "人，宽带上网：" + (psFirsrPageData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + psFirsrPageData[0].RoomPrice + "/天";

                        $('#<%=psclassType[0,1] %>_text').find('span').html(psroomGid);
                        $('#<%=psclassType[0,2] %>_text').find('span').html(psroomInfo);
                        $('#u95').hide();
                        $('#u91').hide();
                    }

                    else if (psFirsrPageData.length == 2) {

                        var psroomGidArr = new Array(2);
                        var psroomInfoArr = new Array(2);
                        for (var b = 0; b < psFirsrPageData.length; b++) {
                            psroomGidArr[b] = psFirsrPageData[b].Gid;
                            psroomInfoArr[b] = "楼层分布：" + psFirsrPageData[b].FloorDistribution + "楼，面积：" + psFirsrPageData[b].Area + "m²， 可容人数：" + psFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (psFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + psFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=psclassType[0,1] %>_text').find('span').html(psroomGidArr[0]);
                        $('#<%=psclassType[0,2] %>_text').find('span').html(psroomInfoArr[0]);

                        $('#<%=psclassType[1,1] %>_text').find('span').html(psroomGidArr[1]);
                        $('#<%=psclassType[1,2] %>_text').find('span').html(psroomInfoArr[1]);

                        $('#u91').hide();
                    }
                    else if (psFirsrPageData.length == 3) {
                        $('#u95').show();
                        $('#u91').show();
                        var psroomGidArr = new Array(3);
                        var psroomInfoArr = new Array(3);
                        for (var b = 0; b < psFirsrPageData.length; b++) {
                            psroomGidArr[b] = psFirsrPageData[b].Gid;
                            psroomInfoArr[b] = "楼层分布：" + psFirsrPageData[b].FloorDistribution + "楼，面积：" + psFirsrPageData[b].Area + "m²， 可容人数：" + psFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (psFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + psFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=psclassType[0,1] %>_text').find('span').html(psroomGidArr[0]);
                        $('#<%=psclassType[0,2] %>_text').find('span').html(psroomInfoArr[0]);

                        $('#<%=psclassType[1,1] %>_text').find('span').html(psroomGidArr[1]);
                        $('#<%=psclassType[1,2] %>_text').find('span').html(psroomInfoArr[1]);

                        $('#<%=psclassType[2,1] %>_text').find('span').html(psroomGidArr[2]);
                        $('#<%=psclassType[2,2] %>_text').find('span').html(psroomInfoArr[2]);
                    }
                }
            });
        }

        function PresidentCircle() {
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "roomtype": 2, "bedtype": 2, "postTag": "pc_room_bed_type" },
                dataType: "text",
                //contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success: function (data) {

                    g_pcNowPage = 1;
                    var pcFirsrPageData = JSON.parse(data);

                    if (pcFirsrPageData.length == 1) {

                        var pcroomGid = pcFirsrPageData[0].Gid;
                        var pcroomInfo = "楼层分布：" + pcFirsrPageData[0].FloorDistribution + "楼，面积：" + pcFirsrPageData[0].Area + "m²， 可容人数：" + pcFirsrPageData[0].TolerableNumber + "人，宽带上网：" + (pcFirsrPageData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + pcFirsrPageData[0].RoomPrice + "/天";

                        $('#<%=pcclassType[0,1] %>_text').find('span').html(pcroomGid);
                        $('#<%=pcclassType[0,2] %>_text').find('span').html(pcroomInfo);
                        $('#u111').hide();
                        $('#u107').hide();
                    }

                    else if (pcFirsrPageData.length == 2) {

                        var pcroomGidArr = new Array(2);
                        var pcroomInfoArr = new Array(2);
                        for (var b = 0; b < pcFirsrPageData.length; b++) {
                            pcroomGidArr[b] = pcFirsrPageData[b].Gid;
                            pcroomInfoArr[b] = "楼层分布：" + pcFirsrPageData[b].FloorDistribution + "楼，面积：" + pcFirsrPageData[b].Area + "m²， 可容人数：" + pcFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (pcFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + pcFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=pcclassType[0,1] %>_text').find('span').html(pcroomGidArr[0]);
                        $('#<%=pcclassType[0,2] %>_text').find('span').html(pcroomInfoArr[0]);

                        $('#<%=pcclassType[1,1] %>_text').find('span').html(pcroomGidArr[1]);
                        $('#<%=pcclassType[1,2] %>_text').find('span').html(pcroomInfoArr[1]);

                        $('#u107').hide();
                    }
                    else if (pcFirsrPageData.length == 3) {
                        $('#u111').show();
                        $('#u107').show();
                        var pcroomGidArr = new Array(3);
                        var pcroomInfoArr = new Array(3);
                        for (var b = 0; b < pcFirsrPageData.length; b++) {
                            pcroomGidArr[b] = pcFirsrPageData[b].Gid;
                            pcroomInfoArr[b] = "楼层分布：" + pcFirsrPageData[b].FloorDistribution + "楼，面积：" + pcFirsrPageData[b].Area + "m²， 可容人数：" + pcFirsrPageData[b].TolerableNumber + "人，宽带上网：" + (pcFirsrPageData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + pcFirsrPageData[b].RoomPrice + "/天";
                        }
                        $('#<%=pcclassType[0,1] %>_text').find('span').html(pcroomGidArr[0]);
                        $('#<%=pcclassType[0,2] %>_text').find('span').html(pcroomInfoArr[0]);

                        $('#<%=pcclassType[1,1] %>_text').find('span').html(pcroomGidArr[1]);
                        $('#<%=pcclassType[1,2] %>_text').find('span').html(pcroomInfoArr[1]);

                        $('#<%=pcclassType[2,1] %>_text').find('span').html(pcroomGidArr[2]);
                        $('#<%=pcclassType[2,2] %>_text').find('span').html(pcroomInfoArr[2]);
                    }
                }
            });
        }

        function Settle(select, roomtype, bedtype) {

            var gid = $(select).parent().next().next().children().eq(1).find('span').html();

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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "gid": gid, "roomtype": roomtype, "bedtype": bedtype, "postTag": "tempInfo" },
                dataType: "text",
                success: function (data) {

                    var roomJsonData = JSON.parse(data);
                    offDateTimeList = roomJsonData;

                    if (roomtype == 0 && bedtype == 0) {
                        $('#u124').attr('data-value', roomJsonData.roomInfo.Gid);
                        $('#u124_text span').html('单人房-硬板床-' + roomJsonData.roomInfo.Gid);
                        $('#u125_text span').html("楼层分布：" + roomJsonData.roomInfo.FloorDistribution + "楼，面积：" + roomJsonData.roomInfo.Area + "m²， 可容人数：" + roomJsonData.roomInfo.TolerableNumber + "人，宽带上网：" + (roomJsonData.roomInfo.HasWlan == 1 ? "是" : "否"));
                        $('#u126_text span').html('￥' + roomJsonData.roomInfo.RoomPrice + '/天');
                        $('#u126_text span').attr('data-value', roomJsonData.roomInfo.RoomPrice);

                        sh_Init_DateRange_Picker();
                        selectStartDate = new Date();
                        sectionDays = 1;
                    }

                    if (roomtype == 0 && bedtype == 1) {
                        $('#u129').attr('data-value', roomJsonData.roomInfo.Gid);
                        $('#u129_text span').html('单人房-软塌床-' + roomJsonData.roomInfo.Gid);
                        $('#u130_text span').html("楼层分布：" + roomJsonData.roomInfo.FloorDistribution + "楼，面积：" + roomJsonData.roomInfo.Area + "m²， 可容人数：" + roomJsonData.roomInfo.TolerableNumber + "人，宽带上网：" + (roomJsonData.roomInfo.HasWlan == 1 ? "是" : "否"));
                        $('#u131_text span').html('￥' + roomJsonData.roomInfo.RoomPrice + '/天');
                        $('#u131_text span').attr('data-value', roomJsonData.roomInfo.RoomPrice);

                        ss_Init_DateRange_Picker();
                        selectStartDate = new Date();
                        sectionDays = 1;
                    }

                    if (roomtype == 1 && bedtype == 0) {
                        $('#u134').attr('data-value', roomJsonData.roomInfo.Gid);
                        $('#u134_text span').html('双人房-硬板床-' + roomJsonData.roomInfo.Gid);
                        $('#u135_text span').html("楼层分布：" + roomJsonData.roomInfo.FloorDistribution + "楼，面积：" + roomJsonData.roomInfo.Area + "m²， 可容人数：" + roomJsonData.roomInfo.TolerableNumber + "人，宽带上网：" + (roomJsonData.roomInfo.HasWlan == 1 ? "是" : "否"));
                        $('#u136_text span').html('￥' + roomJsonData.roomInfo.RoomPrice + '/天');
                        $('#u136_text span').attr('data-value', roomJsonData.roomInfo.RoomPrice);

                        dh_Init_DateRange_Picker();
                        selectStartDate = new Date();
                        sectionDays = 1;
                    }

                    if (roomtype == 1 && bedtype == 1) {
                        $('#u139').attr('data-value', roomJsonData.roomInfo.Gid);
                        $('#u139_text span').html('双人房-软塌床-' + roomJsonData.roomInfo.Gid);
                        $('#u140_text span').html("楼层分布：" + roomJsonData.roomInfo.FloorDistribution + "楼，面积：" + roomJsonData.roomInfo.Area + "m²， 可容人数：" + roomJsonData.roomInfo.TolerableNumber + "人，宽带上网：" + (roomJsonData.roomInfo.HasWlan == 1 ? "是" : "否"));
                        $('#u141_text span').html('￥' + roomJsonData.roomInfo.RoomPrice + '/天');
                        $('#u141_text span').attr('data-value', roomJsonData.roomInfo.RoomPrice);

                        ds_Init_DateRange_Picker();
                        selectStartDate = new Date();
                        sectionDays = 1;
                    }

                    if (roomtype == 2 && bedtype == 1) {
                        $('#u144').attr('data-value', roomJsonData.roomInfo.Gid);
                        $('#u144_text span').html('总统套房-软塌床-' + roomJsonData.roomInfo.Gid);
                        $('#u145_text span').html("楼层分布：" + roomJsonData.roomInfo.FloorDistribution + "楼，面积：" + roomJsonData.roomInfo.Area + "m²， 可容人数：" + roomJsonData.roomInfo.TolerableNumber + "人，宽带上网：" + (roomJsonData.roomInfo.HasWlan == 1 ? "是" : "否"));
                        $('#u146_text span').html('￥' + roomJsonData.roomInfo.RoomPrice + '/天');
                        $('#u146_text span').attr('data-value', roomJsonData.roomInfo.RoomPrice);

                        ps_Init_DateRange_Picker();
                        selectStartDate = new Date();
                        sectionDays = 1;
                    }

                    if (roomtype == 2 && bedtype == 2) {
                        $('#u149').attr('data-value', roomJsonData.roomInfo.Gid);
                        $('#u149_text span').html('总统套房-大圆床-' + roomJsonData.roomInfo.Gid);
                        $('#u150_text span').html("楼层分布：" + roomJsonData.roomInfo.FloorDistribution + "楼，面积：" + roomJsonData.roomInfo.Area + "m²， 可容人数：" + roomJsonData.roomInfo.TolerableNumber + "人，宽带上网：" + (roomJsonData.roomInfo.HasWlan == 1 ? "是" : "否"));
                        $('#u151_text span').html('￥' + roomJsonData.roomInfo.RoomPrice + '/天');
                        $('#u151_text span').attr('data-value', roomJsonData.roomInfo.RoomPrice);

                        pc_Init_DateRange_Picker();
                        selectStartDate = new Date();
                        sectionDays = 1;
                    }
                    
                    
                    
                    
                }
            });              
        }
        
        $('#u153').click(function () {
            $(window).attr('location', 'u_MainPage.aspx' + parms);
        });

        function Reserve(select, roomtype, bedtype) {     
            
            var gid = $(select).parent().find('.reserve').attr('data-value');
            if (selectStartDate.toString().length > 10)
                selectStartDate = selectStartDate.getFullYear() + "-" + (selectStartDate.getMonth() + 1) + "-" + selectStartDate.getDate();
                        
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                data: { "gid": gid, "roomtype": roomtype, "bedtype": bedtype, "startdate": selectStartDate, "selectdays": sectionDays, "postTag": "reserve" },
                dataType: "text",
                success: function (data) {

                    if (data == -1) {
                        $('#popInfo1').trigger('click');
                        //alert('今天已经被预定了，请重新选择预定时间段');
                        
                    }
                    else if (data == -2) {
                        $('#popInfo2').trigger('click');
                        //alert('抱歉，您选中的日期就在刚刚被抢走了，呜呜~请换个时间吧！');                        
                    }
                    else {
                        $(window).attr('location', 'u_ExService.aspx?uid=<%=uid%>' + '&gid=' + gid + '&cid=' + data);
                    }
                }
            });
        }

        // 单人房-硬板床Ajax分页获取数据
        function shByPage(shNowPage, tag) {

            if (shNowPage == <%=shMaxPage%> && tag == 1)
                return;
            if (shNowPage == 1 && tag == -1)
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                async: true,
                data: { "roomtype": 0, "bedtype": 0, "shNowPage": shNowPage + tag, "postTag": "shByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_shNowPage++;
                    else
                        g_shNowPage--;

                    var shNextData = JSON.parse(data);
                    
                    if (shNextData.length == 1) {

                        var shroomGid = shNextData[0].Gid;
                        var shroomInfo = "楼层分布：" + shNextData[0].FloorDistribution + "楼，面积：" + shNextData[0].Area + "m²， 可容人数：" + shNextData[0].TolerableNumber + "人，宽带上网：" + (shNextData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + shNextData[0].RoomPrice + "/天";
                            
                        $('#<%=shclassType[0,1] %>_text').find('span').html(shroomGid);
                        $('#<%=shclassType[0,2] %>_text').find('span').html(shroomInfo);
                        $('#u31').hide();
                        $('#u27').hide();
                    }
                    else if (shNextData.length == 2) {

                        var shroomGidArr = new Array(2);
                        var shroomInfoArr = new Array(2);
                        for (var b = 0; b < shNextData.length; b++) {
                            shroomGidArr[b] = shNextData[b].Gid;
                            shroomInfoArr[b] = "楼层分布：" + shNextData[b].FloorDistribution + "楼，面积：" + shNextData[b].Area + "m²， 可容人数：" + shNextData[b].TolerableNumber + "人，宽带上网：" + (shNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + shNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=shclassType[0,1] %>_text').find('span').html(shroomGidArr[0]);
                        $('#<%=shclassType[0,2] %>_text').find('span').html(shroomInfoArr[0]);   

                        $('#<%=shclassType[1,1] %>_text').find('span').html(shroomGidArr[1]);
                        $('#<%=shclassType[1,2] %>_text').find('span').html(shroomInfoArr[1]);
                        
                        $('#u27').hide();
                    }
                    else if (shNextData.length == 3) {                       
                        $('#u31').show();
                        $('#u27').show();
                        var shroomGidArr = new Array(3);
                        var shroomInfoArr = new Array(3);
                        for (var b = 0; b < shNextData.length; b++) {
                            shroomGidArr[b] = shNextData[b].Gid;
                            shroomInfoArr[b] = "楼层分布：" + shNextData[b].FloorDistribution + "楼，面积：" + shNextData[b].Area + "m²， 可容人数：" + shNextData[b].TolerableNumber + "人，宽带上网：" + (shNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + shNextData[b].RoomPrice + "/天";                        
                        }
                        $('#<%=shclassType[0,1] %>_text').find('span').html(shroomGidArr[0]);
                        $('#<%=shclassType[0,2] %>_text').find('span').html(shroomInfoArr[0]);

                        $('#<%=shclassType[1,1] %>_text').find('span').html(shroomGidArr[1]);
                        $('#<%=shclassType[1,2] %>_text').find('span').html(shroomInfoArr[1]);

                        $('#<%=shclassType[2,1] %>_text').find('span').html(shroomGidArr[2]);
                        $('#<%=shclassType[2,2] %>_text').find('span').html(shroomInfoArr[2]);
                    }
                    
                }
            });
        }
        
        // 单人房-软榻床Ajax分页获取数据
        function ssByPage(ssNowPage, tag) {

            if (ssNowPage == <%=ssMaxPage%> && tag == 1)
                return;
            if (ssNowPage == 1 && tag == -1)
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                async: true,
                data: { "roomtype": 0, "bedtype": 1, "ssNowPage": ssNowPage + tag, "postTag": "ssByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_ssNowPage++;
                    else
                        g_ssNowPage--;

                    var ssNextData = JSON.parse(data);

                    if (ssNextData.length == 1) {

                        var ssroomGid = ssNextData[0].Gid;
                        var ssroomInfo = "楼层分布：" + ssNextData[0].FloorDistribution + "楼，面积：" + ssNextData[0].Area + "m²， 可容人数：" + ssNextData[0].TolerableNumber + "人，宽带上网：" + (ssNextData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + ssNextData[0].RoomPrice + "/天";

                        $('#<%=ssclassType[0,1] %>_text').find('span').html(ssroomGid);
                        $('#<%=ssclassType[0,2] %>_text').find('span').html(ssroomInfo);
                        $('#u47').hide();
                        $('#u43').hide();
                    }
                    else if (ssNextData.length == 2) {

                        var ssroomGidArr = new Array(2);
                        var ssroomInfoArr = new Array(2);
                        for (var b = 0; b < ssNextData.length; b++) {
                            ssroomGidArr[b] = ssNextData[b].Gid;
                            ssroomInfoArr[b] = "楼层分布：" + ssNextData[b].FloorDistribution + "楼，面积：" + ssNextData[b].Area + "m²， 可容人数：" + ssNextData[b].TolerableNumber + "人，宽带上网：" + (ssNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + ssNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=ssclassType[0,1] %>_text').find('span').html(ssroomGidArr[0]);
                        $('#<%=ssclassType[0,2] %>_text').find('span').html(ssroomInfoArr[0]);

                        $('#<%=ssclassType[1,1] %>_text').find('span').html(ssroomGidArr[1]);
                        $('#<%=ssclassType[1,2] %>_text').find('span').html(ssroomInfoArr[1]);

                        
                        $('#u43').hide();
                    }
                    else if (ssNextData.length == 3) {                        
                        $('#u47').show();
                        $('#u43').show();
                        var ssroomGidArr = new Array(3);
                        var ssroomInfoArr = new Array(3);
                        for (var b = 0; b < ssNextData.length; b++) {
                            ssroomGidArr[b] = ssNextData[b].Gid;
                            ssroomInfoArr[b] = "楼层分布：" + ssNextData[b].FloorDistribution + "楼，面积：" + ssNextData[b].Area + "m²， 可容人数：" + ssNextData[b].TolerableNumber + "人，宽带上网：" + (ssNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + ssNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=ssclassType[0,1] %>_text').find('span').html(ssroomGidArr[0]);
                        $('#<%=ssclassType[0,2] %>_text').find('span').html(ssroomInfoArr[0]);

                        $('#<%=ssclassType[1,1] %>_text').find('span').html(ssroomGidArr[1]);
                        $('#<%=ssclassType[1,2] %>_text').find('span').html(ssroomInfoArr[1]);

                        $('#<%=ssclassType[2,1] %>_text').find('span').html(ssroomGidArr[2]);
                        $('#<%=ssclassType[2,2] %>_text').find('span').html(ssroomInfoArr[2]);
                    }

                }
            });
        }
       
        // 双人房-硬板床Ajax分页获取数据
        function dhByPage(dhNowPage, tag) {

            if (dhNowPage == <%=dhMaxPage%> && tag == 1)
                return;
            if (dhNowPage == 1 && tag == -1)
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                async: true,
                data: { "roomtype": 1, "bedtype": 0, "dhNowPage": dhNowPage + tag, "postTag": "dhByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_dhNowPage++;
                    else
                        g_dhNowPage--;

                    var dhNextData = JSON.parse(data);

                    if (dhNextData.length == 1) {

                        var dhroomGid = dhNextData[0].Gid;
                        var dhroomInfo = "楼层分布：" + dhNextData[0].FloorDistribution + "楼，面积：" + dhNextData[0].Area + "m²， 可容人数：" + dhNextData[0].TolerableNumber + "人，宽带上网：" + (dhNextData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + dhNextData[0].RoomPrice + "/天";

                        $('#<%=dhclassType[0,1] %>_text').find('span').html(dhroomGid);
                        $('#<%=dhclassType[0,2] %>_text').find('span').html(dhroomInfo);
                        $('#u63').hide();
                        $('#u59').hide();
                    }
                    else if (dhNextData.length == 2) {

                        var dhroomGidArr = new Array(2);
                        var dhroomInfoArr = new Array(2);
                        for (var b = 0; b < dhNextData.length; b++) {
                            dhroomGidArr[b] = dhNextData[b].Gid;
                            dhroomInfoArr[b] = "楼层分布：" + dhNextData[b].FloorDistribution + "楼，面积：" + dhNextData[b].Area + "m²， 可容人数：" + dhNextData[b].TolerableNumber + "人，宽带上网：" + (dhNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dhNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=dhclassType[0,1] %>_text').find('span').html(dhroomGidArr[0]);
                        $('#<%=dhclassType[0,2] %>_text').find('span').html(dhroomInfoArr[0]);

                        $('#<%=dhclassType[1,1] %>_text').find('span').html(dhroomGidArr[1]);
                        $('#<%=dhclassType[1,2] %>_text').find('span').html(dhroomInfoArr[1]);

                        $('#u59').hide();
                    }
                    else if (dhNextData.length == 3) {
                        $('#u63').show();
                        $('#u59').show();
                        var dhroomGidArr = new Array(3);
                        var dhroomInfoArr = new Array(3);
                        for (var b = 0; b < dhNextData.length; b++) {
                            dhroomGidArr[b] = dhNextData[b].Gid;
                            dhroomInfoArr[b] = "楼层分布：" + dhNextData[b].FloorDistribution + "楼，面积：" + dhNextData[b].Area + "m²， 可容人数：" + dhNextData[b].TolerableNumber + "人，宽带上网：" + (dhNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dhNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=dhclassType[0,1] %>_text').find('span').html(dhroomGidArr[0]);
                        $('#<%=dhclassType[0,2] %>_text').find('span').html(dhroomInfoArr[0]);

                        $('#<%=dhclassType[1,1] %>_text').find('span').html(dhroomGidArr[1]);
                        $('#<%=dhclassType[1,2] %>_text').find('span').html(dhroomInfoArr[1]);

                        $('#<%=dhclassType[2,1] %>_text').find('span').html(dhroomGidArr[2]);
                        $('#<%=dhclassType[2,2] %>_text').find('span').html(dhroomInfoArr[2]);
                    }

                }
            });
        }
       
        // 双人房-软榻床Ajax分页获取数据
        function dsByPage(dsNowPage, tag) {

            if (dsNowPage == <%=dsMaxPage%> && tag == 1)
                return;
            if (dsNowPage == 1 && tag == -1)
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                async: true,
                data: { "roomtype": 1, "bedtype": 1, "dsNowPage": dsNowPage + tag, "postTag": "dsByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_dsNowPage++;
                    else
                        g_dsNowPage--;

                    var dsNextData = JSON.parse(data);

                    if (dsNextData.length == 1) {

                        var dsroomGid = dsNextData[0].Gid;
                        var dsroomInfo = "楼层分布：" + dsNextData[0].FloorDistribution + "楼，面积：" + dsNextData[0].Area + "m²， 可容人数：" + dsNextData[0].TolerableNumber + "人，宽带上网：" + (dsNextData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + dsNextData[0].RoomPrice + "/天";

                        $('#<%=dsclassType[0,1] %>_text').find('span').html(dsroomGid);
                        $('#<%=dsclassType[0,2] %>_text').find('span').html(dsroomInfo);
                        $('#u79').hide();
                        $('#u75').hide();
                    }
                    else if (dsNextData.length == 2) {

                        var dsroomGidArr = new Array(2);
                        var dsroomInfoArr = new Array(2);
                        for (var b = 0; b < dsNextData.length; b++) {
                            dsroomGidArr[b] = dsNextData[b].Gid;
                            dsroomInfoArr[b] = "楼层分布：" + dsNextData[b].FloorDistribution + "楼，面积：" + dsNextData[b].Area + "m²， 可容人数：" + dsNextData[b].TolerableNumber + "人，宽带上网：" + (dsNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dsNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=dsclassType[0,1] %>_text').find('span').html(dsroomGidArr[0]);
                        $('#<%=dsclassType[0,2] %>_text').find('span').html(dsroomInfoArr[0]);

                        $('#<%=dsclassType[1,1] %>_text').find('span').html(dsroomGidArr[1]);
                        $('#<%=dsclassType[1,2] %>_text').find('span').html(dsroomInfoArr[1]);

                        $('#u75').hide();
                    }
                    else if (dsNextData.length == 3) {
                        $('#u79').show();
                        $('#u75').show();
                        var dsroomGidArr = new Array(3);
                        var dsroomInfoArr = new Array(3);
                        for (var b = 0; b < dsNextData.length; b++) {
                            dsroomGidArr[b] = dsNextData[b].Gid;
                            dsroomInfoArr[b] = "楼层分布：" + dsNextData[b].FloorDistribution + "楼，面积：" + dsNextData[b].Area + "m²， 可容人数：" + dsNextData[b].TolerableNumber + "人，宽带上网：" + (dsNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + dsNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=dsclassType[0,1] %>_text').find('span').html(dsroomGidArr[0]);
                        $('#<%=dsclassType[0,2] %>_text').find('span').html(dsroomInfoArr[0]);

                        $('#<%=dsclassType[1,1] %>_text').find('span').html(dsroomGidArr[1]);
                        $('#<%=dsclassType[1,2] %>_text').find('span').html(dsroomInfoArr[1]);

                        $('#<%=dsclassType[2,1] %>_text').find('span').html(dsroomGidArr[2]);
                        $('#<%=dsclassType[2,2] %>_text').find('span').html(dsroomInfoArr[2]);
                    }

                }
            });
        }        

        // 总统套房-软榻床Ajax分页获取数据
        function psByPage(psNowPage ,tag) {
            if (psNowPage == <%=psMaxPage%> && tag == 1)
                return;
            if (psNowPage == 1 && tag == -1)
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                async: true,
                data: { "roomtype": 2, "bedtype": 1, "psNowPage": psNowPage + tag, "postTag": "psByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_psNowPage++;
                    else
                        g_psNowPage--;

                    var psNextData = JSON.parse(data);

                    if (psNextData.length == 1) {

                        var psroomGid = psNextData[0].Gid;
                        var psroomInfo = "楼层分布：" + psNextData[0].FloorDistribution + "楼，面积：" + psNextData[0].Area + "m²， 可容人数：" + psNextData[0].TolerableNumber + "人，宽带上网：" + (psNextData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + psNextData[0].RoomPrice + "/天";

                        $('#<%=psclassType[0,1] %>_text').find('span').html(psroomGid);
                        $('#<%=psclassType[0,2] %>_text').find('span').html(psroomInfo);
                        $('#u95').hide();
                        $('#u91').hide();
                    }
                    else if (psNextData.length == 2) {

                        var psroomGidArr = new Array(2);
                        var psroomInfoArr = new Array(2);
                        for (var b = 0; b < psNextData.length; b++) {
                            psroomGidArr[b] = psNextData[b].Gid;
                            psroomInfoArr[b] = "楼层分布：" + psNextData[b].FloorDistribution + "楼，面积：" + psNextData[b].Area + "m²， 可容人数：" + psNextData[b].TolerableNumber + "人，宽带上网：" + (psNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + psNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=psclassType[0,1] %>_text').find('span').html(psroomGidArr[0]);
                        $('#<%=psclassType[0,2] %>_text').find('span').html(psroomInfoArr[0]);

                        $('#<%=psclassType[1,1] %>_text').find('span').html(psroomGidArr[1]);
                        $('#<%=psclassType[1,2] %>_text').find('span').html(psroomInfoArr[1]);

                        $('#u91').hide();
                    }
                    else if (psNextData.length == 3) {
                        $('#u95').show();
                        $('#u91').show();
                        var psroomGidArr = new Array(3);
                        var psroomInfoArr = new Array(3);
                        for (var b = 0; b < psNextData.length; b++) {
                            psroomGidArr[b] = psNextData[b].Gid;
                            psroomInfoArr[b] = "楼层分布：" + psNextData[b].FloorDistribution + "楼，面积：" + psNextData[b].Area + "m²， 可容人数：" + psNextData[b].TolerableNumber + "人，宽带上网：" + (psNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + psNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=psclassType[0,1] %>_text').find('span').html(psroomGidArr[0]);
                        $('#<%=psclassType[0,2] %>_text').find('span').html(psroomInfoArr[0]);

                        $('#<%=psclassType[1,1] %>_text').find('span').html(psroomGidArr[1]);
                        $('#<%=psclassType[1,2] %>_text').find('span').html(psroomInfoArr[1]);

                        $('#<%=psclassType[2,1] %>_text').find('span').html(psroomGidArr[2]);
                        $('#<%=psclassType[2,2] %>_text').find('span').html(psroomInfoArr[2]);
                    }

                }
            });
        }
       
        // 总统套房-大圆床Ajax分页获取数据
        function pcByPage(pcNowPage, tag) {
            if (pcNowPage == <%=pcMaxPage%> && tag == 1)
                return;
            if (pcNowPage == 1 && tag == -1)
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
                url: "u_OrderRoom.aspx" + parms,
                type: "post",
                async: true,
                data: { "roomtype": 2, "bedtype": 2, "pcNowPage": pcNowPage + tag, "postTag": "pcByPage" },
                dataType: "text",
                success: function (data) {
                    if (tag == 1)
                        g_pcNowPage++;
                    else
                        g_pcNowPage--;

                    var pcNextData = JSON.parse(data);

                    if (pcNextData.length == 1) {

                        var pcroomGid = pcNextData[0].Gid;
                        var pcroomInfo = "楼层分布：" + pcNextData[0].FloorDistribution + "楼，面积：" + pcNextData[0].Area + "m²， 可容人数：" + pcNextData[0].TolerableNumber + "人，宽带上网：" + (pcNextData[0].HasWlan == 1 ? "是" : "否") + "，房价：" + pcNextData[0].RoomPrice + "/天";

                        $('#<%=pcclassType[0,1] %>_text').find('span').html(pcroomGid);
                        $('#<%=pcclassType[0,2] %>_text').find('span').html(pcroomInfo);
                        $('#u111').hide();
                        $('#u107').hide();
                    }
                    else if (pcNextData.length == 2) {

                        var pcroomGidArr = new Array(2);
                        var pcroomInfoArr = new Array(2);
                        for (var b = 0; b < pcNextData.length; b++) {
                            pcroomGidArr[b] = pcNextData[b].Gid;
                            pcroomInfoArr[b] = "楼层分布：" + pcNextData[b].FloorDistribution + "楼，面积：" + pcNextData[b].Area + "m²， 可容人数：" + pcNextData[b].TolerableNumber + "人，宽带上网：" + (pcNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + pcNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=pcclassType[0,1] %>_text').find('span').html(pcroomGidArr[0]);
                        $('#<%=pcclassType[0,2] %>_text').find('span').html(pcroomInfoArr[0]);

                        $('#<%=pcclassType[1,1] %>_text').find('span').html(pcroomGidArr[1]);
                        $('#<%=pcclassType[1,2] %>_text').find('span').html(pcroomInfoArr[1]);

                        $('#u107').hide();
                    }
                    else if (pcNextData.length == 3) {
                        $('#u111').show();
                        $('#u107').show();
                        var pcroomGidArr = new Array(3);
                        var pcroomInfoArr = new Array(3);
                        for (var b = 0; b < pcNextData.length; b++) {
                            pcroomGidArr[b] = pcNextData[b].Gid;
                            pcroomInfoArr[b] = "楼层分布：" + pcNextData[b].FloorDistribution + "楼，面积：" + pcNextData[b].Area + "m²， 可容人数：" + pcNextData[b].TolerableNumber + "人，宽带上网：" + (pcNextData[b].HasWlan == 1 ? "是" : "否") + "，房价：" + pcNextData[b].RoomPrice + "/天";
                        }
                        $('#<%=pcclassType[0,1] %>_text').find('span').html(pcroomGidArr[0]);
                        $('#<%=pcclassType[0,2] %>_text').find('span').html(pcroomInfoArr[0]);

                        $('#<%=pcclassType[1,1] %>_text').find('span').html(pcroomGidArr[1]);
                        $('#<%=pcclassType[1,2] %>_text').find('span').html(pcroomInfoArr[1]);

                        $('#<%=pcclassType[2,1] %>_text').find('span').html(pcroomGidArr[2]);
                        $('#<%=pcclassType[2,2] %>_text').find('span').html(pcroomInfoArr[2]);
                    }

                }
            });
        }
       
    </script>

    <script>
        var offDateTimeList;
        var ckdays, ckDate, ckYear, ckMonth, ckDay, offdate, ckdate;

        $('#sh_input-datetime').attr('readonly', 'true');
        $('#ss_input-datetime').attr('readonly', 'true');
        $('#dh_input-datetime').attr('readonly', 'true');
        $('#ds_input-datetime').attr('readonly', 'true');
        $('#ps_input-datetime').attr('readonly', 'true');
        $('#pc_input-datetime').attr('readonly', 'true');

        var nowDate = new Date();
        var startDate,
            endDate = new Date(),
            maxDate = new Date();
        var selectStartDate = new Date();
        var sectionDays = 1;

        startDate = nowDate;
        endDate.setDate(nowDate.getDate() + 1);
        maxDate.setDate(nowDate.getDate() + 30);
        //console.log("今天是:" + startDate.getDate() + ", 明天是：" + endDate.getDate());

        var locale = {
            "format": 'YYYY年MM月DD日',
            "separator": " 至 ",
            "daysOfWeek": ["日", "一", "二", "三", "四", "五", "六"],
            "monthNames": ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
        };

        sh_Init_DateRange_Picker();
        ss_Init_DateRange_Picker();
        dh_Init_DateRange_Picker();
        ds_Init_DateRange_Picker();
        ps_Init_DateRange_Picker();
        pc_Init_DateRange_Picker();

        function sh_Init_DateRange_Picker() {
            
            $('input[id="sh_input-datetime"]').daterangepicker({
                'locale': locale,
                "maxSpan": {
                    "days": 6
                },
                "autoApply": true,
                "startDate": startDate,
                "endDate": new Date(),
                "minDate": startDate,
                "maxDate": maxDate,
                "opens": "center",
                "drops": "up"
            }, function (start, end) {

                var sectionDatepPrve = new Date(start.format('YYYY-MM-DD').toString().replace("-", "/"));
                var sectionDateNext = new Date(end.format('YYYY-MM-DD').toString().replace("-", "/"));
                selectStartDate = sectionDatepPrve;
                sectionDays = (sectionDateNext - sectionDatepPrve) / (24 * 60 * 60 * 1000) + 1;
                //console.log(sectionDays);
                console.log('新的日期区间选择: ' + start.format('YYYY-MM-DD') + ' 到 ' + end.format('YYYY-MM-DD') + " 共" + sectionDays + "天");
                var roomPrice = $('#u126_text span').attr('data-value');
                var daysArr = new Array('', '两', '三', '四', '五', '六', '七');
                $('#u126_text span').html('￥' + roomPrice * sectionDays + '/' + daysArr[sectionDays - 1] + '天');
            });

            $('input[id="sh_input-datetime"]').on('show.daterangepicker', function (ev, picker) {

                
                for (var i = 0; i < offDateTimeList.ckDateTime.length; i++){
                    ckDate = new Date(offDateTimeList.ckDateTime[i]);
                    ckYear = ckDate.getFullYear();
                    ckMonth = ckDate.getMonth() + 1;
                    ckDay = ckDate.getDate();
                    offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                    ckdays = offDateTimeList.ckDays[i];
                    offSelectedDays(offdate, ckdays);
                    //console.log(offdate + '-' + ckdays);
                }                
            // "2020/4/10 1:43:47"
            });
        }

        function ss_Init_DateRange_Picker() {

            $('input[id="ss_input-datetime"]').daterangepicker({
                'locale': locale,
                "maxSpan": {
                    "days": 6
                },
                "autoApply": true,
                "startDate": startDate,
                "endDate": new Date(),
                "minDate": startDate,
                "maxDate": maxDate,
                "opens": "center",
                "drops": "up"
            }, function (start, end) {

                var sectionDatepPrve = new Date(start.format('YYYY-MM-DD').toString().replace("-", "/"));
                var sectionDateNext = new Date(end.format('YYYY-MM-DD').toString().replace("-", "/"));
                selectStartDate = sectionDatepPrve;
                sectionDays = (sectionDateNext - sectionDatepPrve) / (24 * 60 * 60 * 1000) + 1;                
                console.log('新的日期区间选择: ' + start.format('YYYY-MM-DD') + ' 到 ' + end.format('YYYY-MM-DD') + " 共" + sectionDays + "天");
                var roomPrice = $('#u131_text span').attr('data-value');
                var daysArr = new Array('', '两', '三', '四', '五', '六', '七');
                $('#u131_text span').html('￥' + roomPrice * sectionDays + '/' + daysArr[sectionDays - 1] + '天');
            });

            $('input[id="ss_input-datetime"]').on('show.daterangepicker', function (ev, picker) {

                for (var i = 0; i < offDateTimeList.ckDateTime.length; i++) {
                    ckDate = new Date(offDateTimeList.ckDateTime[i]);
                    ckYear = ckDate.getFullYear();
                    ckMonth = ckDate.getMonth() + 1;
                    ckDay = ckDate.getDate();
                    offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                    ckdays = offDateTimeList.ckDays[i];
                    offSelectedDays(offdate, ckdays);                   
                }                
            });
        }

        function dh_Init_DateRange_Picker() {

            $('input[id="dh_input-datetime"]').daterangepicker({
                'locale': locale,
                "maxSpan": {
                    "days": 6
                },
                "autoApply": true,
                "startDate": startDate,
                "endDate": new Date(),
                "minDate": startDate,
                "maxDate": maxDate,
                "opens": "center",
                "drops": "up"
            }, function (start, end) {

                var sectionDatepPrve = new Date(start.format('YYYY-MM-DD').toString().replace("-", "/"));
                var sectionDateNext = new Date(end.format('YYYY-MM-DD').toString().replace("-", "/"));
                selectStartDate = sectionDatepPrve;
                sectionDays = (sectionDateNext - sectionDatepPrve) / (24 * 60 * 60 * 1000) + 1;
                console.log('新的日期区间选择: ' + start.format('YYYY-MM-DD') + ' 到 ' + end.format('YYYY-MM-DD') + " 共" + sectionDays + "天");
                var roomPrice = $('#u136_text span').attr('data-value');
                var daysArr = new Array('', '两', '三', '四', '五', '六', '七');
                $('#u136_text span').html('￥' + roomPrice * sectionDays + '/' + daysArr[sectionDays - 1] + '天');
            });

            $('input[id="dh_input-datetime"]').on('show.daterangepicker', function (ev, picker) {

                for (var i = 0; i < offDateTimeList.ckDateTime.length; i++) {
                    ckDate = new Date(offDateTimeList.ckDateTime[i]);
                    ckYear = ckDate.getFullYear();
                    ckMonth = ckDate.getMonth() + 1;
                    ckDay = ckDate.getDate();
                    offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                    ckdays = offDateTimeList.ckDays[i];
                    offSelectedDays(offdate, ckdays);
                }
            });
        }

        function ds_Init_DateRange_Picker() {

            $('input[id="ds_input-datetime"]').daterangepicker({
                'locale': locale,
                "maxSpan": {
                    "days": 6
                },
                "autoApply": true,
                "startDate": startDate,
                "endDate": new Date(),
                "minDate": startDate,
                "maxDate": maxDate,
                "opens": "center",
                "drops": "up"
            }, function (start, end) {

                var sectionDatepPrve = new Date(start.format('YYYY-MM-DD').toString().replace("-", "/"));
                var sectionDateNext = new Date(end.format('YYYY-MM-DD').toString().replace("-", "/"));
                selectStartDate = sectionDatepPrve;
                sectionDays = (sectionDateNext - sectionDatepPrve) / (24 * 60 * 60 * 1000) + 1;
                console.log('新的日期区间选择: ' + start.format('YYYY-MM-DD') + ' 到 ' + end.format('YYYY-MM-DD') + " 共" + sectionDays + "天");
                var roomPrice = $('#u141_text span').attr('data-value');
                var daysArr = new Array('', '两', '三', '四', '五', '六', '七');
                $('#u141_text span').html('￥' + roomPrice * sectionDays + '/' + daysArr[sectionDays - 1] + '天');
            });

            $('input[id="ds_input-datetime"]').on('show.daterangepicker', function (ev, picker) {

                for (var i = 0; i < offDateTimeList.ckDateTime.length; i++) {
                    ckDate = new Date(offDateTimeList.ckDateTime[i]);
                    ckYear = ckDate.getFullYear();
                    ckMonth = ckDate.getMonth() + 1;
                    ckDay = ckDate.getDate();
                    offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                    ckdays = offDateTimeList.ckDays[i];
                    offSelectedDays(offdate, ckdays);
                }
            });
        }

        function ps_Init_DateRange_Picker() {

            $('input[id="ps_input-datetime"]').daterangepicker({
                'locale': locale,
                "maxSpan": {
                    "days": 6
                },
                "autoApply": true,
                "startDate": startDate,
                "endDate": new Date(),
                "minDate": startDate,
                "maxDate": maxDate,
                "opens": "center",
                "drops": "up"
            }, function (start, end) {

                var sectionDatepPrve = new Date(start.format('YYYY-MM-DD').toString().replace("-", "/"));
                var sectionDateNext = new Date(end.format('YYYY-MM-DD').toString().replace("-", "/"));
                selectStartDate = sectionDatepPrve;
                sectionDays = (sectionDateNext - sectionDatepPrve) / (24 * 60 * 60 * 1000) + 1;
                console.log('新的日期区间选择: ' + start.format('YYYY-MM-DD') + ' 到 ' + end.format('YYYY-MM-DD') + " 共" + sectionDays + "天");
                var roomPrice = $('#u146_text span').attr('data-value');
                var daysArr = new Array('', '两', '三', '四', '五', '六', '七');
                $('#u146_text span').html('￥' + roomPrice * sectionDays + '/' + daysArr[sectionDays - 1] + '天');
            });

            $('input[id="ps_input-datetime"]').on('show.daterangepicker', function (ev, picker) {

                for (var i = 0; i < offDateTimeList.ckDateTime.length; i++) {
                    ckDate = new Date(offDateTimeList.ckDateTime[i]);
                    ckYear = ckDate.getFullYear();
                    ckMonth = ckDate.getMonth() + 1;
                    ckDay = ckDate.getDate();
                    offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                    ckdays = offDateTimeList.ckDays[i];
                    offSelectedDays(offdate, ckdays);
                }
            });
        }

        function pc_Init_DateRange_Picker() {

            $('input[id="pc_input-datetime"]').daterangepicker({
                'locale': locale,
                "maxSpan": {
                    "days": 6
                },
                "autoApply": true,
                "startDate": startDate,
                "endDate": new Date(),
                "minDate": startDate,
                "maxDate": maxDate,
                "opens": "center",
                "drops": "up"
            }, function (start, end) {

                var sectionDatepPrve = new Date(start.format('YYYY-MM-DD').toString().replace("-", "/"));
                var sectionDateNext = new Date(end.format('YYYY-MM-DD').toString().replace("-", "/"));
                selectStartDate = sectionDatepPrve;
                sectionDays = (sectionDateNext - sectionDatepPrve) / (24 * 60 * 60 * 1000) + 1;
                console.log('新的日期区间选择: ' + start.format('YYYY-MM-DD') + ' 到 ' + end.format('YYYY-MM-DD') + " 共" + sectionDays + "天");
                var roomPrice = $('#u151_text span').attr('data-value');
                var daysArr = new Array('', '两', '三', '四', '五', '六', '七');
                $('#u151_text span').html('￥' + roomPrice * sectionDays + '/' + daysArr[sectionDays - 1] + '天');
            });

            $('input[id="pc_input-datetime"]').on('show.daterangepicker', function (ev, picker) {

                for (var i = 0; i < offDateTimeList.ckDateTime.length; i++) {
                    ckDate = new Date(offDateTimeList.ckDateTime[i]);
                    ckYear = ckDate.getFullYear();
                    ckMonth = ckDate.getMonth() + 1;
                    ckDay = ckDate.getDate();
                    offdate = ckYear + '/' + (ckMonth < 10 ? ('0' + ckMonth) : ckMonth) + '/' + (ckDay < 10 ? ('0' + ckDay) : ckDay);
                    ckdays = offDateTimeList.ckDays[i];
                    offSelectedDays(offdate, ckdays);
                }
            });
        }

        function offSelectedDays(selectedDate, selectDays) {
            //console.log('Ban');
            var maxDayCount, todayIndex;
            var leftMonth, rightMonth, offLeftMonth, offRightMonth, offLeftDay, offRightDay, offLeftYear, offRightYear;

            var offLeftDate = selectedDate;
            var endSelectDate = new Date(selectedDate.replace("-", "/"));
            endSelectDate.setDate((endSelectDate.getDate() - 1) + selectDays);
            var offRightDate;
            if ((endSelectDate.getMonth() + 1) < 10) {
                offRightDate = endSelectDate.getFullYear() + '/' + ('0' + (endSelectDate.getMonth() + 1)) + "/" + endSelectDate.getDate();
            }
            else
                offRightDate = endSelectDate.getFullYear() + '/' + (endSelectDate.getMonth() + 1) + "/" + endSelectDate.getDate();

            //console.log(offLeftDate + ' ' + offRightDate);
            // 当前时间选择器左右两边的月份
            leftMonth = Number($('.table-condensed').find('.month').eq(0).html().substring(1, 0));
            rightMonth = Number($('.table-condensed').find('.month').eq(1).html().substring(1, 0));
            // 已经预定过该房间的时间段的开始结束年份
            offLeftYear = Number(offLeftDate.substring(4, 0));
            offRightYear = Number(offRightDate.substring(4, 0));
            // 已经预定过该房间的时间段的开始结束月份
            offLeftMonth = Number(offLeftDate.substring(7, 5));
            offRightMonth = Number(offRightDate.substring(7, 5));
            // 已经预定过该房间的时间段的开始结束天
            offLeftDay = Number(offLeftDate.substring(10, 8));
            offRightDay = Number(offRightDate.substring(10, 8));
            // 某一个月的最大天数
            maxDayCount = new Date(offLeftYear, offLeftMonth, 0).getDate();
            //console.log(leftMonth + " " + offLeftMonth);
            //console.log(rightMonth + " " + offRightMonth);
            // 从今天以后才开始禁用
            todayIndex = $('.today').parent().index($('.today').parent()[1]);
            //console.log($('.today').parent().index($('.today').parent()[1]));
            // 以下是全部日期在左边日历
            if (offLeftMonth == leftMonth && offRightMonth == leftMonth) {
                //console.log('case2 ' + offLeftDay + ' ' + offRightDay);
                //console.log('---左边禁用---');
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');
                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {
                            //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            if (leftTbody.eq(b).find('td').eq(k).html() >= offLeftDay && leftTbody.eq(b).find('td').eq(k).html() <= offRightDay)
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                        }
                    }
                }
                //console.log('---右边禁用---');					
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {
                        if (rightTbody.eq(b).find('td').eq(k).html() >= offLeftDay && rightTbody.eq(b).find('td').eq(k).html() <= offRightDay) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                        }
                    }
                }// 以下是夹中间的情况													
            } else if (offLeftMonth == leftMonth && offRightMonth == rightMonth) {
                //console.log('case2 ' + offLeftDay + ' ' + offRightDay);
                //console.log('---左边禁用---');
                var nextMonthTag = 0;
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');
                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {
                            //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            if (leftTbody.eq(b).find('td').eq(k).html() >= offLeftDay && leftTbody.eq(b).find('td').eq(k).html() <= maxDayCount && nextMonthTag == 0) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                                //console.log(leftTbody.eq(b).find('td').eq(k).html());
                                if (leftTbody.eq(b).find('td').eq(k).html() == maxDayCount)
                                    nextMonthTag = 1;
                            } else if (leftTbody.eq(b).find('td').eq(k).html() <= offRightDay && nextMonthTag == 1) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                                //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            }
                        }
                    }
                }
                //console.log('---右边禁用---');
                nextMonthTag = 0;
                var offEnd = 0;
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {
                        //console.log(leftTbody.eq(b).find('td').eq(k).html());
                        if (rightTbody.eq(b).find('td').eq(k).html() >= offLeftDay && rightTbody.eq(b).find('td').eq(k).html() <= maxDayCount && nextMonthTag == 0 && offEnd == 0) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                            if (rightTbody.eq(b).find('td').eq(k).html() == maxDayCount)
                                nextMonthTag = 1;
                        } else if (rightTbody.eq(b).find('td').eq(k).html() <= offRightDay && nextMonthTag == 1 && offEnd == 0) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                        } else if (rightTbody.eq(b).find('td').eq(k).html() > offRightDay && nextMonthTag == 1) {
                            offEnd = 1;
                        }
                    }
                }// 以下是全部日期在右边日历
            } else if (offLeftMonth == rightMonth && offRightMonth == rightMonth) {
                //console.log('case3 ' + offLeftDay + ' ' + offRightDay);
                //console.log('---左边禁用---');
                var nextMonthTag = 0,
                    startOff = 0;
                var leftTbody = $('.table-condensed').eq(0).find('tbody').find('tr');
                var rightTbody = $('.table-condensed').eq(1).find('tbody').find('tr');

                for (var b = 0; b < leftTbody.length; b++) {
                    if (b >= todayIndex) {
                        for (var k = 0; k < 7; k++) {
                            //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            if (leftTbody.eq(b).find('td').eq(k).html() >= offLeftDay && leftTbody.eq(b).find('td').eq(k).html() <= offRightDay) {
                                leftTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                                //console.log(leftTbody.eq(b).find('td').eq(k).html());
                            }
                        }
                    }
                }
                //console.log('---右边禁用---');
                startOff = 0;
                var offEnd = 0;
                for (var b = 0; b < rightTbody.length; b++) {
                    for (var k = 0; k < 7; k++) {
                        //console.log(leftTbody.eq(b).find('td').eq(k).html());
                        if (leftTbody.eq(b).find('td').eq(k).html() == maxDayCount) {
                            startOff = 1;
                        }
                        if (rightTbody.eq(b).find('td').eq(k).html() >= offLeftDay && rightTbody.eq(b).find('td').eq(k).html() <= offRightDay && startOff == 1 && offEnd == 0) {
                            rightTbody.eq(b).find('td').eq(k).removeClass('available').addClass('off disabled');
                            //console.log(rightTbody.eq(b).find('td').eq(k).html());
                        } else if (rightTbody.eq(b).find('td').eq(k).html() == offRightDay && startOff == 1) {
                            startOff = 0;
                            offEnd = 1;
                        }
                    }
                }

            }
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

        infoList[302] = {
            mainClass: "infoBox_img_error",
            head: "预定失败",
            content: "今天已经被预定了，请重新选择预定时间段",
            option: [{
                span: "确定",
                action: true,
                fun: function (data) {
                    infoBox.hideInfoBox(back.hide, null, back, null);
                    window.location.reload();
                }
            },
            ]
        }
        infoList[303] = {
            mainClass: "infoBox_img_error",
            head: "预定失败",
            content: "抱歉，您选中的日期就在刚刚被抢走了，呜呜~请换个时间吧！",
            option: [{
                span: "确定",
                action: true,
                fun: function (data) {
                    infoBox.hideInfoBox(back.hide, null, back, null);
                    window.location.reload();
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
function ll() {
    showInfoBox3(null, 302)
}
function gg() {
    showInfoBox3(null, 303)
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

/*    var btnList = new Array("#u13", "#u40", "#u41", "#u42", "#u123", "#u127", "#u56", "#u57", "#u58", "#u128", "#u132",
        "#u19", "#u72", "#u73", "#u74", "#u133", "#u137", "#u88", "#u89", "#u90", "#u138", "#u142",
        "#u25", "#u104", "#u105", "#u106", "#u143", "#u147", "#u120", "#u121", "#u122", "#u148", "#u152");

    for (var b = 0; b < btnList.length; b++) {

        $(btnList[b] + "_div").addClass('.u_custom');

        $(btnList[b] + "_div").mouseenter(function () {
            $(this).stop(true, false).animate({
                backgroundColor: '#353535',
                color: 'rgba(242, 242, 242, 1)'
            }, 750)
        });

        $(btnList[b] + "_div").mouseleave(function () {
            $(this).stop(true, false).animate({
                backgroundColor: 'rgba(242, 242, 242, 1)',
                color: '#191629'
            }, 750)
        });
    }*/

</script>  
    </form>
</body>
</html>
