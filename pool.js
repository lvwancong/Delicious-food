//用于创建连接池，哪一个模块需要连接，只需引用此模块即可
//引入mysql模块
const mysql=require('mysql');
var pool=mysql.createPool({
	host     : process.env.MYSQL_HOST,
    port     : process.env.MYSQL_PORT,
    user     : process.env.ACCESSKEY,
    password : process.env.SECRETKEY,
    database : 'app_' + process.env.APPNAME,  //使用的数据库
	connectionLimit:20  //设置连接池的数量
});

//导出连接池对象
module.exports=pool;
