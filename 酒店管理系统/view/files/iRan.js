$(function () {
    // 弹出层
    function _PopDialog(content) {
        var div = document.createElement('div');
        div.innerHTML = '<div class="_modal">\
                                     <span id="tipsContent">'+ content + '</span>\
                                 </div>';
        document.body.appendChild(div);

        $('._modal').animate({
            top: '-=6' + '%',
            opacity: '1'
        }, 750);
        
        setTimeout(function () {
            $('._modal').animate({
                top: '+=6' + '%',
                opacity: '0'
            }, 750, function () {
                    $(this).remove();                    
            })
        }, 2000);
    };
    $.extend(window, { pop: _PopDialog });
    
});