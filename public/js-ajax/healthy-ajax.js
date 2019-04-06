/***健康 轮播 HealthyHome***/
function HealthyHome() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            for(var i=0;i<result.length;i++){
                Pagebodycontentul.innerHTML += "<li style='float: left; display: block';><a title=" + result[i].Hctitle + " href='javascript:void(0);' target='_blank'><i><img class='imgLoad' src=" + result[i].Hcspan + "></i><div class='os'></div><h4>" + result[i].Hctitle + "</h4></a></li>";
            }
        
        }
    };
    var url = "logo/eatery_HealthyHomeRotation";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = HealthyHome();

/***********HealthRecommendation 健康推荐**********/
function HealthRecommendation() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            var h1 = document.getElementById('healthydh31');
            var h2 = document.getElementById('healthydh32');
            var h3 = document.getElementById('healthydh33');
            var h4 = document.getElementById('healthydh34');
            var h5 = document.getElementById('healthydh35');
            var h6 = document.getElementById('healthydh36');

            var a1 = document.getElementById('healthydh31a1');
            var a2 = document.getElementById('healthydh32a2');
            var a3 = document.getElementById('healthydh33a3');
            var a4 = document.getElementById('healthydh34a4');
            var a5 = document.getElementById('healthydh35a5');
            var a6 = document.getElementById('healthydh36a6');

            var healthydul = document.getElementById('healthydul');

            //默认
            for(var i=0;i<20;i++){
                healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
            }

            //点击事件
             cms_list_loading.onclick = function () {
                for (var i = 40; i < 60; i++) {
                    healthydul.innerHTML += `<li class="nopic"><div class="pic"><a title=` + result[i].HRctitle + ` href="javascript:void(0);" target="_blank"><img alt=` + result[i].HRctitle + ` width="160" height="120"></a></div> <div class="detail"><h4> <a title=` + result[i].HRctitle + ` target="_blank" href="javascript:void(0);">` + result[i].HRctitle + `</a></h4><p class="substatus">` + result[i].HRtime + `</p><p class="subcontent">` + result[i].HRcontent + `</p></div></li>`;
                }
             }
            // 第1个点击
            a1.onclick=function(){
                h1.classList.add('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                healthydul.innerHTML='';
               for (var i = 0; i < 20; i++) {
                  healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
               }
            }
            // 第2个点击
            a2.onclick=function(){
                h2.classList.add('on');
                h1.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                healthydul.innerHTML='';
               for (var i = 20; i < 40; i++) {
                   healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
               }
            }
            // 第3个点击
            a3.onclick=function(){
                h3.classList.add('on');
                h2.classList.remove('on');
                h1.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                healthydul.innerHTML='';
               for (var i = 40; i < 60; i++) {
                   healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
               }
            }
            // 第4个点击
            a4.onclick=function(){
                h4.classList.add('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h1.classList.remove('on');
                h5.classList.remove('on');
                h6.classList.remove('on');
                healthydul.innerHTML='';
               for (var i = 60; i < 80; i++) {
                   healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
               }
            }
            // 第5个点击
            a5.onclick=function(){
                h5.classList.add('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h1.classList.remove('on');
                h6.classList.remove('on');
                healthydul.innerHTML='';
               for (var i = 80; i < 100; i++) {
                   healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
               }
            }
           // 第6个点击
            a6.onclick=function(){
                h6.classList.add('on');
                h2.classList.remove('on');
                h3.classList.remove('on');
                h4.classList.remove('on');
                h5.classList.remove('on');
                h1.classList.remove('on');
                healthydul.innerHTML='';
               for (var i = 100; i < 120; i++) {
                   healthydul.innerHTML +=`<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
               }
            }
            
        }
        // `<li class="nopic"><div class="pic"><a title=`+result[i].HRctitle+` href="javascript:void(0);" target="_blank"><img alt=`+result[i].HRctitle+` width="160" height="120"></a></div> <div class="detail"><h4> <a title=`+result[i].HRctitle+` target="_blank" href="javascript:void(0);">`+result[i].HRctitle+`</a></h4><p class="substatus">`+result[i].HRtime+`</p><p class="subcontent">`+result[i].HRcontent+`</p></div></li>`;
    };
    var url = "text/HealthRecommendation";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = HealthRecommendation();
