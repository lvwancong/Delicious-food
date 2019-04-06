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
window.onload = logos();