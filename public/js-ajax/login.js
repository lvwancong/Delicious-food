function login(){

    //1.创建异步对象
    var xhr=new XMLHttpRequest();
    //2.绑定监听事件(接受请求)
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            if(result==1){
                d1.innerHTML='登录成功';
                window.location.href='header.html';
            }else if(result==0){
                d1.innerHTML='用户名或密码错误';
            }
        }
    };
    //3.打开链接(创建请求)【必须】
    var url="/user/postlogin";
    xhr.open('post',url,true);
    //4.发送请求【必须】
    //由于默认请求是text/plain
    //无法传递特殊符号(&)
    //需要设置
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    var formdata="uname="+uname.value+"&upwd="+upwd.value;
    xhr.send(formdata);
}