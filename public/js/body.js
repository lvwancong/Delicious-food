/************返回顶部***********/
//当窗口的内容发生滚动时自动触发
window.onscroll=function(){
    //获得滚动过的距离——网页顶部超出文档显示区顶部的距离
    var scrollTop=document.body.scrollTop
        ||document.documentElement.scrollTop;
    //console.log(scrollTop);
    if(scrollTop>=500){
        fixed_footer_min.style.display="block";
    }else{
        fixed_footer_min.style.display="none";
    }
};