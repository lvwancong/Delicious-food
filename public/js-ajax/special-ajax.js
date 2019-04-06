/***********special 专题**********/
/** SELECT * FROM 数据表名称 LIMIT start,count;***分页查询**/
function eatery_special01() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            var a1 = document.getElementById('special_wrap_a01');
            var a2 = document.getElementById('special_wrap_a02');
            var a3 = document.getElementById('special_wrap_a03');
            var a4 = document.getElementById('special_wrap_a04');
            var a5 = document.getElementById('special_wrap_a05');
            var ul = document.getElementById('zhen_listing_index_ul');

            //默认
            for(var i=0;i<24;i++){
                ul.innerHTML+=`<li><a title=`+result[i].Hsctitle+` href="javascript:void(0);" target="_blank"><i><img class="imgLoad" src=`+result[i].Hssrc+` style="display: block;"></i><p>`+result[i].Hsctitle+`</p></a></li>`;
            }
            // 第1个点击
            a1.onclick=function(){
                a1.classList.add('now_page');
                a2.classList.remove('now_page');
                a3.classList.remove('now_page');
                a4.classList.remove('now_page');
                a5.classList.remove('now_page');
                ul.innerHTML = '';
               for (var i = 0; i < 24; i++) {
                  ul.innerHTML+=`<li><a title=`+result[i].Hsctitle+` href="javascript:void(0);" target="_blank"><i><img class="imgLoad" src=`+result[i].Hssrc+` style="display: block;"></i><p>`+result[i].Hsctitle+`</p></a></li>`;
               }
               //分页完返回页面顶端
                document.body.scrollTop = document.documentElement.scrollTop = 0;
            }
            // 第2个点击
            a2.onclick=function(){
                a2.classList.add('now_page');
                a1.classList.remove('now_page');
                a3.classList.remove('now_page');
                a4.classList.remove('now_page');
                a5.classList.remove('now_page');
                ul.innerHTML = '';
               for (var i = 24; i < 48; i++) {
                  ul.innerHTML+=`<li><a title=`+result[i].Hsctitle+` href="javascript:void(0);" target="_blank"><i><img class="imgLoad" src=`+result[i].Hssrc+` style="display: block;"></i><p>`+result[i].Hsctitle+`</p></a></li>`;
               }
               //分页完返回页面顶端
               document.body.scrollTop = document.documentElement.scrollTop = 0;
            }
            // 第3个点击
            a3.onclick=function(){
                a3.classList.add('now_page');
                a2.classList.remove('now_page');
                a1.classList.remove('now_page');
                a4.classList.remove('now_page');
                a5.classList.remove('now_page');
                ul.innerHTML = '';
               for (var i = 48; i < 72; i++) {
                  ul.innerHTML+=`<li><a title=`+result[i].Hsctitle+` href="javascript:void(0);" target="_blank"><i><img class="imgLoad" src=`+result[i].Hssrc+` style="display: block;"></i><p>`+result[i].Hsctitle+`</p></a></li>`;
               }
               //分页完返回页面顶端
               document.body.scrollTop = document.documentElement.scrollTop = 0;
            }
            // 第4个点击
            a4.onclick=function(){
                a4.classList.add('now_page');
                a2.classList.remove('now_page');
                a3.classList.remove('now_page');
                a1.classList.remove('now_page');
                a5.classList.remove('now_page');
                ul.innerHTML = '';
               for (var i = 72; i < 96; i++) {
                  ul.innerHTML+=`<li><a title=`+result[i].Hsctitle+` href="javascript:void(0);" target="_blank"><i><img class="imgLoad" src=`+result[i].Hssrc+` style="display: block;"></i><p>`+result[i].Hsctitle+`</p></a></li>`;
               }
               //分页完返回页面顶端
               document.body.scrollTop = document.documentElement.scrollTop = 0;
            }
            // 第5个点击
            a5.onclick=function(){
                 a5.classList.add('now_page');
                 a2.classList.remove('now_page');
                 a3.classList.remove('now_page');
                 a1.classList.remove('now_page');
                 a4.classList.remove('now_page');
                ul.innerHTML = '';
               for (var i = 96; i < 120; i++) {
                  ul.innerHTML+=`<li><a title=`+result[i].Hsctitle+` href="javascript:void(0);" target="_blank"><i><img class="imgLoad" src=`+result[i].Hssrc+` style="display: block;"></i><p>`+result[i].Hsctitle+`</p></a></li>`;
               }
               //分页完返回页面顶端
               document.body.scrollTop = document.documentElement.scrollTop = 0;
            }
        }
    };
    var url = "logo/eatery_special01";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = eatery_special01();