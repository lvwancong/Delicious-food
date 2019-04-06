const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//statics
router.get('/statics',(req,res)=>{
    sql="select name,source,introduce from eatery_recommend";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});

router.get('/navtitle',(req,res)=>{
    //????????
    sql="select topic from eatery_LabelContent";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});

router.get('/navgoto',(req,res)=>{
    sql="select name from eatery_LabelContent_pic";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});

/********eatery_foodlabelnavigationpage******/

router.get('/foodnava1',(req,res)=>{
    sql="select efnumber,eftitle from eatery_foodclassificationfamily";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});


router.get('/foodnav01',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=1";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        console.log(result.ftitle);
    });
});
router.get('/foodnav02',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=2";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
router.get('/foodnav03',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=3";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
router.get('/foodnav04',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=4";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
router.get('/foodnav05',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=5";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
});
});router.get('/foodnav06',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=6";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
router.get('/foodnav07',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=7";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
router.get('/foodnav08',(req,res)=>{
    sql="select ftitle from eatery_foodlabelnavigationpage where efid=8";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});

/***********HealthRecommendation 健康推荐**********/
router.get('/HealthRecommendation',(req,res)=>{
    sql = "select HRctitle,HRcontent,HRtime from eatery_HealthRecommendation";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});


/*****商品详情页*Commoditydetails*****/
/*Product Details Page Pictures*商品详情页图片*/
router.get('/eatery_Detailsphotos', (req, res) => {
    sql = "select Debusiness,Dename,Deevaluate,Delogo,Deurl,Dehref from eatery_Detailsphotos";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
/**商品材料*Commercialmaterials*/
router.get('/eatery_Commercialmaterials', (req, res) => {
    sql = "select Cocategory,Coclassification,Cocontents,CoNumber,Cohref from eatery_Commercialmaterials";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
/**商品步骤*Practicesteps*/
router.get('/eatery_Practicesteps', (req, res) => {
    sql = "select Prcategory,PrStep,Prtitle,Prsrc,Prhref from eatery_Practicesteps";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});
/**小窍门*Tips*/
router.get('/eatery_Tips', (req, res) => {
    sql = "select Ticategory,Tititle,Tihref from eatery_Tips";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        // console.log(result);
    });
});

module.exports=router;