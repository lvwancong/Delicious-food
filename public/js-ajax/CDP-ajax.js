/*Product Details Page Pictures*商品详情页图片*/
function Detail() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            space_left_userTop.innerHTML = `<h1 class="recipe_De_title">
                    <a href="javascript:void(0);" id="recipe_title" title=`+result[0].Dename+`>`+result[0].Dename+`</a>
                </h1>
                <a title=`+result[0].Debusiness+` href="javascript:void(0);" target="_blank" class="uright">
                    <img src=`+result[0].Delogo+` alt="">
                    <span class="userName" id="recipe_username">`+result[0].Debusiness+`</span>
                </a>`;
            recipe_De_imgBox_small_img.innerHTML = `<img src=`+result[0].Deurl+` alt="">`;
            big.innerHTML = `<img src=` + result[0].Deurl + ` alt="">`;
            block_txt1.innerHTML= `<span class="txt_tart">“</span>`+result[0].Deevaluate+`<span class="txt_end">” </span>`
        }
    };
    var url="text/eatery_Detailsphotos";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = Detail();

/**商品材料*Commercialmaterials*/
function cialmate() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            scmx.innerHTML = `<h3>`+result[0].Cocategory+`</h3>`;
            for(var i=1;i<result.length;i++){
                 particulars.innerHTML += `<fieldset  class="particulars"><legend>`+result[i].Coclassification+`</legend>
                            <div class="recipeCategory_sub_R clear">
                                <ul>
                                    <li>
                                        <span class="category_s1">
                                            <a target="_blank" href="javascript:void(0);"
                                                title=`+result[i].Cocontents+`><b>`+result[i].Cocontents+`</b></a>
                                        </span>
                                        <span class="category_s2">`+result[i].CoNumber+`</span>
                                    </li>
                                </ul>
                            </div> </fieldset>`;
            }
           
        }
    };
    var url="text/eatery_Commercialmaterials";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = cialmate();

/**商品步骤*Practicesteps*/
function Practic() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            hsrdzfbz.innerHTML = `<h3>`+result[0].Prcategory+`</h3>`;
            for(var i=0;i<result.length;i++){
                recipeStep.innerHTML += `
                <div class="recipeStep">
                    <ul>
                        <li>
                            <div class="recipeStep_img"> 
                                <img src = `+result[i].Prsrc+` alt=""></div><div class="recipeStep_word">
                                <div class = "recipeStep_num">`+result[i].PrStep+`</div>`+result[i].Prtitle+`
                            </div>
                        </li>
                    </ul>
                </div>`;
            }
        }
    };
    var url="text/eatery_Practicesteps";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = Practic();

/**小窍门*Tips*/
function eatery_Tips() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var result = xhr.responseText;
            var result = JSON.parse(result);
            console.log(result);
            xqm.innerHTML = `<h3>` + result[0].Ticategory + `</h3>`;
            for(var i=0;i<result.length;i++){
                recipeTip.innerHTML += `<br>`+result[i].Tititle+`<br>`;
            }
        }
    };
    var url="text/eatery_Tips";
    xhr.open('get',url,true);
    xhr.send();
}
window.onload = eatery_Tips();