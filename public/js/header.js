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
/************顶部轮播底部************/
    var ula = document.getElementById("slidesContainer");
    var lefta = document.getElementById("prevBtnpbtn");
    var righta = document.getElementById("nextBtnpbtn");
    var widtha = 303;
    var pica = 0;
    lefta.onclick=function(){
        pica -= widtha;
        ula.style.left=pica+"px";
    }
    righta.onclick=function(){
        pica += widtha;
        ula.style.left = pica + "px";
    }
/*************多标签页**************************/
NavigationPage_two.onclick=function(){
    var NavigationPage_two = document.getElementById('NavigationPage_two');
    var NavigationPage_three = document.getElementById('NavigationPage_three');
    var ui_title_wrap_one = document.getElementById('ui_title_wrap_one');
    var ui_title_wrap_two = document.getElementById('ui_title_wrap_two');
    var tabtwo = document.getElementById('NavigationPage_one_two');
    var tabthree = document.getElementById('NavigationPage_one_three');
    var isT=true;
    if(isT){
        tabtwo.style="display: block;";
        tabthree.style="display: none;";
        ui_title_wrap_two.style="border-bottom:0;";
        ui_title_wrap_one.style="border-bottom: 3px solid #ff6767;";
        NavigationPage_two.style="color: #ff6767;";
        NavigationPage_three.style="color: #000;";
        isT=false;
    }
};
NavigationPage_three.onclick=function(){
    var NavigationPage_two = document.getElementById('NavigationPage_two');
    var NavigationPage_three = document.getElementById('NavigationPage_three');
    var ui_title_wrap_one = document.getElementById('ui_title_wrap_one');
    var ui_title_wrap_two = document.getElementById('ui_title_wrap_two');
    var tabtwo = document.getElementById('NavigationPage_one_two');
    var tabthree = document.getElementById('NavigationPage_one_three');
    var isT=true;
    if(isT){
        tabtwo.style="display: none;";
        tabthree.style="display: block;";
        ui_title_wrap_one.style="border-bottom:0;";
        ui_title_wrap_two.style="border-bottom: 3px solid #ff6767;";
        NavigationPage_three.style="color: #ff6767;";
        NavigationPage_two.style="color: #000;";
        isT=false;
    }
};
NavigationPage_onetwo.onclick=function(){
    var one = document.getElementById('NavigationPage_onetwo');
    var two = document.getElementById('NavigationPage_onethree');
    var wrap_one = document.getElementById('ui_title_wrap_three');
    var wrap_two = document.getElementById('ui_title_wrap_four');
    var NavigationPage_two = document.getElementById('NavigationPage_two_two');
    var NavigationPage_three = document.getElementById('NavigationPage_two_three');
    var isT=true;
    if(isT){
        NavigationPage_three.style="display: none;";
        NavigationPage_two.style="display: block;";
        wrap_two.style="border-bottom:0;";
        wrap_one.style="border-bottom: 3px solid #ff6767;";
        one.style="color: #ff6767;";
        two.style="color: #000;";
        isT=false;
    }
};
NavigationPage_onethree.onclick=function(){
    var one = document.getElementById('NavigationPage_onetwo');
    var two = document.getElementById('NavigationPage_onethree');
    var wrap_one = document.getElementById('ui_title_wrap_three');
    var wrap_two = document.getElementById('ui_title_wrap_four');
    var NavigationPage_two = document.getElementById('NavigationPage_two_two');
    var NavigationPage_three = document.getElementById('NavigationPage_two_three');
    var isT=true;
    if(isT){
        NavigationPage_two.style="display: none;";
        NavigationPage_three.style="display: block;";
        wrap_one.style="border-bottom:0;";
        wrap_two.style="border-bottom: 3px solid #ff6767;";
        two.style="color: #ff6767;";
        one.style="color: #000;";
        isT=false;
    }
};
//<!--话题日志TopicLog-->
TopicLogonewraph3a1.onclick=function(){
    var a1 = document.getElementById('TopicLogonewraph3a1');
    var a2 = document.getElementById('TopicLogonewraph3a2');
    var h1 = document.getElementById('TopicLogonewraph31');
    var h2 = document.getElementById('TopicLogonewraph32');
    var ul1 = document.getElementById('TopicLogtwoul');
    var ul2 = document.getElementById('TopicLogthreeul');
    var isT=true;
    if(isT){
        ul1.style="display: block;";
        ul2.style="display: none;";
        h1.style="border-bottom: 3px solid #ff6767;";
        h2.style="border-bottom:0;";
        a1.style="color: #ff6767;";
        a2.style="color: #000;";
        isT=false;
    }
};
TopicLogonewraph3a2.onclick=function(){
    var a1 = document.getElementById('TopicLogonewraph3a1');
    var a2 = document.getElementById('TopicLogonewraph3a2');
    var h1 = document.getElementById('TopicLogonewraph31');
    var h2 = document.getElementById('TopicLogonewraph32');
    var ul1 = document.getElementById('TopicLogtwoul');
    var ul2 = document.getElementById('TopicLogthreeul');
   var isT=true;
    if(isT){
        ul2.style="display: block;";
        ul1.style="display: none;";
        h2.style="border-bottom: 3px solid #ff6767;";
        h1.style="border-bottom:0;";
        a2.style="color: #ff6767;";
        a1.style="color: #000;";
        isT=false;
    }
};