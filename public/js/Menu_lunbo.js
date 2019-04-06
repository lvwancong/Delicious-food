var ul = document.getElementById("Pagebodycontentul");
var left = document.getElementById("left");
var right = document.getElementById("right");
var span = document.getElementById("arr");
var width = 345;
var pic = 0;
left.onclick=function(){
    pic -=width;
    ul.style.left=pic+"px";
}
right.onclick=function(){
    pic +=width;
    ul.style.left = pic + "px";
}
function arr(){
    var add=setInterval(function(){
        pic += width;
        if(pic>1600){
            pic=0;
        }
        ul.style.right = pic + "px";
    },2000);
    /*************按钮************/
    ul.onmouseover=function(){
        span.style = "display: block;";
        clearInterval(add);
    };
    ul.onmouseout=function(){
        span.style = "display: none;";
        add=setInterval(function(){
            pic += width;
            if(pic>3000){
                pic=0;
            }
            ul.style.right = pic + "px";
        },2000);
    };
}
window.onload=arr();
