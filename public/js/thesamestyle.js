/************导航栏下拉菜单******************/

var navlist_a = document.querySelector(".navlist_a");
var navlist_sub = document.getElementById("navlist_sub");
navlist_a.onmouseover=function(){
    navlist_sub.style="display: block;";
    navlist_a.style="color: #ff6767;";
};

navlist_sub.onmouseover=function(){
    navlist_sub.style="display: block;";
    navlist_a.style="color: #333;";
};

navlist_sub.onmouseout=function(){
    navlist_sub.style="display: none;";
    navlist_a.style="color: #333;";
};
/******************************************/