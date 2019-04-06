/*<!-- 头部背景照片logo-->*/
function AU(){
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
/*<!-- 头部背景照片-->*/
function AUS(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var resus=JSON.parse(result);
            console.log(resus);
            //导航栏logo图片照片
            show1.style="background: url("+resus[0].bgimage+") no-repeat scroll center center ";
        }
    };
    var url="logo/aboutus";
    xhr.open('get',url,true);
    xhr.send();
}
