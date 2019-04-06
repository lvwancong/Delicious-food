//logo照片
function navTops(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var resus=JSON.parse(result);
            //导航栏logo图片照片
            l1.innerHTML="<img src="+resus[0].logo+">";
        }
    };
    var url="logo/logotop";
    xhr.open('get',url,true);
    xhr.send();
}
