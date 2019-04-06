//用户名msg
//获取焦点时
function shownameone(){
    msg.style="color:#000;";
    msg.innerHTML="用户名长度在6--12位之间";
};
//失去焦点时，判断用户名是否重复
function shownametwo(){
    var text=uname.value;
    if(text==""){
        msg.style="color:#f00;";
        msg.innerHTML="用户名不能为空";
        return;
    }else if(text.length>=5&&text.length<=10){
        msg.style="color:#000;";
        msg.innerHTML="输入正确";
    }else{
        msg.style="color:#f00;";
        msg.innerHTML="用户名长度在5--10位之间";
        return;
    }
    //1.创建异步请求
    xhr=new XMLHttpRequest();
    //2.监听事件
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            if(result=="1"){
                msg.style="color:#000;";
                msg.innerHTML='用户名可以使用';
                return;
            }else if(result=='0'){
                msg.style="color:#f00;";
                msg.innerHTML='用户名已占用';
                return;
            }
        }
    }
    //3.打开链接，创建请求
    var url="user/inquire";
    xhr.open('post',url,true);
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    var formdata="uname="+uname.value;
    //4.发送请求
    console.log(uname.value)
    xhr.send(formdata);
}
//密码msg1
function showpasswordone(){
    msg1.style="color:#000;";
    msg1.innerHTML="密码长度在6--12位之间";
};
function showpasswordtwo(){
    var text=upwd.value;
    if(text==""){
        msg1.style="color:#f00;";
        msg1.innerHTML="密码不能为空";
        return;
    }else if(text.length>=6&&text.length<=12){
        msg1.style="color:#000;";
        msg1.innerHTML="输入正确";
        return;
    }else{
        msg1.style="color:#f00;";
        msg1.innerHTML="密码长度在6--12位之间";
        return;
    }
}
//邮箱msg2
//一般都是用<正则表达式>来判断. 什么是正则表达式？
//就是用如下特殊符号或其组合来代表某个字符（以下符号可以通配所有字符）
//符号	说明
//.	代表除换行符以外的任意字符
//\w	代表字母或数字或下划线或汉字
//\s	代表任意的空白符
//\d	代表数字
//\b	代表单词的开始或结束
//^	代表字符串的开始
//$	代表字符串的结束
//var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
function showemailone(){
    msg2.style="color:#000;";
    msg2.innerHTML="请输入合法的邮箱地址";
}
function showemailtwo(){
    var text=email.value;
    if(text==""){
        msg2.style="color:#f00;";
        msg2.innerHTML="邮箱不能为空";
        return;
    }else if(text!=""){
        var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
        var isT=reg.test(text);
        if(isT){
            msg2.style="color:#000;";
            msg2.innerHTML="输入正确";
            return false;
        }else{
            msg2.style="color:#f00;";
            msg2.innerHTML="请输入合法的邮箱地址";
            return true;
        }
    }
}
//手机号msg3
function showphoneone(){
    msg3.style="color:#000;";
    msg3.innerHTML="请输入合法的手机号码";
}
function showphonetwo(){
    var text=phone.value;
    if(text==""){
        msg3.style="color:#f00;";
        msg3.innerHTML="手机号码不能为空";
        return;
    }else if(text.length==11){
        msg3.style="color:#000;";
        msg3.innerHTML="输入正确";
        return;
    }else{
        msg3.style="color:#f00;";
        msg3.innerHTML="请输入合法的手机号码";
        return;
    }
}
//注册
function register(){
    //1.创建异步请求
    xhr=new XMLHttpRequest();
    //2.监听事件
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            if(result==1){
                d1.style="color:#000;";
                d1.innerHTML='注册成功';
                window.location.href='login.html';
            }else{
                d1.style="color:#f00;";
                d1.innerHTML='注册失败';
            }

        }
    };
    //3.打开链接，创建请求
    var url="user/reg";
    xhr.open('post',url,true);
    var gender="";
    if(man.checked){
        gender="1";
    }else if(woman.checked){
        gender="0";
    }
    //4.发送请求【必须】
    //由于默认请求是text/plain
    //无法传递特殊符号(&)
    //需要设置
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    var formdata="uname="+uname.value+"&upwd="+upwd.value+"&email="+email.value+"&phone="+phone.value+"&gender="+gender;
    xhr.send(formdata);
}
