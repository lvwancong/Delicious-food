/*******放大镜效果**************** */
	//1.
var oWrap = document.getElementById('recipe_De_imgBox');
var smallDiv = document.getElementById('small');
var move = document.getElementById('move');
var bigDiv = document.getElementById('big');

//2.
smallDiv.onmousemove = function(ev) {
    var oEvent = ev || event;
    var iScrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    var iScrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
    var i=1;
    var j=1;
    // console.log(oEvent.clientX);
    // console.log(oEvent.clientY);
    if(oEvent.clientX>470) {
        i=23;
    }else if(oEvent.clientX<470 && oEvent.clientX>310){
        i=9;
    }else if(oEvent.clientX<310){
        i=3;
    }
    if (oEvent.clientY>250){
        j=2.5
    }
    var disX = oEvent.clientX - iScrollLeft - move.offsetWidth / 2 - oWrap.offsetLeft*i;
    var disY = oEvent.clientY - iScrollTop - move.offsetHeight / 2 - oWrap.offsetTop*j;
//  console.log(oWrap.offsetLeft)
    if (disX < 0) {
        disX = 0;
    } else if (disX > smallDiv.offsetWidth - move.offsetWidth) {
        disX = smallDiv.offsetWidth - move.offsetWidth;
    };
    if (disY < 0) {
        disY = 0;
    } else if (disY > smallDiv.offsetHeight - move.offsetHeight) {
        disY = smallDiv.offsetHeight - move.offsetHeight;
    };
    move.style.left = disX + 'px';
    move.style.top = disY + 'px';
    /*算出move块在X轴的移动距离与总的移动距离的比例*/
    var _pageX = disX / (smallDiv.offsetWidth - move.offsetWidth);
        // console.log(_pageX)   /*这是一个0~1之间的数*/
    /*算出move块在Y轴的移动距离与总的移动距离的比例*/
    var _pageY = disY / (smallDiv.offsetHeight - move.offsetHeight);
    /*求出大图片在X轴的移动距离*/
    var mX = _pageX * (bigDiv.children[0].offsetWidth - bigDiv.offsetWidth);
    /*求出大图片在Y轴的移动距离*/
    var mY = _pageY * (bigDiv.children[0].offsetHeight - bigDiv.offsetHeight);
    bigDiv.children[0].style.left = -mX + 'px';
    bigDiv.children[0].style.top = -mY + 'px';
};

//3.
smallDiv.onmouseover = function(ev) {
    bigDiv.style.display = 'block';
    move.style.display = 'block';
    smallDiv.onmousemove(); //兼容IE
};
smallDiv.onmouseout = function() {
    bigDiv.style.display = 'none';
    move.style.display = 'none';
};
/*************************** */