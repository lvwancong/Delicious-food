const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建空的路由器对象
var router=express.Router();
//添加路由
//logo图片,搜索框,导航菜单图标
router.get('/logotop',(req,res)=>{
	//查询数据库
	sql="select logo,search,optionbaricon,directionOfIndication from eatery_logo";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});
//轮播Carousel图片
router.get('/carousetopimg',(req,res)=>{
	//查询数据库
	sql="select lg from eatery_cate_pic where cate_id=6";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});
//导航页Navigationpage
router.get('/navp',(req,res)=>{
	//查询数据库
	sql="select md from eatery_cate_pic where cate_id=10";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});

/***美食菜谱菜单commodityPattern*****/
router.get('/egm',(req,res)=>{
	//查询数据库
	sql="SELECT gname,gurl,people,purl FROM eatery_gourmet_menu";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});

/***时令食材SeasonalIngredients***/
router.get('/seaIs',(req,res)=>{
	//查询数据库
	sql="SELECT sname,speople,surl FROM eatery_SeasonalIngredients";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});
/**话题日志TopicLog**/
router.get('/TpL',(req,res)=>{
	//查询数据库
	sql="SELECT tname,ttime,tptop,tpeople,tcomment,tlogo,turl FROM eatery_topiclog";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});
/***话题加精TopicLogpic***/
router.get('/TpLp',(req,res)=>{
	//查询数据库
	sql="SELECT topic,toname,topeople,tourl FROM eatery_topiclog_pic";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});

/*<!-- 头部背景照片-->*/
router.get('/aboutus',(req,res)=>{
	//查询数据库
	sql="SELECT bgimage FROM eatery_logo";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});

/***菜谱主题轮播 home_index_slider***/
router.get('/MenuCarousel',(req,res)=>{
	//查询数据库
	sql="select mctitle,mcspan,mcurl from eatery_MenuCarousel";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});
/***********commonlyUsedTags常用标签*************/
router.get('/MenuCommonlyUsedTags',(req,res)=>{
	//查询数据库
	sql="select cltitle,clspan,clurl from eatery_MenuCommonlyUsedTags";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});

/*******珍品发现尖货 TreasureDiscoveryTopGoods********/
router.get('/TreasureDiscoveryTopGoods', (req, res) => {
	//查询数据库
	sql = "select Ttitle,Tprice,Tsrc,Thref from eatery_TreasureDiscoveryTopGoods";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		res.send(result);
		console.log(result);
	});
});

/*** eatery_HealthyHomeRotation 健康首页轮播*****/
router.get('/eatery_HealthyHomeRotation', (req, res) => {
	//查询数据库
	sql = "select Hctitle,Hcspan from eatery_HealthyHomeRotation";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		res.send(result);
		console.log(result);
	});
});

/***********special 专题**********/
/** SELECT * FROM 数据表名称 LIMIT start,count;***分页查询**/
router.get('/eatery_special01', (req, res) => {
	//1:参数 
	var pno = req.query.value;
	var pageSize = 120;
	if (!pno) {
		pno = 1;
	}
	if (!pageSize) {
		pageSize = 24;
	}
	//2:sql
	sql = "select Hsctitle,Hssrc from eatery_special LIMIT ?,?;";
	var offset = (pno - 1) * pageSize;
	pageSize = parseInt(pageSize);
	pool.query(sql, [offset, pageSize], (err, result) => {
		if (err) throw err;
		res.send(result);
		console.log(result);
	});
});


//导出路由器
module.exports=router;