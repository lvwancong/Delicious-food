function foodnava1(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_01.innerHTML="<h3>"+results[0].eftitle+"</h3>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava1();

function foodnava2(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_02.innerHTML = "<h3>" + results[1].eftitle + "</h3><b id='foodnava2' style='display:none;'>" + results[1].efnumber + "</b>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava2();

function foodnava3(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_03.innerHTML = "<h3>" + results[2].eftitle + "</h3><b id='foodnava3' style='display:none;'>" + results[2].efnumber + "</b>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava3();

function foodnava4(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_04.innerHTML = "<h3>" + results[3].eftitle + "</h3><b id='foodnava4' style='display:none;'>" + results[3].efnumber + "</b>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava4();

function foodnava5(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_05.innerHTML = "<h3>" + results[4].eftitle + "</h3><b id='foodnava5' style='display:none;'>" + results[4].efnumber + "</b>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava5();

function foodnava6() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var results = JSON.parse(result);
            category_sub_div_06.innerHTML = "<h3>" + results[5].eftitle + "</h3><b id='foodnava6' style='display:none;'>" + results[5].efnumber + "</b>";
        }
    };
    var url = "text/foodnava1";
    xhr.open('get', url, true);
    xhr.send();
}
window.onload = foodnava6();

function foodnava7(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_07.innerHTML = "<h3>" + results[6].eftitle + "</h3><b id='foodnava7' style='display:none;'>" + results[6].efnumber + "</b>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava7();

function foodnava8(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            category_sub_div_08.innerHTML = "<h3>" + results[7].eftitle + "</h3><b id='foodnava8' style='display:none;'>" + results[7].efnumber + "</b>";
        }
    };
    var url="text/foodnava1";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnava8();


function foodnav01(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);
            var a="";
            for(var i=0;i<results.length;i++){
                // console.log(results.length);
                // console.log(results[i].ftitle);
                var title = results[i].ftitle;
                a += `<li><a title=` + title + ` href='javascript:void(0);' target='_blank'>` + results[i].ftitle + `</a></li>`;
            }
            category_sub_ul_01.innerHTML=a;
        }
    };
    var url="text/foodnav01";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav01();

function foodnav02(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            var a1="";
            // console.log(results);
            for(var i=0;i<results.length;i++){
                a1+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            category_sub_ul_02.innerHTML=a1;
        }
    };
    var url="text/foodnav02";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav02();

function foodnav03(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);            
            for(var i=0;i<results.length;i++){
                category_sub_ul_03.innerHTML+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            
        }
    };
    var url="text/foodnav03";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav03();

function foodnav04(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);            
            for(var i=0;i<results.length;i++){
                category_sub_ul_04.innerHTML+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            
        }
    };
    var url="text/foodnav04";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav04();

function foodnav05(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);
            for(var i=0;i<results.length;i++){
                category_sub_ul_05.innerHTML+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            
        }
    };
    var url="text/foodnav05";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav05();

function foodnav06(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);
            for(var i=0;i<results.length;i++){
                category_sub_ul_06.innerHTML+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            
        }
    };
    var url="text/foodnav06";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav06();

function foodnav07(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);
            for(var i=0;i<results.length;i++){
                category_sub_ul_07.innerHTML+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            
        }
    };
    var url="text/foodnav07";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav07();

function foodnav08(){
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4&&xhr.status==200){
            var result=xhr.responseText;
            var results=JSON.parse(result);
            // console.log(results);
            for(var i=0;i<results.length;i++){
                category_sub_ul_08.innerHTML+="<li><a title="+results[i].ftitle+" href='javascript:void(0);' target='_blank'>"+results[i].ftitle+"</a></li>";
            }
            
        }
    };
    var url="text/foodnav08";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = foodnav08();
