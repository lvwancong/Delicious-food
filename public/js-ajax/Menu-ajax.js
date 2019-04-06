/***菜谱主题轮播 home_index_slider***/
function Menu(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for(var n=0;n<17;n++){
                Pagebodycontentul.innerHTML+= "<li class='imgs carousel-item' style="+"'float: left; display: block;'>"+"<a title="+result[n].mctitle+" href="+"'javascript:void(0);'"+" target="+"'_blank'>"+"<i"+">"+"<img"+" class="+"'imgLoad' src="+result[n].mcurl+" style='display: block;'>"+"</i"+">"+"<div"+" class='os'>"+"</div"+">"+"<p"+" class='line2'>"+result[n].mctitle+"<br"+">"+"<span"+">"+result[n].mcspan+"</span"+">"+"</p"+">"+"</a"+">"+"</li"+">";
            }
        //"<li style="+"'float: left; display: block;'>"+"<a title="+result[n].mctitle+" href="+"'javascript:void(0);'"+" target="+"'_blank'>"+"<i"+">"+"<img"+" class="+"'imgLoad' src="+result[n].mcurl+" style='display: block;'>"+"</i"+">"+"<div"+" class='os'>"+"</div"+">"+"<p"+" class='line2'>"+result[n].mctitle+"<br"+">"+"<span"+">"+result[n].mcspan+"</span"+">"+"</p"+">"+"</a"+">"+"</li"+">";
        }
    };
    var url="logo/MenuCarousel";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = Menu();
/***********commonlyUsedTags常用标签*************/
function CUT(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for(var n=0;n<10;n++){
                recipe_index_n10.innerHTML+="<a href='javascript:void(0);' target='_blank' title="+result[n].cltitle+">"+"<img class='imgLoad' src="+result[n].clurl+" style='display: block;'>"+result[n].cltitle+"</a"+">";
            }
            //"<a href='javascript:void(0);' target='_blank' title="+result[n].cltitle+">"+"<img class='imgLoad' src="+result[n].clurl+" style='display: block;'>"+result[n].cltitle+"</a"+">";
        }
    };
    var url="logo/MenuCommonlyUsedTags";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = CUT();

/***美食菜谱菜单recipeindex_living*****/
function RL(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);

             var a0 = document.getElementById('ui_title_wraph3a00');
             var a1 = document.getElementById('ui_title_wraph3a01');
             var a2 = document.getElementById('ui_title_wraph3a02');
             var a3 = document.getElementById('ui_title_wraph3a03');
             var a4 = document.getElementById('ui_title_wraph3a04');
             var a5 = document.getElementById('ui_title_wraph3a05');
             var a6 = document.getElementById('ui_title_wraph3a06');
             var a7 = document.getElementById('ui_title_wraph3a07');
             var a8 = document.getElementById('ui_title_wraph3a08');
             var a9 = document.getElementById('ui_title_wraph3a09');

             var h0 = document.getElementById('ui_title_wraph300');
             var h1 = document.getElementById('ui_title_wraph301');
             var h2 = document.getElementById('ui_title_wraph302');
             var h3 = document.getElementById('ui_title_wraph303');
             var h4 = document.getElementById('ui_title_wraph304');
             var h5 = document.getElementById('ui_title_wraph305');
             var h6 = document.getElementById('ui_title_wraph306');
             var h7 = document.getElementById('ui_title_wraph307');
             var h8 = document.getElementById('ui_title_wraph308');
             var h9 = document.getElementById('ui_title_wraph309');

             var ul = document.getElementById('big4_listulli00');

             // 默认
            for(var n=60;n<92;n++){
                ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
            }
            //点击事件
            uiloadinga.onclick=function(){
                for(var n=60;n<92;n++){
                    big4_listulli00.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            //最新推荐n=60;n<92;
            // 第一个点击
            a0.onclick=function(){
                h0.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=60;n<92;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            //最新发布n=92;n<124;
            // 第2个点击
            a1.onclick=function(){
                h1.classList.add('on');
                h0.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=92;n<124;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            //热菜n=124;n<156;
            // 第3个点击
            a2.onclick=function(){
                h2.classList.add('on');
                h1.classList.remove('on');
                h0.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=124;n<156;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            //凉菜n=156;n<188;
            // 第4个点击
            a3.onclick=function(){
                h3.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h0.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=156;n<188;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            //汤羹n=188;n<220;
            // 第5个点击
            a4.onclick=function(){
                h4.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h0.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=188;n<220;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
             //主食n=220;n<252;
            // 第6个点击
            a5.onclick = function () {
                h5.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h0.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for (var n=220;n<252; n++) {
                    ul.innerHTML += "<li" + ">" + "<a title=" + result[n].gname + " href='javascript:;'>" + "<i" + ">" + "<img src=" + result[n].purl + " alt=" + '"' + result[n].gname + '"' + "/>" + "</i" + ">" + "<" + "p>" + result[n].gname + "</p" + ">" + "</a" + ">" + "<a" + " class='u'" + " title=" + '"' + result[n].people + '"' + "href='javascript:;'" + ">" + result[n].people + "</a" + ">" + "</" + "li>";
                }
            }
            //小吃n=252;n<284;
            // 第7个点击
            a6.onclick=function(){
                h6.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h0.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=252;n<284;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
             //西餐n=284;n<316;
            // 第8个点击
            a7.onclick=function(){
                h7.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h0.classList.remove('on');
                h8.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=284;n<316;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            //烘焙n=316;n<348;
            // 第9个点击
            a8.onclick=function(){
                h8.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h0.classList.remove('on');
                h9.classList.remove('on');
                ul.innerHTML = '';
                for(var n=316;n<348;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
             //自制食材 n=348;n<380;
            // 第10个点击
            a9.onclick=function(){
                h9.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                h7.classList.remove('on');
                h8.classList.remove('on');
                h0.classList.remove('on');
                ul.innerHTML = '';
                for(var n=348;n<380;n++){
                    ul.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
        }
    };
    var url="logo/egm";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = RL();
