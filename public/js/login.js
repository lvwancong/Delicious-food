//用户名msg
//获取焦点时
function shownameone(){
    msg.style="color:#000;";
    msg.innerHTML="用户名长度在5--10位之间";
}
//失去焦点时，判断用户名是否重复
function shownametwo() {
    var text = uname.value;
    if (text.length >= 5 && text.length <= 10) {
        msg.style="color:#000;";
        msg.innerHTML = "格式输入正确";
    } else if (text == "") {
        msg.style="color:red;";
        msg.innerHTML = "用户名不能为空";
        return;
    } else {
        msg.style="color:red;";
        msg.innerHTML = "格式输入错误，用户名长度在5--10位之间";
        return;
    }
}
//密码msg1
function showpasswordone(){
    msg1.style="color:#000;";
    msg1.innerHTML="密码长度在6--12位之间";
}
function showpasswordtwo(){
    var text=upwd.value;
    if(text==""){
        msg1.innerHTML="密码不能为空";
        msg1.style="color:red;";
        return;
    }else if(text.length>=6&&text.length<=12){
        msg1.style="color:#000;";
        msg1.innerHTML="格式输入正确";
        return;
    }else{
        msg1.style="color:red;";
        msg1.innerHTML="格式输入错误，密码长度在6--12位之间";
        return;
    }
}
