const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建空的路由器对象
var router=express.Router();
//添加路由
//1.查询用户
router.post('/inquire',(req,res)=>{
	var $uname=req.body.uname;
	//数据库查询数据
	var sql="SELECT uname FROM eatery_user where uname=?";
	pool.query(sql,[$uname],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("0");
		}else{
			res.send("1");
		}
	});	
});
//2.用户注册
router.post('/reg',(req,res)=>{
	var $uname=req.body.uname;
	if(!$uname){res.send("用户名不存在");return;}
	if($uname.length<5||$uname.length>10){
		res.send("用户名格式错误");return;
	}
	var $upwd=req.body.upwd;
	if(!$upwd){res.send("密码不存在");return;}
	if($upwd.length<6||$upwd.length>12){
		res.send("密码格式错误");return;
	}
	var $email=req.body.email;
	if(!$email){res.send("email不存在");return;}
	var $phone=req.body.phone;
	if(!$phone){res.send("号码不存在");return;}
	if($phone.length!=11){
		res.send("号码格式错误");return;
	}
	var $gender=req.body.gender;
	if(!$gender){res.send("性别不存在");return;}
	//var $gender=req.body.gender;
	//if(!$gender){res.send("性别不存在");return;}
	//数据库修改数据
	var sql="insert into eatery_user values(null,?,?,?,?,null,null,?)"
	pool.query(sql,[$uname,$upwd,$email,$phone,$gender],(err,result)=>{
		if(err) throw err;
		res.send('1');
	});
});
//3.用户登录 postlogin带参数  /user/postlogin
router.post('/postlogin',(req,res)=>{
	//获取参数
	var $uname=req.body.uname;
	var $upwd=req.body.upwd;
	if(!$uname){
		res.send('用户名不存在');
		return;
	}
	if(!$upwd){
		res.send('密码不存在');
		return;
	}
	//查询数据库的操作
	var sql="select * from eatery_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send('1');
		}else{
			res.send('0');
		}
	});
});
//4.查询用户
router.get('/query',(req,res)=>{
	//得到uid
	var $uid=req.query.uid;
	if(!$uid){
		res.send("uid不存在");
		return;
	}
	var sql="select * from eatery_user where uid=?";
	pool.query(sql,[$uid],(err,result)=>{
		if(err)  throw err;
		if(result.length>0){
			res.send(result[0]);
		}else{
			res.send("no");
		}
	});
});
//5修改用户信息
router.post('/updateUser',(req,res)=>{
	var $uid=req.body.uid;
	if(!$uid){res.send("用户名不存在");return;}
	var $uname=req.body.uname;
	if(!$uname){res.send("名字不存在");return;}
	var $upwd=req.body.upwd;
	if(!$upwd){res.send("密码不存在");return;}
	var $email=req.body.email;
	if(!$email){res.send("email不存在");return;}
	var $phone=req.body.phone;
	if(!$phone){res.send("号码不存在");return;}
	var $gender=req.body.gender;
	if(!$gender){res.send("性别不存在");return;}
	//数据库修改数据
	var sql="update eatery_user set "
		+"uname=?,upwd=?,email=?,phone=?,"
		+"gender=? where uid=?";
	pool.query(sql,[$uname,$upwd,$email,$phone,$gender,$uid],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});
//导出路由器
module.exports=router;