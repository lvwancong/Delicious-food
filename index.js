const express=require('express');
//引入中间件
const bodyParser=require('body-parser');
//引入用户路由器
const userRouter=require('./routes/user.js');
//引用图片路由器
const logoRouter=require('./routes/logo.js');
//引用文本路由器
const textRouter=require('./routes/text.js');
//创建web服务器
var server=express();
server.listen(5050,(err)=>{
	if(err) throw err;
	console.log('yes');
});
//托管到静态文件到public
server.use(express.static('./public'));
//配置中间件,
//注意：中间件必须在服务器中建立，这样可以使所有模块都可以使用
server.use(bodyParser.urlencoded({
	extended:false
}));
//使用路由器管理路由
//把用户路由器挂载到/user下
server.use('/user',userRouter);
//把图片路由器挂载到/logo下
server.use('/logo',logoRouter);
//把文本路由器挂载到/text
server.use('/text',textRouter);