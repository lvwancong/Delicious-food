/***珍选首页轮播 home_index_slider***/
function JaCh(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for (var n = 17; n < result.length; n++) {
                Pagebodycontentul.innerHTML+= "<li class='imgs' style="+"'float: left; display: block;'>"+"<a title="+result[n].mctitle+" href="+"'javascript:void(0);'"+" target="+"'_blank'>"+"<i"+">"+"<img"+" class="+"'imgLoad' src="+result[n].mcurl+" style='display: block;'>"+"</i"+">"+"<div"+" class='os'>"+"</div"+">"+"<p"+" class='line2'>"+result[n].mctitle+"<br"+">"+"<span"+">"+result[n].mcspan+"</span"+">"+"</p"+">"+"</a"+">"+"</li"+">";
            }
        }
    };
    var url="logo/MenuCarousel";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = JaCh();

/***********commonlyUsedTags常用标签*************/
function janech(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            //console.log(result);
            for(var n=10;n<20;n++){
                recipe_index_n10.innerHTML+="<a href='javascript:void(0);' target='_blank' title="+result[n].cltitle+">"+"<img class='imgLoad' src="+result[n].clurl+" style='display: block;'>"+result[n].cltitle+"</a"+">";
            }
            //"<a href='javascript:void(0);' target='_blank' title="+result[n].cltitle+">"+"<img class='imgLoad' src="+result[n].clurl+" style='display: block;'>"+result[n].cltitle+"</a"+">";
        }
    };
    var url="logo/MenuCommonlyUsedTags";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = janech();
/**********************/
/*******珍品发现尖货 TreasureDiscoveryTopGoods********/
function TopGoods(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            var a3 = document.getElementById('JaneChoosea2');
            var a2 = document.getElementById('JaneChoosea3');
            var a1 = document.getElementById('JaneChoosea4');
            var zhen_list_living_ul = document.getElementById('zhen_list_living_ul');
            
            // 默认
            for(var i=0;i<20;i++){
                zhen_list_living_ul.innerHTML +="<li class='feed' style='display: list-item;'><a title="+result[i].Ttitle+" href='javascript:void(0);' target='_blank' class='pic'><i><img class='imgLoad' src="+result[i].Tsrc+" style='display: block;'></i><p>"+result[i].Ttitle+"</p><span>"+'￥'+result[i].Tprice+"</span></a><a target='_blank' class='buy' href='javascript:void(0);' rel='nofollow'> 购买 </a></li>";
            }
             //点击事件
             uiloadinga.onclick = function () {
                for (var i = 20; i < 40; i++) {
                    zhen_list_living_ul.innerHTML += "<li class='feed' style='display: list-item;'><a title=" + result[i].Ttitle + " href='javascript:void(0);' target='_blank' class='pic'><i><img class='imgLoad' src=" + result[i].Tsrc + " style='display: block;'></i><p>" +result[i].Ttitle + "</p><span>" +'￥'+result[i].Tprice + "</span></a><a target='_blank' class='buy' href='javascript:void(0);' rel='nofollow'> 购买 </a></li>";
                }
             }
             // 第一个点击
            a1.onclick=function(){
                a1.classList.add('on');
                a2.classList.remove('on');
                a3.classList.remove('on');
                zhen_list_living_ul.innerHTML = '';
                for(var i=0;i<20;i++){
                    zhen_list_living_ul.innerHTML +="<li class='feed' style='display: list-item;'><a title="+result[i].Ttitle+" href='javascript:void(0);' target='_blank' class='pic'><i><img class='imgLoad' src="+result[i].Tsrc+" style='display: block;'></i><p>"+result[i].Ttitle+"</p><span>"+'￥'+result[i].Tprice+"</span></a><a target='_blank' class='buy' href='javascript:void(0);' rel='nofollow'> 购买 </a></li>";
                }
            }
            // 第二个点击
            a2.onclick=function(){
                a2.classList.add('on');
                a1.classList.remove('on');
                a3.classList.remove('on');
                zhen_list_living_ul.innerHTML = '';
                for(var i=20;i<40;i++){
                    zhen_list_living_ul.innerHTML +="<li class='feed' style='display: list-item;'><a title="+result[i].Ttitle+" href='javascript:void(0);' target='_blank' class='pic'><i><img class='imgLoad' src="+result[i].Tsrc+" style='display: block;'></i><p>"+result[i].Ttitle+"</p><span>"+'￥'+result[i].Tprice+"</span></a><a target='_blank' class='buy' href='javascript:void(0);' rel='nofollow'> 购买 </a></li>";
                }
            }
            // 第三个点击
             a3.onclick=function(){
                a3.classList.add('on');
                a2.classList.remove('on');
                a1.classList.remove('on');
                zhen_list_living_ul.innerHTML = '';
                for(var i=40;i<60;i++){
                    zhen_list_living_ul.innerHTML +="<li class='feed' style='display: list-item;'><a title="+result[i].Ttitle+" href='javascript:void(0);' target='_blank' class='pic'><i><img class='imgLoad' src="+result[i].Tsrc+" style='display: block;'></i><p>"+result[i].Ttitle+"</p><span>"+'￥'+result[i].Tprice+"</span></a><a target='_blank' class='buy' href='javascript:void(0);' rel='nofollow'> 购买 </a></li>";
                }
            }
        }
    };
    var url="logo/TreasureDiscoveryTopGoods";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = TopGoods();
