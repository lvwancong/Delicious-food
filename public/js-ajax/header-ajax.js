//logo照片 //搜索框放大镜图片
function logos(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var resus=JSON.parse(result);
            //导航栏logo图片照片
            l1.innerHTML="<img src="+resus[0].logo+">";
            l2.innerHTML="<img src="+resus[0].logo+">";
            //搜索框放大镜图片
            search.style="background-image: url("+resus[0].search+")";
        }
    };
    var url="logo/logotop";
    xhr.open('get',url,true);
    xhr.send();
}
 
//optionbaricon轮播导航栏图标//directionOfIndication指示方向
function obi(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var resus=JSON.parse(result);
            //轮播导航栏图标
            ii1.innerHTML="<img src="+resus[0].optionbaricon+">";
            ii2.innerHTML="<img src="+resus[1].optionbaricon+">";
            ii3.innerHTML="<img src="+resus[2].optionbaricon+">";
            ii4.innerHTML="<img src="+resus[3].optionbaricon+">";
            ii5.innerHTML="<img src="+resus[4].optionbaricon+">";
            //指示方向图标
            dd1.innerHTML="<img src="+resus[0].directionOfIndication+">";
            dd2.innerHTML="<img src="+resus[0].directionOfIndication+">";
            dd3.innerHTML="<img src="+resus[0].directionOfIndication+">";
            dd4.innerHTML="<img src="+resus[0].directionOfIndication+">";
            dd5.innerHTML="<img src="+resus[0].directionOfIndication+">";      
        }
    };
    var url="logo/logotop";
    xhr.open('get',url,true);
    xhr.send();
}
//首页动态轮播图图片
//carousetopimg
function cti(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var resus=JSON.parse(result);
            // console.log(resus);
            //首页大轮播图片照片
            for(var l of resus){
                 carousetopul000.innerHTML+=`<li><img src="${l.lg}"></li>`;
            }
            
        }
    };
    var url="logo/carousetopimg";
    xhr.open('get',url,true);
    xhr.send();
}
//首页静态轮播
//StaticWheelBroadcasting--->swb
//var html='';
// html+=`<li><a href=javascript:;>obj.title</a><p><span>123123</span><br>31231</p></li>`
function swb(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var result=JSON.parse(result);
            // for(var i=0;i<12;i++){
            //     slidesContainer.innerHTML += `<li class="ll"><h2><a href="javascript:;" id=` + result[i].name + `></a></h2><span id=` + result[i].source+ `></span><br><p id=`+result[i].introduce+`></p></li>`;
            // }
            
            aaa1.innerHTML=result[0].name;
            aaa2.innerHTML=result[1].name;
            aaa3.innerHTML=result[2].name;
            aaa4.innerHTML=result[3].name;
            aaa5.innerHTML=result[4].name;
            aaa6.innerHTML=result[5].name;
            aaa7.innerHTML=result[6].name;
            aaa8.innerHTML=result[7].name;
            aaa9.innerHTML=result[8].name;
            aaa10.innerHTML=result[9].name;
            aaa11.innerHTML=result[10].name;
            aaa12.innerHTML=result[11].name;

            bbb1.innerHTML=result[0].source;
            bbb2.innerHTML=result[1].source;
            bbb3.innerHTML=result[2].source;
            bbb4.innerHTML=result[3].source;
            bbb5.innerHTML=result[4].source;
            bbb6.innerHTML=result[5].source;
            bbb7.innerHTML=result[6].source;
            bbb8.innerHTML=result[7].source;
            bbb9.innerHTML=result[8].source;
            bbb10.innerHTML=result[9].source;
            bbb11.innerHTML=result[10].source;
            bbb12.innerHTML=result[11].source;

            ccc1.innerHTML=result[0].introduce;
            ccc2.innerHTML=result[1].introduce;
            ccc3.innerHTML=result[2].introduce;
            ccc4.innerHTML=result[3].introduce;
            ccc5.innerHTML=result[4].introduce;
            ccc6.innerHTML=result[5].introduce;
            ccc7.innerHTML=result[6].introduce;
            ccc8.innerHTML=result[7].introduce;
            ccc9.innerHTML=result[8].introduce;
            ccc10.innerHTML=result[9].introduce;
            ccc11.innerHTML=result[10].introduce;
            ccc12.innerHTML=result[11].introduce;
        }
    };
    var url="text/statics";
    xhr.open('get',url,true);
    xhr.send();
}
//导航页Navigationpage照片
function navp(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var result=JSON.parse(result);
            //console.log(result);
            NavigationPageOneImg.innerHTML="<img src="+result[0].md+">";
            NavigationPageTwoImg.innerHTML="<img src="+result[1].md+">";
            NavigationPageThreeImg.innerHTML="<img src="+result[2].md+">";
        }

    };
    var url="logo/navp";
    xhr.open('get',url,true);
    xhr.send();
}
//导航页eatery_LabelContent 标题
function ell(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var result=JSON.parse(result);
            //console.log(result);
            navliaa1.innerHTML=result[0].topic;
            navliaa2.innerHTML=result[1].topic;
            navliaa3.innerHTML=result[2].topic;
            navliaa4.innerHTML=result[3].topic;
            //navliaa5.innerHTML=result[4].topic;
            //navliaa6.innerHTML=result[5].topic;
            navlia01.innerHTML=result[4].topic;
            navlia02.innerHTML=result[5].topic;

            navliac1.innerHTML=result[6].topic;
            navliac2.innerHTML=result[7].topic;
            navliac3.innerHTML=result[8].topic;
            navliac4.innerHTML=result[9].topic;
            //navliac5.innerHTML=result[10].topic;
            //navliac6.innerHTML=result[11].topic;
            navlib01.innerHTML=result[10].topic;
            navlib02.innerHTML=result[11].topic;

            navliae1.innerHTML=result[12].topic;
            navliae2.innerHTML=result[13].topic;
            navliae3.innerHTML=result[14].topic;
            //navliae4.innerHTML=result[15].topic;
            //navliae5.innerHTML=result[16].topic;
            //navliae6.innerHTML=result[17].topic;
            navlic01.innerHTML=result[15].topic;
            navlic02.innerHTML=result[16].topic;
            navlic03.innerHTML=result[17].topic;
        }
    };
    var url="text/navtitle";
    xhr.open('get',url,true);
    xhr.send();
}
//导航页eatery_LabelContent_pic 标签名
function ellp(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var result=JSON.parse(result);
            //console.log(result);
            navliab1.innerHTML=result[0].name;
            navliab2.innerHTML=result[1].name;
            navliab3.innerHTML=result[2].name;
            navliab4.innerHTML=result[3].name;
            navliab5.innerHTML=result[4].name;
            navliab6.innerHTML=result[5].name;
            navliab7.innerHTML=result[6].name;
            navliab8.innerHTML=result[7].name;
            navliab9.innerHTML=result[8].name;
            navliab10.innerHTML=result[9].name;
            navliab11.innerHTML=result[10].name;
            navliab12.innerHTML=result[11].name;
            navliab13.innerHTML=result[12].name;
            navliab14.innerHTML=result[13].name;
            navliab15.innerHTML=result[14].name;
            navliab16.innerHTML=result[15].name;
            navliab17.innerHTML=result[16].name;
            navliab18.innerHTML=result[17].name;

            navliad1.innerHTML=result[18].name;
            navliad2.innerHTML=result[19].name;
            navliad3.innerHTML=result[20].name;
            navliad4.innerHTML=result[21].name;
            navliad5.innerHTML=result[22].name;
            navliad6.innerHTML=result[23].name;
            navliad7.innerHTML=result[24].name;
            navliad8.innerHTML=result[25].name;
            navliad9.innerHTML=result[26].name;
            navliad10.innerHTML=result[27].name;
            navliad11.innerHTML=result[28].name;
            navliad12.innerHTML=result[29].name;
            navliad13.innerHTML=result[30].name;
            navliad14.innerHTML=result[31].name;
            navliad15.innerHTML=result[32].name;
            navliad16.innerHTML=result[33].name;
            navliad17.innerHTML=result[34].name;
            navliad18.innerHTML=result[35].name;
        }

    };
    var url="text/navgoto";
    xhr.open('get',url,true);
    xhr.send();
}
/***美食菜谱菜单commodityPattern*****/

function CP(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            var a1 = document.getElementById('ddddha1');
            var a2 = document.getElementById('ddddha2');
            var a3 = document.getElementById('ddddha3');
            var h1 = document.getElementById('ddddh1');
            var h2 = document.getElementById('ddddh2');
            var h3 = document.getElementById('ddddh3');
            var co = document.getElementById('ddulaiii1');
            // 默认
            for(var n=0;n<20;n++){
                co.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
            }
            // 第一个点击
            a1.onclick=function(){
                h1.classList.add('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                co.innerHTML='';
               for (var n = 0; n < 20; n++) {
                   co.innerHTML += "<li" + ">" + "<a title=" + result[n].gname + " href='javascript:;'>" + "<i" + ">" + "<img src=" + result[n].purl + " alt=" + '"' + result[n].gname + '"' + "/>" + "</i" + ">" + "<" + "p>" + result[n].gname + "</p" + ">" + "</a" + ">" + "<a" + " class='u'" + " title=" + '"' + result[n].people + '"' + "href='javascript:;'" + ">" + result[n].people + "</a" + ">" + "</" + "li>";
               }
            }
            // 第二个点击
            a2.onclick=function(){
                h2.classList.add('on');
                h1.classList.remove('on');
                h3.classList.remove('on');
                 co.innerHTML = '';
                for(var n=20;n<40;n++){
                    co.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].people+'"'+"href='javascript:;'"+">"+result[n].people+"</a"+">"+"</"+"li>";
                }
            }
            // 第三个点击
            a3.onclick=function(){
                h3.classList.add('on');
                h1.classList.remove('on');
                h2.classList.remove('on');
                 co.innerHTML = '';
                for(var n=40;n<60;n++){
                    co.innerHTML+="<li"+">"+"<a title="+result[n].gname+" href="+result[n].gurl+">"+"<i"+">"+"<img src="+result[n].purl+" alt="+'"'+result[n].gname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].gname+"</p"+">"+"</a"+">"+"</"+"li>";
                }
            }
            
        }
    };
    var url="logo/egm";
    xhr.open('get',url,true);
    xhr.send();
}

/***时令食材SeasonalIngredients***/
function SI(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for(var n=0;n<14;n++){
                SeasonalIngredientstwo_ul.innerHTML+="<li"+">"+"<a title="+result[n].sname+" href='javascript:;'"+" target="+"'_blank'>"+"<img src="+result[n].surl+" style="+'"'+"display: block;"+'"'+"/>"+"</a"+">"+"<"+"span>"+result[n].sname+"</span"+">"+"</"+"li>";
            }
        }
    };
    var url="logo/seaIs";
    xhr.open('get',url,true);
    xhr.send();
}

/**话题日志TopicLog**/
function TL(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for(var n=0;n<=10;n++){
                TopicLogtwoul.innerHTML+="<li"+">"+"<div"+" class="+"'u'>"+"<a"+" href="+"'javascript:;'"+" target="+"'_blank'>"+"<img"+" width="+"'40'"+" height="+"'40'"+" class="+"'imgLoad'"+" src="+result[n].tlogo+" style="+"display:"+"' block;'>"+"</a"+">"+"<div"+">"+"<a"+" href="+"'javascript:;'"+" class="+"'t'"+" target="+"'_blank'>"+result[n].tname+"</a"+">"+"<span"+">"+result[n].ttime+"</span"+">"+"</div"+">"+"</div"+">"+"<div"+" class="+"'c clear'>"+"<div"+" class="+"'pp'>"+"<a"+" href="+"'javascript:;'"+" target="+"'_blank'>"+result[n].tpeople+"</a"+">"+"</div"+">"+"<a"+" class="+"'clear'"+" href="+"'javascript:;'"+" target="+"'_blank'>"+"<img"+" class="+"'imgLoad'"+" src="+result[n].turl+" style="+"'display: block;'>"+"</a"+">"+"<span"+">"+result[n].tcomment+"</span"+">"+"</div"+">"+"</li"+">";
            }
            for(var n=11;n<20;n++) {
                TopicLogtwoul.innerHTML += "<li" + ">" + "<div" + " class=" + "'u'>" + "<a" + " href=" + "'javascript:;'" + " target=" + "'_blank'>" + "<img" + " width=" + "'40'" + " height=" + "'40'" + " class=" + "'imgLoad'" + " src=" + result[n].tlogo + " style=" + "display:" + "' block;'>" + "</a" + ">" + "<div" + ">" + "<a" + " href=" + "'javascript:;'" + " class=" + "'t'" + " target=" + "'_blank'>" + result[n].tname + "</a" + ">" + "<span" + ">" + result[n].ttime + "</span" + ">" + "</div" + ">" + "</div" + ">" + "<div" + " class=" + "'c clear'>" + "<div" + " class=" + "'pp'>" + "<a" + " href=" + "'javascript:;'" + " target=" + "'_blank'>" + "<strong" + ">" + result[n].tptop + "</strong" +"> "+" <br"+">" + result[n].tpeople + "</a" + ">" + "</div" + ">" + "<a" + " class=" + "'clear'" + " href=" + "'javascript:;'" + " target=" + "'_blank'>" + "<img" + " class=" + "'imgLoad'" + " src=" + result[n].turl + " style=" + "'display: block;'>" + "</a" + ">" + "<span" + ">" + result[n].tcomment + "</span" + ">" + "</div" + ">" + "</li" + ">";
            }

        }
    };
    var url="logo/TpL";
    xhr.open('get',url,true);
    xhr.send();
}

/***话题加精TopicLogpic***/
function TpLs(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for(var n=0;n<20;n++){
                TopicLogthreeul.innerHTML+="<li"+">"+"<a title="+result[n].topic+result[n].toname+" href='javascript:;'>"+"<i"+">"+"<img src="+result[n].tourl+" alt="+'"'+result[n].topic+result[n].toname+'"'+"/>"+"</i"+">"+"<"+"p>"+result[n].toname+"</p"+">"+"</a"+">"+"<a"+" class='u'"+" title="+'"'+result[n].topeople+'"'+"href='javascript:;'"+">"+result[n].topeople+"</a"+">"+"</"+"li>";
            }
        }
    };
    var url="logo/TpLp";
    xhr.open('get',url,true);
    xhr.send();
}