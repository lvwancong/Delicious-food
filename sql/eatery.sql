#用户信息
CREATE TABLE eatery_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
#美食分类
CREATE TABLE eatery_cate_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
#美食信息
CREATE TABLE eatery_cate(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格
  lname VARCHAR(32),          #商品名称
  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);
#美食图片
CREATE TABLE eatery_cate_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  cate_id INT,		      #美食类别编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
#logo商标
create table eatery_logo(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  logo varchar(128),    #logo 商标
  search varchar(128),  #search 图标
  optionbaricon varchar(128),  #optionbaricon 图标
  directionOfIndication varchar(128), #directionOfIndication  指示方向
  bgimage varchar(128)      #背景图片
);
#收货地址信息
CREATE TABLE eatery_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);
#购物车条目
CREATE TABLE eatery_shoppingCart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);
#用户订单
CREATE TABLE eatery_order(
   oid INT PRIMARY KEY AUTO_INCREMENT,
   order_id INT,           #订单编号
   product_id INT,         #产品编号
   count INT               #购买数量
);
#用户订单详情
CREATE TABLE eatery_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;
#***用户推荐******
CREATE TABLE eatery_recommend(
   rid INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(128),           #推荐名称
   source VARCHAR(128),         #推荐来源
   introduce VARCHAR(128)      #推荐介绍
);
#**标签页内容LabelContent***
CREATE TABLE eatery_LabelContent(
   Lid INT PRIMARY KEY AUTO_INCREMENT,
   Lname int,      #分类
   topic VARCHAR(128)       #标签话题
);
CREATE TABLE eatery_LabelContent_pic(
  lpid INT PRIMARY KEY AUTO_INCREMENT,
  pname int,       #分类
  name VARCHAR(128)           #标签名字
);
#*美食菜谱菜单eatery_gourmet_menu***
CREATE TABLE eatery_gourmet_menu(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  gurl varchar(128), #商品详情路径
  gname varchar(128),    #商品名称
  people varchar(128),    #商品推荐人
  purl varchar(128)#商品图片路径
);
#*时令食材SeasonalIngredients*
CREATE TABLE eatery_SeasonalIngredients(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  sname varchar(128),    #食材名称
  speople varchar(128),    #食材推荐人
  surl varchar(128)#食材图片路径
);
#话题日志TopicLog
CREATE TABLE eatery_TopicLog(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname varchar(128),     #食材推荐人名称
  ttime varchar(128),     #食材推荐相对时间
  tptop varchar(128),     #话题日志标题
  tpeople varchar(128),   #话题日志内容
  tcomment varchar(128),  #话题日志内容评论数量
  tlogo varchar(128),     #食材推荐人头像
  turl varchar(128)       #食材图片路径
);
#*话题加精*
CREATE TABLE eatery_TopicLog_pic(
  toid INT PRIMARY KEY AUTO_INCREMENT,
  topic varchar(128),     #加精分类
  toname varchar(128),    #食材名称
  topeople varchar(128),  #食材推荐人
  tourl varchar(128)      #食材图片路径
);
#***************
#****数据导入****
#***************
#美食分类
INSERT INTO eatery_cate_family VALUES
(NULL,'自助餐'),
(NULL,'海鲜'),
(NULL,'火锅'),
(NULL,'小吃快餐'),
(NULL,'中式烧烤'),
(NULL,'家常菜'),
(NULL,'生鲜蔬果'),
(NULL,'素食'),
(NULL,'汤'),
(NULL,'西餐');
#美食信息
INSERT INTO eatery_cate VALUES
(null,1,null,null,12,null,null,null,'20180201',25,true),
(null,1,null,null,12,null,null,null,'20180201',25,true),
(null,1,null,null,12,null,null,null,'20180201',25,true),
(null,2,null,null,12,null,null,null,'20180201',25,true),
(null,2,null,null,12,null,null,null,'20180201',25,true),
(null,2,null,null,12,null,null,null,'20180201',25,true),
(null,3,null,null,12,null,null,null,'20180201',25,true),
(null,3,null,null,12,null,null,null,'20180201',25,true),
(null,3,null,null,12,null,null,null,'20180201',25,true),
(null,4,null,null,12,null,null,null,'20180201',25,true),
(null,4,null,null,12,null,null,null,'20180201',25,true),
(null,4,null,null,12,null,null,null,'20180201',25,true),
(null,5,null,null,12,null,null,null,'20180201',25,true),
(null,5,null,null,12,null,null,null,'20180201',25,true),
(null,5,null,null,12,null,null,null,'20180201',25,true),
(null,6,null,null,12,null,null,null,'20180201',25,true),
(null,6,null,null,12,null,null,null,'20180201',25,true),
(null,6,null,null,12,null,null,null,'20180201',25,true),
(null,7,null,null,12,null,null,null,'20180201',25,true),
(null,7,null,null,12,null,null,null,'20180201',25,true),
(null,7,null,null,12,null,null,null,'20180201',25,true),
(null,8,null,null,12,null,null,null,'20180201',25,true),
(null,8,null,null,12,null,null,null,'20180201',25,true),
(null,8,null,null,12,null,null,null,'20180201',25,true),
(null,9,null,null,12,null,null,null,'20180201',25,true),
(null,9,null,null,12,null,null,null,'20180201',25,true),
(null,9,null,null,12,null,null,null,'20180201',25,true),
(null,10,null,null,12,null,null,null,'20180201',25,true),
(null,10,null,null,12,null,null,null,'20180201',25,true),
(null,10,null,null,12,null,null,null,'20180201',25,true);
#美食图片
INSERT INTO eatery_cate_pic VALUES
(null,1,null,null,null),
(null,1,null,null,null),
(null,1,null,null,null),
(null,2,null,null,null),
(null,2,null,null,null),
(null,2,null,null,null),
(null,3,null,null,null),
(null,3,null,null,null),
(null,3,null,null,null),
(null,4,null,null,null),
(null,4,null,null,null),
(null,4,null,null,null),
(null,5,null,null,null),
(null,5,null,null,null),
(null,5,null,null,null),
(null,6,null,null,"../img/cate/HomeDishes/lg/01.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/02.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/03.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/04.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/05.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/06.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/07.jpg"),
(null,6,null,null,"../img/cate/HomeDishes/lg/08.jpg"),
(null,7,null,null,null),
(null,7,null,null,null),
(null,7,null,null,null),
(null,8,null,null,null),
(null,8,null,null,null),
(null,8,null,null,null),
(null,9,null,null,null),
(null,9,null,null,null),
(null,9,null,null,null),
(null,10,null,"../img/NavigationPage/NavigationPage01.jpg",null),
(null,10,null,"../img/NavigationPage/NavigationPage02.jpg",null),
(null,10,null,"../img/NavigationPage/NavigationPage03.png",null);
#logo商标
INSERT INTO eatery_logo values
(null,"../img/logo/logo.png","../img/search/search.png","../img/Optionbaricon/caipu.png","../img/directionOfIndication/svg02-copy.png","../img/background/login.jpg"),
(null,null,null,"../img/Optionbaricon/shicai.png",null,null),
(null,null,null,"../img/Optionbaricon/yinshijiankang.png",null,null),
(null,null,null,"../img/Optionbaricon/zhuanti.png",null,null),
(null,null,null,"../img/Optionbaricon/dianzan.png",null,null);
#用户信息
INSERT INTO eatery_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
#收货地址信息
insert into eatery_receiver_address values
(null,null,'xiaoming','河南省','郑州市','兰考县','北京五道口','14012563655','03712555','123456',null,true),
(null,null,'xiaosdsdg','河南省','南阳市','兰考县','胜利路225号','14012563655','03712555','123456',null,true),
(null,null,'xiaomisg','河南省','商丘市','兰考县','北京五道口','14012563655','03712555','123456',null,true),
(null,null,'xiaomsdsng','河南省','新乡市','兰考县','北京五道口','14012563655','03712555','123456',null,true),
(null,null,'xiaomsdsdg','河南省','郑州市','兰考县','北京五道口','14012563655','03712555','123456',null,true),
(null,null,'xiasdsdng','河南省','郑州市','兰考县','北京五道口','14012563655','03712555','123456',null,true),
(null,null,'xidfdfing','河南省','郑州市','兰考县','北京五道口','14012563655','03712555','123456',null,true);
#购物车条目
insert into eatery_shoppingcart_item values
(null,null,'001','2',true),
(null,null,'002','2',true),
(null,null,'003','2',true),
(null,null,'004','2',true),
(null,null,'005','2',true),
(null,null,'006','2',true),
(null,null,'007','2',true);
#用户订单
insert into eatery_order values
(null,'007','002289','2'),
(null,'007','0022819','2'),
(null,'007','00225','2'),
(null,'007','002285','2'),
(null,'007','00226','2'),
(null,'007','0022879','2'),
(null,'007','0022859','2');
#用户订单详情
insert into eatery_order_detail values
(null,null,null,1,'20180201','20180222','20180215','20180222'),
(null,null,null,2,'20180201','20180222','20180215','20180222'),
(null,null,null,3,'20180201','20180222','20180215','20180222'),
(null,null,null,4,'20180201','20180222','20180215','20180222'),
(null,null,null,5,'20180201','20180222','20180215','20180222');

#用户推荐
insert into eatery_recommend values
(null,'腊月二十九，来过油','小美的菜单  ','腊月二十九在民间被称为“小除夕”，也叫“过赶年”，这一天做各种炸物的习俗。'),
(null,"地方传统特色美食","泡泡鱼的菜单  ","博大精深的中国传统饮食，应该被很好地记录和记得，这些食物或许鲜为人知，但却独具特色！"),
(null,"家常版简单早餐饼","做个吃货就好的菜单  ","简单好吃的早餐饼，十几分钟就能做好。每次做都不够吃，做法简单，保证你一学就会！"),
(null,"蒸菜：厨房小白也能搞定！","黄媾的菜单  ","厨房小白想要学做一些简单又快速又好吃的菜？那就来学蒸菜吧！学会蒸菜，满满全是爱～"),
(null,"没有烤箱也能做的甜点！","请输入您的新昵称的菜单  ","想自己做甜品却没有烤箱？不用担心，送你这些免烤小甜点，抛开所有烦恼尽享味蕾狂欢！"),
(null,"好面不怕香过头","貌四不能玩了的菜单  ","各种面条的做法合集，喜欢吃面的亲们千万不要错过！一天一碗不重样，值得妈妈们保存哦～"),
(null,"雨水养生：防寒湿、养脾脏","小美的菜单  ","春季养脾的重点在于调畅肝脏，保持肝气调和顺畅，在饮食上要保持均衡，其次，要注意健脾利湿。"),
(null,"快手素菜合集","阴小刀的菜单  ","今儿发几个快手好做的素菜吧，要减肥的，想清肠的，节后带饭的，快手收藏啦～ ​"),
(null,"鸡蛋的做法大全","旺仔好奶奶的菜单  ","营养丰富的鸡蛋简直是百搭食材，无论怎么做都好吃，这些家常做法你一定要学会哦～"),
(null,"如何消灭冰箱“囤货”？","疯兔天苹的菜单    ","过年少不了一桌又一桌的丰盛大餐。酒足饭饱之后，冰箱里剩饭剩菜怎么办？不如换个花样试试看！"),
(null,"春节家宴：五福临门","小美的菜单    ","新年来道吉祥菜“五福临门”，在新的一年里，希望大家在生活中幸福美满，五福临门。"),
(null,"春节家宴：花开富贵","小美的菜单    ","花开富贵代表了人们对美满幸福生活富有和高贵的向往。新的一年祝大家工作与生活中和和美美，花开富贵。");
#***标签页内容eatery_LabelContent*
insert into eatery_LabelContent values
(null,1,"春日美容排毒，吃出好皮肤"),
(null,1,"春季养生汤，滋补又养颜"),
(null,1,"气虚的人要及时补气 否则容易疾病缠身"),
(null,1,"春天美容养颜，吃什么好排毒？"),
(null,1,"那些美颜食物的神级吃法"),
(null,1,"低卡减肥餐，让你瘦到飞起来"),
(null,2,"蔓越莓蜜豆软欧早餐包"),
(null,2,"自制美味的花生牛轧糖"),
(null,2,"内藏惊喜的彩虹戚风蛋糕"),
(null,2,"消耗蛋挞皮－简单版红薯酥"),
(null,2,"奥利奥的N种百搭吃法"),
(null,2,"另类咸香口儿 满足你的味蕾！"),
(null,3,"年末食5物，增强宝宝抵抗力"),
(null,3,"划重点！食物降血脂这些更有效"),
(null,3,"粗粮细作：健康能量燕麦甜品 "),
(null,3,"童趣童味，儿童创意餐点"),
(null,3,"ACA 手持电动打蛋器"),
(null,3,"Haier 海尔智能嫩烤箱");

insert into eatery_LabelContent_pic values
(null,1,"瘦身"),
(null,1,"丰胸"),
(null,1,"养颜"),
(null,1,"排毒"),
(null,1,"补钙"),
(null,1,"贫血"),
(null,1,"滋阴"),
(null,1,"壮阳"),
(null,1,"失眠"),
(null,1,"消暑解渴"),
(null,1,"免疫力"),
(null,1,"养胃"),
(null,1,"痛经"),
(null,1,"月经不调"),
(null,1,"前列腺炎"),
(null,1,"抗衰老"),
(null,1,"防辐射"),
(null,1,"抗雾霾"),
(null,2,"吐司"),
(null,2,"三明治"),
(null,2,"马芬"),
(null,2,"布朗尼"),
(null,2,"蛋糕卷"),
(null,2,"玛德琳"),
(null,2,"舒芙蕾"),
(null,2,"纸杯蛋糕"),
(null,2,"戚风"),
(null,2,"马卡龙"),
(null,2,"糖霜饼干"),
(null,2,"曲奇"),
(null,2,"披萨"),
(null,2,"泡芙"),
(null,2,"蛋挞"),
(null,2,"派塔"),
(null,2,"中式糕点"),
(null,2,"酥");
#*美食菜谱菜单eatery_gourmet_menu***
insert into eatery_gourmet_menu values
(null,null,"杂粮荠菜包","线线3896"," ../img/cate/Menu/zaliangjiecaibao.jpg"),
(null,null,"腐竹火腿黄瓜片","hb俗人"," ../img/cate/Menu/fuzhuhuotuihuangguapian.jpg"),
(null,null,"香炸脆皮酥肉","烟雨心灵"," ../img/cate/Menu/xiangzhangcuipisurou.jpg"),
(null,null,"咖喱虾蛄花菜","花鱼儿"," ../img/cate/Menu/galixiaguhuacai.jpg"),
(null,null,"六寸草莓蛋糕","线线3896"," ../img/cate/Menu/liucuncaomeidangao.jpg"),
(null,null,"青萝卜炒花蛤","花鱼儿"," ../img/cate/Menu/qingluobochahuaha.jpg"),
(null,null,"黄豆煮软骨","花鱼儿"," ../img/cate/Menu/huangdouchaoruangu.jpg"),
(null,null,"棋子豆","糖小田yuan"," ../img/cate/Menu/eryuerqizidou.jpg"),
(null,null,"拌猪头肉","柳絮1982"," ../img/cate/Menu/banzhutourou.jpg"),
(null,null,"木瓜拌酸奶","米拉Miira"," ../img/cate/Menu/muguabansuannai.jpg"),
(null,null,"蒜蓉粉丝","花鱼儿"," ../img/cate/Menu/suanrongfensi.jpg"),
(null,null,"可乐翅根","舌尖居士"," ../img/cate/Menu/kelechigen.jpg"),
(null,null,"酸奶水果慕斯","双手暖心"," ../img/cate/Menu/suannaishuiguomusi.jpg"),
(null,null,"麻辣油拌菠菜","糖小田yuan"," ../img/cate/Menu/malayoubanbocai.jpg"),
(null,null,"爽口拌菜","线线3896"," ../img/cate/Menu/shuangkoubancai.jpg"),
(null,null,"清蒸扁鱼","花鱼儿"," ../img/cate/Menu/qingzhengbianyu.jpg"),
(null,null,"荷兰豆里脊肉炒鸡蛋","花鱼儿"," ../img/cate/Menu/helandoulijirousichaojidan.jpg"),
(null,null,"千张炒红椒","花鱼儿"," ../img/cate/Menu/qianzhangchaohongjiao.jpg"),
(null,null,"胡萝卜红枣燕麦粥","冬季心情"," ../img/cate/Menu/huluobohongzaoyamaizhou.jpg"),
(null,null,"焖带鱼","雨中漫步_kRsJPX"," ../img/cate/Menu/mendaiyu.jpg"),
(null,null,"家常版麻辣香锅","飞舞的夏花"," ../img/cate/Menu/jiachangbanmalaxiangguo.jpg"),
(null,null,"蚝油香菇西兰花","米拉Miira"," ../img/cate/Menu/aoyouxiangguxilanhua.jpg"),
(null,null,"蒜苗回锅肉","零下一度0511"," ../img/cate/Menu/suanmiaohuiguorou.jpg"),
(null,null,"手撕包菜","七色堇🌸"," ../img/cate/Menu/shousibaocai.jpg"),
(null,null,"家常炒面","可口的苹果汁"," ../img/cate/Menu/jiangchangchaomian.jpg"),
(null,null,"西红柿鸡蛋豆腐羹","小乖兽吖"," ../img/cate/Menu/xihongshijidandoufugeng.jpg"),
(null,null,"豌豆凉粉","Meggy跳舞的苹果"," ../img/cate/Menu/wandouniangfen.jpg"),
(null,null,"补血养颜粥","🍬薄荷糖的味道🍬"," ../img/cate/Menu/buxueyangyanzhou.jpg"),
(null,null,"蜜汁鸡翅","肥肥美食"," ../img/cate/Menu/mizhijichi.jpg"),
(null,null,"香菇烧冬瓜","七色堇🌸"," ../img/cate/Menu/xianggushaodonggua.jpg"),
(null,null,"盘丝饼","泥泥_鳅鳅"," ../img/cate/Menu/pansibing.jpg"),
(null,null,"红烧豆腐","米粒_新手厨房"," ../img/cate/Menu/hongshaodoufu.jpg"),
(null,null,"炸萝卜豆腐丸子","烟雨心灵"," ../img/cate/Menu/zhaluobodoufuwanzi.jpg"),
(null,null,"油焖春笋","玉皇食品"," ../img/cate/Menu/youmenchunsun.jpg"),
(null,null,"素豆腐圆子","RLing"," ../img/cate/Menu/sudoufuyuanzi.jpg"),
(null,null,"电饭煲版酱牛肉","Meggy跳舞的苹果"," ../img/cate/Menu/dianfanbaojiangniurou.jpg"),
(null,null,"芹菜炒香干","小耿妈妈"," ../img/cate/Menu/qincaichaoxianggan.jpg"),
(null,null,"巧克力爆浆小面包","蓝胖子不素胖纸"," ../img/cate/Menu/qiaokelibaojiangxiaomianbao.jpg"),
(null,null,"清炒虾仁","妃·英里"," ../img/cate/Menu/qingchaoxiaren.jpg"),
(null,null,"灌汤包","芊芊_DOkzbcaviraI"," ../img/cate/Menu/guantangbao.jpg"),
(null,"CDP.html","红烧肉","null"," ../img/cate/Menu/hongshaorou.jpg"),
(null,null,"红烧茄子","null"," ../img/cate/Menu/hongshaoqiezi.jpg"),
(null,null,"宫保鸡丁","null"," ../img/cate/Menu/gongbaojiding.jpg"),
(null,null,"麻辣香锅","null"," ../img/cate/Menu/malaxiangguo.jpg"),
(null,null,"红烧排骨","null"," ../img/cate/Menu/hongshaop[aihgu.jpg"),
(null,null,"糖醋排骨","null"," ../img/cate/Menu/tacupaigu.jpg"),
(null,null,"鱼香肉丝","null"," ../img/cate/Menu/yuxiangrousi.jpg"),
(null,null,"可乐鸡翅","null"," ../img/cate/Menu/kelejichi.jpg"),
(null,null,"麻婆豆腐","null"," ../img/cate/Menu/mapodoufu.jpg"),
(null,null,"佛跳墙","null"," ../img/cate/Menu/foutiaoqiang.jpg"),
(null,null,"水煮肉片","null"," ../img/cate/Menu/shuizhuroupian.jpg"),
(null,null,"红烧鱼","null"," ../img/cate/Menu/hongshaoyu.jpg"),
(null,null,"沙拉","null"," ../img/cate/Menu/shala.jpg"),
(null,null,"西红柿炒鸡蛋","null"," ../img/cate/Menu/xihongshichaojidan.jpg"),
(null,null,"蛋炒饭","null"," ../img/cate/Menu/danchaofan.jpg"),
(null,null,"鸡蛋饼","null"," ../img/cate/Menu/jidanbing.jpg"),
(null,null,"口水鸡","null"," ../img/cate/Menu/koushuiji.jpg"),
(null,null,"水煮鱼","null"," ../img/cate/Menu/shuzhuyu.jpg"),
(null,null,"啤酒鸭","null"," ../img/cate/Menu/pijiuya.jpg"),
(null,null,"麻辣烫","null"," ../img/cate/Menu/malatang.jpg"),
(null,null,"鸡蛋肉丸汤","红米乐呵","../img/cate/Menu/2019012215481619889329702111.jpg"),
(null,null,"豆皮木耳炒青椒","柳絮1982","../img/cate/Menu/2019012215481619087109702111.jpg"),
(null,null,"花生芝麻糖","广东海之韵","../img/cate/Menu/2019012215481616235249702111.jpg"),
(null,null,"糖醋大虾","天国的女儿","../img/cate/Menu/2019012215481609147129702111.jpg"),
(null,null,"香炸脆皮酥肉","烟雨心灵"," ../img/cate/Menu/xiangzhangcuipisurou.jpg"),
(null,null,"咖喱虾蛄花菜","花鱼儿"," ../img/cate/Menu/galixiaguhuacai.jpg"),
(null,null,"六寸草莓蛋糕","线线3896"," ../img/cate/Menu/liucuncaomeidangao.jpg"),
(null,null,"青萝卜炒花蛤","花鱼儿"," ../img/cate/Menu/qingluobochahuaha.jpg"),
(null,null,"黄豆煮软骨","花鱼儿"," ../img/cate/Menu/huangdouchaoruangu.jpg"),
(null,null,"棋子豆","糖小田yuan"," ../img/cate/Menu/eryuerqizidou.jpg"),
(null,null,"拌猪头肉","柳絮1982"," ../img/cate/Menu/banzhutourou.jpg"),
(null,null,"木瓜拌酸奶","米拉Miira"," ../img/cate/Menu/muguabansuannai.jpg"),
(null,null,"蒜蓉粉丝","花鱼儿"," ../img/cate/Menu/suanrongfensi.jpg"),
(null,null,"可乐翅根","舌尖居士"," ../img/cate/Menu/kelechigen.jpg"),
(null,null,"酸奶水果慕斯","双手暖心"," ../img/cate/Menu/suannaishuiguomusi.jpg"),
(null,null,"麻辣油拌菠菜","糖小田yuan"," ../img/cate/Menu/malayoubanbocai.jpg"),
(null,null,"爽口拌菜","线线3896"," ../img/cate/Menu/shuangkoubancai.jpg"),
(null,null,"清蒸扁鱼","花鱼儿"," ../img/cate/Menu/qingzhengbianyu.jpg"),
(null,null,"荷兰豆里脊肉炒鸡蛋","花鱼儿"," ../img/cate/Menu/helandoulijirousichaojidan.jpg"),
(null,null,"千张炒红椒","花鱼儿"," ../img/cate/Menu/qianzhangchaohongjiao.jpg"),
(null,null,"胡萝卜红枣燕麦粥","冬季心情"," ../img/cate/Menu/huluobohongzaoyamaizhou.jpg"),
(null,null,"焖带鱼","雨中漫步_kRsJPX"," ../img/cate/Menu/mendaiyu.jpg"),
(null,null,"家常版麻辣香锅","飞舞的夏花"," ../img/cate/Menu/jiachangbanmalaxiangguo.jpg"),
(null,null,"蚝油香菇西兰花","米拉Miira"," ../img/cate/Menu/aoyouxiangguxilanhua.jpg"),
(null,null,"蒜苗回锅肉","零下一度0511"," ../img/cate/Menu/suanmiaohuiguorou.jpg"),
(null,null,"手撕包菜","七色堇🌸"," ../img/cate/Menu/shousibaocai.jpg"),
(null,null,"家常炒面","可口的苹果汁"," ../img/cate/Menu/jiangchangchaomian.jpg"),
(null,null,"西红柿鸡蛋豆腐羹","小乖兽吖"," ../img/cate/Menu/xihongshijidandoufugeng.jpg"),
(null,null,"豌豆凉粉","Meggy跳舞的苹果"," ../img/cate/Menu/wandouniangfen.jpg"),
(null,null,"补血养颜粥","🍬薄荷糖的味道🍬"," ../img/cate/Menu/buxueyangyanzhou.jpg"),
(null,null,"蜜汁鸡翅","肥肥美食"," ../img/cate/Menu/mizhijichi.jpg"),
(null,null,"炸萝卜豆腐丸子","烟雨心灵"," ../img/cate/Menu/zhaluobodoufuwanzi.jpg"),
(null,null,"鸡蛋肉丸汤","红米乐呵","../img/cate/Menu/2019012215481619889329702111.jpg"),
(null,null,"豆皮木耳炒青椒","柳絮1982","../img/cate/Menu/2019012215481619087109702111.jpg"),
(null,null,"老坛酸萝卜炒蕨菜","红米乐呵","../img/cate/Menu/2019012215481618295069702111.jpg"),
(null,null,"韭菜鸡蛋饼","Miss_大米","../img/cate/Menu/2019012215481617088979702111.jpg"),
(null,null,"花生芝麻糖","广东海之韵","../img/cate/Menu/2019012215481616235249702111.jpg"),
(null,null,"西兰花饭团","寻梦一ZbDu","../img/cate/Menu/2019012215481611854389702111.jpg"),
(null,null,"糖醋大虾","天国的女儿","../img/cate/Menu/2019012215481609147129702111.jpg"),
(null,null,"珍珠奶茶","晶晶_5bTI","../img/cate/Menu/2019012215481608346879702111.jpg"),
(null,null,"素火腿炒韭菜芽","花鱼儿","../img/cate/Menu/2019012215481607615829702111.jpg"),
(null,null,"香菇炒青椒土豆片","大海微澜","../img/cate/Menu/2019012215481606402449702111.jpg"),
(null,null,"爆炒鸡胗","厨色生香","../img/cate/Menu/2019012215481605686319702111.jpg"),
(null,null,"鱼头火锅","稳稳嘚幸福","../img/cate/Menu/2019012215481604348519702111.jpg"),
(null,null,"西红柿炒大油方","花鱼儿","../img/cate/Menu/2019012215481602993249702111.jpg"),
(null,null,"【金猪纳福】小猪包&小猪夹","吃好吃的喽520","../img/cate/Menu/2019012215481600632799702111.jpg"),
(null,null,"生煎韭菜扇贝元宝饺","不做妖精好多年","../img/cate/Menu/2019012215481598791489702111.jpg"),
(null,null,"韭花炒河虾","最爱小志","../img/cate/Menu/2019012215481597606269702111.jpg"),
(null,null,"芹菜炒木耳","禧歡Θ雨兲","../img/cate/Menu/2019012215481596424079702111.jpg"),
(null,null,"萝卜咸菜","最初的最美❤","../img/cate/Menu/2019012215481595496949702111.jpg"),
(null,null,"#团圆饭#西兰花拌金针菇","一溪月","../img/cate/Menu/2019012215481593388889702111.jpg"),
(null,null,"零失败宝宝溶豆","做个吃货就好","../img/cate/Menu/2019012215481592167139702111.jpg"),
(null,null,"出炉就抢光的肉桂面包卷","辽南蟹","../img/cate/Menu/2019012215481590518619702111.jpg"),
(null,null,"茄汁苹果虾","英英菜谱","../img/cate/Menu/2019012215481513877849702111.jpg"),
(null,null,"炸黄金带鱼","苏泊尔_EovyzO","../img/cate/Menu/2019012215481513975069724956.jpg"),
(null,null,"超级好吃又有营养的苏超菠菜 ","月亮私家烘焙","../img/cate/Menu/2019012215481512551599724956.jpg"),
(null,null,"团圆菜-清蒸武昌鱼","金凤栖梧","../img/cate/Menu/2019012215481511675749724956.jpg"),
(null,null,"香辣藕片","最初的最美❤","../img/cate/Menu/2019012215481511016969724956.jpg"),
(null,null,"香葱爆牛肉","舌尖居士","../img/cate/Menu/2019012215481498453759724956.jpg"),
(null,null,"椰青炖鸡","老U爱小轩哥","../img/cate/Menu/2019012215481497109739724956.jpg"),
(null,null,"青椒厚蛋烧","红米乐呵","../img/cate/Menu/2019012215481490439739724956.jpg"),
(null,null,"清蒸海鲈鱼","黄豆豆的一家","../img/cate/Menu/2019012215481489252409724956.jpg"),
(null,null,"菠萝银耳糖水","牛妈厨房","../img/cate/Menu/2019012215481487507959724956.jpg"),
(null,null,"挂面酱香饼","玉皇食品_","../img/cate/Menu/2019012215481486257709724956.jpg"),
(null,null,"豆皮木耳炒青椒","柳絮1982","../img/cate/Menu/2019012215481619087109702111.jpg"),
(null,null,"糖醋大虾","天国的女儿","../img/cate/Menu/2019012215481609147129702111.jpg"),
(null,null,"素火腿炒韭菜芽","花鱼儿","../img/cate/Menu/2019012215481607615829702111.jpg"),
(null,null,"香菇炒青椒土豆片","大海微澜","../img/cate/Menu/2019012215481606402449702111.jpg"),
(null,null,"爆炒鸡胗","厨色生香","../img/cate/Menu/2019012215481605686319702111.jpg"),
(null,null,"西红柿炒大油方","花鱼儿","../img/cate/Menu/2019012215481602993249702111.jpg"),
(null,null,"茄汁苹果虾","英英菜谱","../img/cate/Menu/2019012215481513877849702111.jpg"),
(null,null,"团圆菜-清蒸武昌鱼","金凤栖梧","../img/cate/Menu/2019012215481513877849702111.jpg"),
(null,null,"清蒸海鲈鱼","黄豆豆的一家","../img/cate/Menu/2019012215481511675749724956.jpg"),
(null,null,"蚝油百财包","米拉Miira","../img/cate/Menu/2019012215481485046249724956.jpg"),
(null,null,"素炒茄子","零下一度0511","../img/cate/Menu/2019012215481450347879702111.jpg"),
(null,null,"培根荷兰豆","烟雨心灵","../img/cate/Menu/2019012215481429236369702111.jpg"),
(null,null,"锦上添花","米拉Miira","../img/cate/Menu/2019012215481428545479702111.jpg"),
(null,null,"香炸带鱼","雨中漫步_kRsJPX","../img/cate/Menu/2019012215481387651999724956.jpg"),
(null,null,"蒜蓉荷兰豆","大海微澜","../img/cate/Menu/2019012215481370261199724956.jpg"),
(null,null,"金玉满堂","红米乐呵","../img/cate/Menu/2019012215481341028659724956.jpg"),
(null,null,"青红椒粒炒蛋","欣欣向荣2388","../img/cate/Menu/2019012215481296645649724956.jpg"),
(null,null,"茨菇烧大排","花擦擦","../img/cate/Menu/2019012215481286716479724956.jpg"),
(null,null,"宝宝辅食 杂粮小鸡窝头 ","满妈·厨房","../img/cate/Menu/2019012215481283957139724956.jpg"),
(null,null,"鱼香肉丝","烟雨心灵","../img/cate/Menu/2019012215481236113889702111.jpg"),
(null,null,"炒菠菜","花擦擦","../img/cate/Menu/2019012215481219418519702111.jpg"),
(null,null,"#烤箱菜#烤土豆","花擦擦","../img/cate/Menu/2019012215481212976499702111.jpg"),
(null,null,"腊猪蹄炖海带","失之东隅","../img/cate/Menu/2019012215481208356419702111.jpg"),
(null,null,"姜葱焗蚝","夏家私享菜","../img/cate/Menu/2019012215481205172549702111.jpg"),
(null,null,"肉末炒鸡蛋","心在乌云上2013","../img/cate/Menu/2019012215481201348349702111.jpg"),
(null,null,"番茄炒蛋","厨色生香","../img/cate/Menu/2019012215481200727319702111.jpg"),
(null,null,"白玉菇炒油麦菜","米拉Miira","../img/cate/Menu/2019012215481196024039702111.jpg"),
(null,null,"素炒白菜片","大海微澜","../img/cate/Menu/2019012215481195209639702111.jpg"),
(null,null,"甜笋焖排骨","舞之灵","../img/cate/Menu/20190121154808359123010169539.jpg"),
(null,null,"五福煲","米拉Miira","../img/cate/Menu/20190121154808340677010169539.jpg"),
(null,null,"孔雀鲈鱼","米拉Miira","../img/cate/Menu/20190121154808335088910169539.jpg"),
(null,null,"梅花肉炒黄瓜","红米乐呵","../img/cate/Menu/20190121154808121226910169539.jpg"),
(null,null,"#团圆饭#西兰花拌金针菇","一溪月","../img/cate/Menu/2019012215481593388889702111.jpg"),
(null,null,"大虾沙拉","简单是快乐的","../img/cate/Menu/2019012215481459438329702111.jpg"),
(null,null,"韩式魔芋鸡丝凉拌菜","朝族媳妇辣白菜","../img/cate/Menu/2019012215481430259859702111.jpg"),
(null,null,"翡翠麻酱卷","米拉Miira","../img/cate/Menu/2019012215481399045499724956.jpg"),
(null,null,"凉拌核桃仁","小董妞@厨房","../img/cate/Menu/2019012215481396351239724956.jpg"),
(null,null,"胡萝卜花生米拌芹菜","简单是快乐的","../img/cate/Menu/2019012215481294983279724956.jpg"),
(null,null,"五彩大拉皮","厨色生香","../img/cate/Menu/2019012215481199535439702111.jpg"),
(null,null,"菠菜拌粉丝","柳絮1982","../img/cate/Menu/20190121154808075980510169539.jpg"),
(null,null,"爽口儿菜","米拉Miira","../img/cate/Menu/20190121154807505574910169539.jpg"),
(null,null,"#团圆饭#蒜蓉辣酱拌玉兰菜","一溪月","../img/cate/Menu/20190121154807432629510169539.jpg"),
(null,null,"美味皮冻","英英菜谱","../img/cate/Menu/2019012115480608816649702111.jpg"),
(null,null,"凉拌藕片","简单是快乐的","../img/cate/Menu/2019012115480420573499724956.jpg"),
(null,null,"黄瓜腐竹拌木耳","柳絮1982","../img/cate/Menu/2019012015479768704419724956.jpg"),
(null,null,"#团圆饭#黄瓜拌粉皮","一溪月","../img/cate/Menu/2019012015479522165649724956.jpg"),
(null,null,"剁椒拌儿菜","简单是快乐的","../img/cate/Menu/2019012015479503761449724956.jpg"),
(null,null,"肉香猪蹄冻","雨中漫步_kRsJPX","../img/cate/Menu/2019012015479502204989724956.jpg"),
(null,null,"炝拌豆皮","诗韵墨香","../img/cate/Menu/2019012015479484998419724956.jpg"),
(null,null,"蒜泥白肉","满宝妈妈","../img/cate/Menu/2019011915478804408859702111.jpg"),
(null,null,"红油拌猪皮","简单是快乐的","../img/cate/Menu/2019011915478754433479724956.jpg"),
(null,null,"拌和菜","简单是快乐的","../img/cate/Menu/2019011915478747178849724956.jpg"),
(null,null,"响油葫芦丝","米拉Miira","../img/cate/Menu/2019011915478615288719702111.jpg"),
(null,null,"麻辣鸡丝","烟雨心灵","../img/cate/Menu/2019011815477882583339724956.jpg"),
(null,null,"剁椒拌皮蛋","简单是快乐的","../img/cate/Menu/2019011815477880434789724956.jpg"),
(null,null,"香芥菜炒虾皮","清水淡竹","../img/cate/Menu/2019011815477790311719702111.jpg"),
(null,null,"凉拌大骨肉","雨中漫步_kRsJPX","../img/cate/Menu/2019011815477757931569702111.jpg"),
(null,null,"木耳拌腐竹","柳絮1982","../img/cate/Menu/2019011815477749439509702111.jpg"),
(null,null,"醋溜白萝卜丝","红米乐呵","../img/cate/Menu/20190117154773090125510138013.jpg"),
(null,null,"自制皮冻","金凤栖梧","../img/cate/Menu/20190117154772653372210138013.jpg"),
(null,null,"皮蛋豆腐","柳絮1982","../img/cate/Menu/2019011715476888523589724956.jpg"),
(null,null,"陈醋苦菊花生","柳絮1982","../img/cate/Menu/2019011715476887981859724956.jpg"),
(null,null,"酸辣双椒木耳","米拉Miira","../img/cate/Menu/2019011715476891339599702111.jpg"),
(null,null,"鸡蛋拌菠菜","雨中漫步_kRsJPX","../img/cate/Menu/2019011615476081531769702111.jpg"),
(null,null,"鸡蛋肉丸汤","红米乐呵","../img/cate/Menu/2019012215481619889329702111.jpg"),
(null,null,"番茄鸡蛋疙瘩汤","牛妈厨房","../img/cate/Menu/2019012215481460369219702111.jpg"),
(null,null,"黄豆猪蹄汤","花鱼儿","../img/cate/Menu/2019012215481211872219702111.jpg"),
(null,null,"萝卜排骨汤","心在乌云上2013","../img/cate/Menu/2019012215481201962299702111.jpg"),
(null,null,"红枣香菇核桃炖鸡汤","金凤栖梧","../img/cate/Menu/2019012115480541052249702111.jpg"),
(null,null,"新西兰花胶燕窝鸡","ZRB新西兰进口食品","../img/cate/Menu/20190121154803823560210104208.jpg"),
(null,null,"麻酱味白菜豆腐汤","hb俗人","../img/cate/Menu/20190119154790570111610104208.gif"),
(null,null,"胡萝卜土豆肉骨汤","花鱼儿","../img/cate/Menu/20190119154790293593610104208.gif"),
(null,null,"团圆菜~萝卜肋骨汤","金凤栖梧","../img/cate/Menu/2019011915478860652259702111.jpg"),
(null,null,"夜开花咸肉粉丝汤","花鱼儿","../img/cate/Menu/2019011915478624628049702111.jpg"),
(null,null,"【银耳炖桃胶】美容养颜的佳品","马卡龙小魔女","../img/cate/Menu/2019011815477950362049702111.jpg"),
(null,null,"萝卜丝虾头汤","柳絮1982","../img/cate/Menu/2019011815477750444499702111.jpg"),
(null,null,"黄豆海带冬瓜汤","elmonte","../img/cate/Menu/2019011815477747726269702111.jpg"),
(null,null,"海带结冬瓜排骨汤","花鱼儿","../img/cate/Menu/2019011715477095595159702111.jpg"),
(null,null,"蕃茄鸡蛋年糕汤","RLing","../img/cate/Menu/2019011715476923734529702111.jpg"),
(null,null,"鳕鱼南瓜汤","逝去的爱情","../img/cate/Menu/2019011615476492597629732003.jpg"),
(null,null,"鲜灵芝羊肉汤","tgcyy","../img/cate/Menu/2019011615476420339499732003.jpg"),
(null,null,"银耳雪梨羹","金凤栖梧","../img/cate/Menu/2019011515475584943359702111.jpg"),
(null,null,"枸杞玉米粒圆子羹","花鱼儿","../img/cate/Menu/2019011515475583608209702111.jpg"),
(null,null,"鸡肉丸豆腐汤","红米乐呵","../img/cate/Menu/2019011515475415322469702111.jpg"),
(null,null,"红枣煮鸡蛋","花鱼儿","../img/cate/Menu/2019011515475171108699702111.jpg"),
(null,null,"虾仁豆腐炖蛋","麦子老妈","../img/cate/Menu/2019011415474556168749702111.jpg"),
(null,null,"松茸与蒸蛋","麦子老妈","../img/cate/Menu/2019011415474529152309702111.jpg"),
(null,null,"松茸蒸土鸡","麦子老妈","../img/cate/Menu/2019011415474518573119702111.jpg"),
(null,null,"小吊梨汤","天国的女儿","../img/cate/Menu/20190112154729628445910104208.gif"),
(null,null,"韩式牛肉年糕汤","朝族媳妇辣白菜","../img/cate/Menu/2019011215472768636029702111.jpg"),
(null,null,"苹果雪耳山药汤","elmonte","../img/cate/Menu/2019011215472576059359702111.jpg"),
(null,null,"妇科圣方《四物汤》","微笑雨（菱桐）","../img/cate/Menu/2019010915470192968109702111.jpg"),
(null,null,"菌菇日本豆腐羹","舞之灵","../img/cate/Menu/2019011015471071574049702111.jpg"),
(null,null,"脊骨山药玉米汤","双手暖心","../img/cate/Menu/2019011015470890826829702111.jpg"),
(null,null,"能量满满一碗汤，冬天喝最美","辽南蟹","../img/cate/Menu/2019011015470881405669702111.jpg"),
(null,null,"豆腐鲜肉六菌羹","牛妈厨房","../img/cate/Menu/2019010915470194419429702111.jpg"),
(null,null,"【金猪纳福】小猪包&小猪夹","吃好吃的喽520","../img/cate/Menu/2019012215481600632799702111.jpg"),
(null,null,"白虾鸡蛋汤粉","牛妈厨房","../img/cate/Menu/2019012215481449673049702111.jpg"),
(null,null,"胡萝卜大肉饺子","英英菜谱","../img/cate/Menu/2019012215481431897909702111.jpg"),
(null,null,"金银饭","米拉Miira","../img/cate/Menu/2019012215481395405389724956.jpg"),
(null,null,"三鲜饺子","菊子厨房","../img/cate/Menu/2019012215481386161319724956.jpg"),
(null,null,"#团圆饭#烧饼夹牛肉","一溪月","../img/cate/Menu/2019012215481365108769724956.jpg"),
(null,null,"酱香饼","緣豆兒","../img/cate/Menu/2019012215481347652319724956.jpg"),
(null,null,"枣花馍","石榴树2008","../img/cate/Menu/2019012215481346724109724956.jpg"),
(null,null,"榨菜鸡蛋饼","緣豆兒","../img/cate/Menu/2019012215481341735179724956.jpg"),
(null,null,"罐罐饭","雨欣欣欣","../img/cate/Menu/2019012215481339538869724956.jpg"),
(null,null,"鲜虾荠菜馄饨","小董妞@厨房","../img/cate/Menu/2019012215481337118819724956.jpg"),
(null,null,"芝士焗面条","双手暖心","../img/cate/Menu/2019012215481284811769724956.jpg"),
(null,null,"南瓜馒头","双手暖心","../img/cate/Menu/2019012215481283227139724956.jpg"),
(null,null,"玉米面胡萝卜鸡蛋饼","红米乐呵","../img/cate/Menu/20190121154808084947210169539.jpg"),
(null,null,"水煎烫面桑葚叶馅饼","大海微澜","../img/cate/Menu/20190121154808056393810169539.jpg"),
(null,null,"双色白菜饺子","余甘果蜜的厨房","../img/cate/Menu/20190121154807948441110169539.jpg"),
(null,null,"豆沙南瓜饼","甜宝妈咪美食坊","../img/cate/Menu/20190121154807880191810169539.jpg"),
(null,null,"胡萝卜土豆丝饼","小董妞@厨房","../img/cate/Menu/20190121154807866327410169539.jpg"),
(null,null,"烙韭菜虾仁素盒子","筠旸JY","../img/cate/Menu/20190121154807596939310169539.jpg"),
(null,null,"大虾抱蛋饺","绿野薄荷","../img/cate/Menu/20190121154807324252410169539.jpg"),
(null,null,"葱油鸡蛋面","柳絮1982","../img/cate/Menu/2019012115480611192749702111.jpg"),
(null,null,"香酥洋葱肉饼","绿野薄荷","../img/cate/Menu/2019012115480592976579702111.jpg"),
(null,null,"大排面","清水淡竹","../img/cate/Menu/20190121154803914282710104208.jpg"),
(null,null,"水晶虾饺","雨中漫步_kRsJPX","../img/cate/Menu/2019012115480387927149702111.jpg"),
(null,null,"发面酥香花生酱饼","烟雨心灵","../img/cate/Menu/2019012115480385349499702111.jpg"),
(null,null,"戗面馒头","天国的女儿","../img/cate/Menu/2019012115480384142919702111.jpg"),
(null,null,"海味胡萝卜炒方便面","食·色","../img/cate/Menu/2019012115480352202509702111.jpg"),
(null,null,"#团圆饭#麻辣方便面","一溪月","../img/cate/Menu/2019012015479928744169724956.jpg"),
(null,null,"泡泡油饼","天国的女儿","../img/cate/Menu/2019012015479888533019724956.jpg"),
(null,null,"豆角木耳猪肉饺子","满宝妈妈","../img/cate/Menu/2019012015479886343439724956.jpg"),
(null,null,"红枣南瓜卷","柳絮1982","../img/cate/Menu/2019012015479865761149724956.jpg"),
(null,null,"主食—南瓜鲜虾肉末饺子","逝去的爱情","../img/cate/Menu/2019012015479724926429724956.jpg"),
(null,null,"烤红薯片","米拉Miira","../img/cate/Menu/2019012215481451754909702111.jpg"),
(null,null,"抹茶草莓牛轧糖","飞燕飘舞","../img/cate/Menu/2019012215481389226539724956.jpg"),
(null,null,"【蜜汁猪肉脯】年货小零食","马卡龙小魔女","../img/cate/Menu/2019012215481369299779724956.jpg"),
(null,null,"炸馄饨","简单是快乐的","../img/cate/Menu/2019012215481344859279724956.jpg"),
(null,null,"香蕉派","欣欣向荣2388","../img/cate/Menu/2019012215481289913669724956.jpg"),
(null,null,"桂圆煮彩色汤圆","Qiuyue0815","../img/cate/Menu/2019012215481220813969702111.jpg"),
(null,null,"豆沙南瓜饼","甜宝妈咪美食坊","../img/cate/Menu/20190121154807880191810169539.jpg"),
(null,null,"香酥三文鱼块","金凤栖梧","../img/cate/Menu/20190121154807786053710169539.jpg"),
(null,null,"#烤箱菜#焗年糕","花擦擦","../img/cate/Menu/20190121154807739596910169539.jpg"),
(null,null,"#烤箱菜#烤鸡排","花擦擦","../img/cate/Menu/20190121154807733385610169539.jpg"),
(null,null,"烙韭菜虾仁素盒子","筠旸JY","../img/cate/Menu/20190121154807596939310169539.jpg"),
(null,null,"香炸鸡柳","绿野薄荷","../img/cate/Menu/2019012115480628567389702111.jpg"),
(null,null,"椰蓉糯米豆沙卷","满宝妈妈","../img/cate/Menu/2019012115480553718199702111.jpg"),
(null,null,"自制猪肉脯","雨欣欣欣","../img/cate/Menu/2019012115480469994339724956.jpg"),
(null,null,"脆皮香蕉","心在乌云上2013","../img/cate/Menu/2019012115480351241659702111.jpg"),
(null,null,"酸汤肥牛米线","我叫一尾鱼","../img/cate/Menu/2019012115480341357499702111.jpg"),
(null,null,"干果香蕉拌酸奶","米拉Miira","../img/cate/Menu/2019012015479929931069724956.jpg"),
(null,null,"创意雨花石汤圆","putimama","../img/cate/Menu/2019012015479885537039724956.jpg"),
(null,null,"蛋黄溶豆","大林Darling","../img/cate/Menu/2019012015479674571789724956.jpg"),
(null,null,"草莓木槺杯","Meggy跳舞的苹果","../img/cate/Menu/2019012015479498638179724956.jpg"),
(null,null,"紫薯糯米饼","心-静","../img/cate/Menu/2019011915478777911609724956.jpg"),
(null,null,"素炸胡萝卜丸子","大海微澜","../img/cate/Menu/2019011915478712234199724956.jpg"),
(null,null,"格兰诺拉燕麦片【初味日记】","初味日记官方","../img/cate/Menu/2019011915478656939389702111.jpg"),
(null,null,"麻圆","雨欣欣欣","../img/cate/Menu/2019011915478634805069702111.jpg"),
(null,null,"低脂版玉米面赤豆铜锣烧","°勿忘心安","../img/cate/Menu/2019011915478628985949702111.jpg"),
(null,null,"椒盐蘑菇","天国的女儿","../img/cate/Menu/2019011815478028501929724956.jpg"),
(null,null,"香辣烤猪蹄","雨中漫步_kRsJPX","../img/cate/Menu/2019011815477913587329724956.jpg"),
(null,null,"开心脆皮肠","雨欣欣欣","../img/cate/Menu/2019011815477912056049724956.jpg"),
(null,null,"挂霜花生","雨欣欣欣","../img/cate/Menu/2019011815477893755869724956.jpg"),
(null,null,"油果子","雨欣欣欣","../img/cate/Menu/2019011815477888278889724956.jpg"),
(null,null,"蜜汁猪肉脯","美食诱惑馋猫","../img/cate/Menu/2019011815477840231149724956.jpg"),
(null,null,"香菜牛腩粉","红米乐呵","../img/cate/Menu/2019011815477773614649702111.jpg"),
(null,null,"原味贝果-早餐就爱吃","舞之灵","../img/cate/Menu/20190121154807548770210169539.jpg"),
(null,null,"鸡蛋火腿三明治","罂粟小厨","../img/cate/Menu/20190121154807375763110169539.jpg"),
(null,null,"黑米鲜虾薄底披萨","蓝胖子不素胖纸","../img/cate/Menu/20190113154734262243210138013.jpg"),
(null,null,"黑椒牛排","烟雨心灵","../img/cate/Menu/2019010115463087118459702111.jpg"),
(null,null,"奶油鸡肉意面","seiseizhang","../img/cate/Menu/20181231154623482646310169539.jpg"),
(null,null,"煎牛排","sourcehe","../img/cate/Menu/20181231154622742888610138013.jpg"),
(null,null,"芝士焗面","石榴树2008","../img/cate/Menu/2018122815459666292669724956.jpg"),
(null,null,"奥尔良烤翅","美食天下","../img/cate/Menu/2018121815451236744771.jpg"),
(null,null,"肉酱意大利面","美食天下","../img/cate/Menu/2018121815451218773971.jpg"),
(null,null,"上校鸡块","美食天下","../img/cate/Menu/2018121715450401419321.jpg"),
(null,null,"自制牛排","紫色勿忘我美食","../img/cate/Menu/2018121215445924376649724956.jpg"),
(null,null,"火烧云吐司【初味日记】","初味日记官方","../img/cate/Menu/20181201154363837151310169539.jpg"),
(null,null,"南瓜酸奶浓汤","daogrs迪奥格斯","../img/cate/Menu/2018112915434718383389724956.jpg"),
(null,null,"迷迭香黑胡椒牛排---ACA E43A试用报告二","承灿妈咪CCM","../img/cate/Menu/2018111915425904455329702111.jpg"),
(null,null,"自制儿童牛排","诚赫宝贝帅帅妈","../img/cate/Menu/2018111715424208672359702111.jpg"),
(null,null,"红酒牛排","sourcehe","../img/cate/Menu/2018111515422478132979702111.jpg"),
(null,null,"黑椒牛排","满宝妈妈","../img/cate/Menu/2018111415421725848079702111.jpg"),
(null,null,"快手黑椒牛排","蓝胖子不素胖纸","../img/cate/Menu/20181113154208698699410104208.jpg"),
(null,null,"芝士焗土豆泥","蓝胖子不素胖纸","../img/cate/Menu/20181026154056385384710104261.jpg"),
(null,null,"奶香南瓜鸡肉焗饭","緣豆兒","../img/cate/Menu/20181023154029782845710104261.jpg"),
(null,null,"烤箱版非油炸薯条","大林Darling","../img/cate/Menu/20181020154004371783710104261.jpg"),
(null,null,"芝士焗番茄","安宝的虎妈","../img/cate/Menu/2018101515395665408659702111.jpg"),
(null,null,"青酱海鲜意面","daogrs迪奥格斯","../img/cate/Menu/2018101115392510513169724956.jpg"),
(null,null,"南瓜田园披萨","烟雨心灵","../img/cate/Menu/2018100715388920162439732003.jpg"),
(null,null,"香草芦笋三文鱼","烘焙有方～蒸烤教学服务","../img/cate/Menu/20181006153880368392410138013.jpg"),
(null,null,"奶油玉米鸡茸浓汤","緣豆兒","../img/cate/Menu/2018091315368328598199702111.jpg"),
(null,null,"澳洲原汁烤牛排","心煮艺的厨房","../img/cate/Menu/2018082315350151982559702111.jpg"),
(null,null,"快手晚餐（香煎牛排&提拉米苏）","食Fun有趣","../img/cate/Menu/2018071815318963092039702111.jpg"),
(null,null,"虾皮奶酪焗豆腐","一日五餐辅食","../img/cate/Menu/2018071615317073442909702111.jpg"),
(null,null,"鲜嫩多汁的牛排","格格And浅唱","../img/cate/Menu/2018070215305014987911958079.jpg"),
(null,null,"披萨","Elena88","../img/cate/Menu/2018062615300158284319732003.jpg"),
(null,null,"土豆沙拉汉堡","余甘果蜜的厨房","../img/cate/Menu/2018061715292239609829732003.jpg"),
(null,null,"零失败宝宝溶豆","做个吃货就好","../img/cate/Menu/2019012215481592167139702111.jpg"),
(null,null,"出炉就抢光的肉桂面包卷","辽南蟹","../img/cate/Menu/2019012215481590518619702111.jpg"),
(null,null,"火锅底料蛋糕","吾爱烘焙","../img/cate/Menu/2019012215481426634139702111.jpg"),
(null,null,"手指饼干","lin悠然","../img/cate/Menu/2019012215481233252419702111.jpg"),
(null,null,"蓝莓干面包","putimama","../img/cate/Menu/2019012215481223744149702111.jpg"),
(null,null,"棉花糖蛋糕卷","模样生活MyLiving","../img/cate/Menu/2019012215481222947739702111.jpg"),
(null,null,"黑麦贝果","心在乌云上2013","../img/cate/Menu/2019012215481202778849702111.jpg"),
(null,null,"奶香吐司","小董妞@厨房","../img/cate/Menu/20190121154807824080010169539.jpg"),
(null,null,"懒人蛋糕","寻梦一ZbDu","../img/cate/Menu/20190121154807571334410169539.jpg"),
(null,null,"入口即化的桃酥饼干","烟雨心灵","../img/cate/Menu/20190121154807363895910169539.jpg"),
(null,null,"香橙蛋糕","西马栀子","../img/cate/Menu/2019012115480636276549724956.jpg"),
(null,null,"海苔肉松小贝","烘焙有方～蒸烤教学服务","../img/cate/Menu/2019012115480510724229724956.jpg"),
(null,null,"肉松小餐包","石榴树2008","../img/cate/Menu/2019012115480488484809724956.jpg"),
(null,null,"面包树","石榴树2008","../img/cate/Menu/2019012115480479936019724956.jpg"),
(null,null,"情意浓浓布朗尼","心-静","../img/cate/Menu/2019012115480412273399724956.jpg"),
(null,null,"树桩戚风蛋糕","Meggy跳舞的苹果","../img/cate/Menu/2019012115480372262129702111.jpg"),
(null,null,"奥尔良鸡腿披萨","°勿忘心安","../img/cate/Menu/2019012115480360826819702111.jpg"),
(null,null,"红枣瓜子饼干","尔东叶","../img/cate/Menu/2019012015479961618449724956.jpg"),
(null,null,"豆渣核桃饼干","金凤栖梧","../img/cate/Menu/2019012015479932921619724956.jpg"),
(null,null,"核桃椰奶面包棒——拯救失败的面包面团而生","红米乐呵","../img/cate/Menu/2019012015479930857719724956.jpg"),
(null,null,"原味戚风蛋糕—6寸","红米乐呵","../img/cate/Menu/2019012015479899683289724956.jpg"),
(null,null,"熔岩芝士面包","安宝的虎妈","../img/cate/Menu/2019012015479767657629724956.jpg"),
(null,null,"香葱肉松小蛋糕","心-静","../img/cate/Menu/2019012015479758301809724956.jpg"),
(null,null,"#烤箱菜#玉米荷兰豆培根披萨","烟雨心灵","../img/cate/Menu/2019012015479755701519724956.jpg"),
(null,null,"南瓜戚风蛋糕","逝去的爱情","../img/cate/Menu/2019012015479708888129724956.jpg"),
(null,null,"椰蓉吐司—面包机版","红米乐呵","../img/cate/Menu/2019012015479707616779724956.jpg"),
(null,null,"香蕉纸杯蛋糕","红米乐呵","../img/cate/Menu/2019012015479686599099724956.jpg"),
(null,null,"百香果玛德琳 ","风意画","../img/cate/Menu/2019012015479644253879724956.jpg"),
(null,null,"原味舒芙蕾","红米乐呵","../img/cate/Menu/2019012015479610674389724956.jpg"),
(null,null,"电饭煲版菠菜汁戚风蛋糕","金凤栖梧","../img/cate/Menu/2019012015479562881349724956.jpg"),
(null,null,"【蛋白椰蓉球】零基础，小白也能闭眼做","马卡龙小魔女","../img/cate/Menu/2019012015479539921739724956.jpg"),
(null,null,"奥尔良鸡腿披萨","一米阳光612","../img/cate/Menu/2019012015479538275509724956.jpg"),
(null,null,"红枣枸杞阿胶糕","tongbao0506","../img/cate/Menu/c640_201511161447655123769.jpg"),
(null,null,"简单的玫瑰绿豆馅","雪峰儿","../img/cate/Menu/c640_201511051446689939903.jpg"),
(null,null,"芝麻猪肉松","诗可薇","../img/cate/Menu/c640_201511011446389074828.jpg"),
(null,null,"糖水山楂","爱睡觉的星星","../img/cate/Menu/c640_201510241445681498709.jpg"),
(null,null,"自制杨梅干","清水淡竹","../img/cate/Menu/c640_201510241445681355977.jpg"),
(null,null,"龙眼酱","神子殿","../img/cate/Menu/c640_201510241445671534128.jpg"),
(null,null,"棉花糖布朗尼","january0106","../img/cate/Menu/c640_201510211445431600883.jpg"),
(null,null,"自制红油","演堃@杨爸爸","../img/cate/Menu/c640_201510071444199399970.jpg"),
(null,null,"五仁馅","余甘果蜜的厨房","../img/cate/Menu/c640_201510041443926629509.jpg"),
(null,null,"自制糖桂花","清水淡竹","../img/cate/Menu/c640_201510031443839181642.jpg"),
(null,null,"转化糖浆","Meggy跳舞的苹果","../img/cate/Menu/c640_201509291443530854349.jpg"),
(null,null,"月饼馅料~~~乳酪绿豆蓉馅","salila82","../img/cate/Menu/c640_201509271443361522233.jpg"),
(null,null,"转化糖浆","salila82","../img/cate/Menu/c640_201509271443361216334.jpg"),
(null,null,"粉红胡椒蜜柚果酱","健康料理","../img/cate/Menu/c640_201509271443323295495.jpg"),
(null,null,"熬猪油","心美食","../img/cate/Menu/c640_201509261443269268420.jpg"),
(null,null,"自制转化糖浆","演堃@杨爸爸","../img/cate/Menu/c640_201509261443229459971.jpg"),
(null,null,"糖桂花","多芸转晴","../img/cate/Menu/c640_201509251443191548266.jpg"),
(null,null,"苦瓜茶","Penny-胖胖","../img/cate/Menu/c640_201509211442799947220.jpg"),
(null,null,"黑椒猪肉铺","悠哈厨房","../img/cate/Menu/c640_201509191442670869376.gif"),
(null,null,"猪板油","多芸转晴","../img/cate/Menu/c640_201509191442643635124.gif"),
(null,null,"自制虾油","西马栀子","../img/cate/Menu/c640_201509191442642601775.gif"),
(null,null,"宝宝辅食—自制芝麻碎","宝妈小厨.","../img/cate/Menu/c640_201509191442629314137.gif"),
(null,null,"美味健康的台湾香肠，自己动手做，so easy!","香肠岛","../img/cate/Menu/c640_201509181442571108872.jpg"),
(null,null,"自制莲蓉","杜鹃花美食","../img/cate/Menu/c640_201509181442557351285.jpg"),
(null,null,"【四叶小馆】椒浇芒果","四叶小馆","../img/cate/Menu/c640_201509171442481039569.jpg"),
(null,null,"月饼馅之白豆沙馅","Meggy跳舞的苹果","../img/cate/Menu/c640_201509171442475026621.jpg"),
(null,null,"自制蒜香烤肠","奇玉音缘","../img/cate/Menu/c640_201509161442404065661.jpg"),
(null,null,"黄金土豆饼","灵泠","../img/cate/Menu/c640_201509161442362962876.jpg"),
(null,null,"自制柠檬蜂蜜茶","josie19930105","../img/cate/Menu/c640_201509151442283115687.jpg"),
(null,null,"自制黑豆豆腐","緣豆兒","../img/cate/Menu/c640_201509141442208669969.jpg"),
(null,null,"蜂蜜西柚酱","龙门客栈掌柜","../img/cate/Menu/c640_201509111441954080936.jpg"),
(null,null,"李子果泥","健康料理","../img/cate/Menu/c640_201509141442193565412.jpg");


#*时令食材SeasonalIngredients*
insert into eatery_SeasonalIngredients values
(null,"白萝卜","赛人参","../img/cate/SeasonalIngredients/bailuobo.jpg"),
(null,"南瓜","有点小黄","../img/cate/SeasonalIngredients/nangua.jpg"),
(null,"红薯","“薯”于你的甜蜜","../img/cate/SeasonalIngredients/hongshu.jpg"),
(null,"梨","独享不是错","../img/cate/SeasonalIngredients/li.png"),
(null,"板栗","栗栗在目，甜糯在心","../img/cate/SeasonalIngredients/banli.jpg"),
(null,"山药","补虚上品“小人参”","../img/cate/SeasonalIngredients/shanyao.jpg"),
(null,"山楂","初恋的滋味","../img/cate/SeasonalIngredients/shanzha.jpg"),
(null,"牛肉","补铁养血666…","../img/cate/SeasonalIngredients/niurou.jpg"),
(null,"螃蟹","蟹逅金秋","../img/cate/SeasonalIngredients/pangxie.jpg"),
(null,"虾","好味道总爱“虾”说","../img/cate/SeasonalIngredients/xia.jpg"),
(null,"猪蹄","自带主角光环","../img/cate/SeasonalIngredients/zhuti.jpg"),
(null,"鸡胸肉","瘦身最佳肉类伴侣","../img/cate/SeasonalIngredients/jixiongrou.png"),
(null,"鸡翅","老少通吃","../img/cate/SeasonalIngredients/jichi.jpg"),
(null,"排骨","可记得吮指之乐","../img/cate/SeasonalIngredients/paigu.jpg");

#话题日志TopicLog
insert into eatery_TopicLog values
(null,"朱朱_ZCar","2小时前","null","3月10日早餐：青菜蛋三明治 芒果酸奶 雪花❄️酥、坚果、西梅、芒果 一个自己做的吐司，一......","6个喜欢，6条评论","../img/cate/theme/HeadPortrait/19_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190310155218096944911049719.jpg"),
(null,"清水淡竹","17小时前","null","芙蓉鲜蔬汤","4个喜欢，6条评论","../img/cate/theme/HeadPortrait/54_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019030915521282649048451954.jpg"),
(null,"米拉Miira","22小时前","null","#午餐#爽口小豆芽","7个喜欢，8条评论","../img/cate/theme/HeadPortrait/31_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155211108119410667631.jpg"),
(null,"米拉Miira","22小时前","null","#午餐#韭菜炒河虾","9个喜欢，8条评论","../img/cate/theme/HeadPortrait/31_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155211103765610667631.jpg"),
(null,"宸·羽","23小时前","null","#午餐# 煎红线鱼、拌茼蒿、鸡骨玉皇菇汤。","6个喜欢，10条评论","../img/cate/theme/HeadPortrait/37_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019030915521075833807796837.jpg"),
(null,"琪_feXjZ8E2","23小时前","null","#午餐# 焖鸡中翅 拌土豆粉","11个喜欢，26条评论","../img/cate/theme/HeadPortrait/29_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155210724124810602029.jpg"),
(null,"一溪月","24小时前","null","#午餐# 西红柿菠菜小米面条","5个喜欢，8条评论","../img/cate/theme/HeadPortrait/35_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155210394139910449735.jpg"),
(null,"一溪月","2019-3-9","null","#早餐# 周六早餐","7个喜欢，6条评论","../img/cate/theme/HeadPortrait/35_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155210271040010449735.jpg"),
(null,"最爱小志","2019-3-9","null","#面食#猪🐷年吃萌猪。奶黄包好看又好好吃哦！","14个喜欢，7条评论","../img/cate/theme/HeadPortrait/09_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019030915520944569607610709.jpg"),
(null,"宸·羽","2019-3-9","null","冒着大雨买回来的菜...","13个喜欢，17条评论","../img/cate/theme/HeadPortrait/37_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019030915521023224927796837.jpg"),
(null,"最爱小志","2019-3-9","null","#面食#肉夹馍。烙得金黄的馍夹上肉，一咬油滋滋往外冒哦⊙∀⊙！","12个喜欢，6条评论","../img/cate/theme/HeadPortrait/09_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019030915520943601977610709.jpg"),
(null,"肥肥美食","23小时前","周末","午餐开饭啦","5个喜欢，8条评论","../img/cate/theme/HeadPortrait/98_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019030915521058628197833598.jpg"),
(null,"江南布衣yuan","2019-3-9","今日主题食物~~糯米团子的华丽转身😀","#早餐#青团，我的😀煎豆沙糍粑，先生的😍","14个喜欢，16条评论","../img/cate/theme/HeadPortrait/27_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155209557286510838527.jpg"),
(null,"肥肥美食","2小时前","美天你好","美媚们早上好🌹","6个喜欢，6条评论","../img/cate/theme/HeadPortrait/98_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/2019031015521806405167833598.jpg"),
(null,"寻梦一ZbDu","3小时前","吃春饼","#面食#相信北方的人们都知道春饼，它是常见的一种食材，它薄薄......","8个喜欢，10条评论","../img/cate/theme/HeadPortrait/47_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190310155217926284310886247.jpg"),
(null,"等你的每一餐","3小时前","今天不管刮风下雨必须去买菜","#早餐#","5个喜欢，8条评论","../img/cate/theme/HeadPortrait/74_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190310155217887745210250474.jpg"),
(null,"江南布衣yuan","3小时前","周日，打卡，早安！😀","#早餐#元宵😍","10个喜欢，7条评论","../img/cate/theme/HeadPortrait/27_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190310155217823562610838527.jpg"),
(null,"江南布衣yuan","18小时前","周末，逛吃~~","#面食#成都小吃，钵钵鸡，重庆小面，😀太诱人了，把医嘱放在一......","6个喜欢，6条评论","../img/cate/theme/HeadPortrait/27_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155212525519510838527.jpg"),
(null,"逝去的爱情","19小时前","2019.3.9女儿下午茶点心","今上海绵绵细雨，呆在家里给女儿做的点心。 美好的一天，从早餐......","4个喜欢，6条评论","../img/cate/theme/HeadPortrait/06_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155212080734310454906.jpg"),
(null,"绿茶_gYGx","2019-3-9","你好，早晨~","煎三文鱼蔬菜沙拉","5个喜欢，8条评论","../img/cate/theme/HeadPortrait/07_avatar_big.jpg","../img/cate/theme/CommentAreaPhotos/20190309155209532944411169007.jpg");

#*话题加精*
insert into eatery_TopicLog_pic values
(null,"【食·色面点】","柑橘胡萝卜炒方便面","食·色","../img/cate/theme/Refining/2019030915520970416939732003.jpg"),
(null,"【食·色饼干】","浓香花生酥饼","食·色","../img/cate/theme/Refining/2019030815520090421849724956.jpg"),
(null,"【食·色甜品】","红曲大理石汤圆","食·色","../img/cate/theme/Refining/2019030715519253611259724956.jpg"),
(null,"【食·色面点】","桑叶松饼","食·色","../img/cate/theme/Refining/2019030615518355687479724956.jpg"),
(null,"【食·色甜品】","果干陈皮红糖八宝饭","食·色","../img/cate/theme/Refining/2019030515517506232689724956.jpg"),
(null,"【食·色汤羹】","酸萝卜老鸭汤","食·色","../img/cate/theme/Refining/2019030415516672607609724956.jpg"),
(null,"【食·色蛋糕】","焙煎芝麻沙拉汁戚风蛋糕","食·色","../img/cate/theme/Refining/2019030315515778812009724956.jpg"),
(null,"【食·色菜品】","笋干酥肉烧三鲜","食·色","../img/cate/theme/Refining/20190302155149195227510138013.jpg"),
(null,"【食·色杂务】","修理豆腐机","食·色","../img/cate/theme/Refining/2019022815513169021989724956.jpg"),
(null,"【食·色杂务】","赶走你的节后综合征","萌城美食","../img/cate/theme/Refining/2019022515510764301339702111.jpg"),
(null,"【食·色食材】","泡发竹笋干","食·色","../img/cate/theme/Refining/2019022215508014888839724956.jpg"),
(null,"【食·色汤羹】","橙碗奶香蒸蛋羹","食·色","../img/cate/theme/Refining/2019022115507149399219702111.jpg"),
(null,"【食·色面点】","葱包烩儿","Qiuyue0815","../img/cate/theme/Refining/2019022015506408157479702111.jpg"),
(null,"【食·色面点】","螺蛳汤方便面","食·色","../img/cate/theme/Refining/2019022015506312512399702111.jpg"),
(null,"【食·色汤羹】","三丝白菜豆腐汤","食·色","../img/cate/theme/Refining/2019021915505415191779724956.jpg"),
(null,"【食·色面点】","陈皮佛手风味红茶松饼","食·色","../img/cate/theme/Refining/2019021815504667816399724956.jpg"),
(null,"【食·色汤羹】","参芪归枣生姜羊肉汤","食·色","../img/cate/theme/Refining/20190217155036533796210104208.jpg"),
(null,"【食·色甜品】","香橙蒸蛋羹","食·色","../img/cate/theme/Refining/20190216155028010139910169539.jpg"),
(null,"【食·色甜品】","手工红豆沙","食·色","../img/cate/theme/Refining/2019021515501947814889724956.jpg"),
(null,"【食·色蛋糕】","陈皮佛手风味红茶戚风蛋糕","食·色","../img/cate/theme/Refining/20190214155010828629810138013.jpg");

#*MenuCarousel菜谱首页轮播***
CREATE TABLE eatery_MenuCarousel(
  mcid INT PRIMARY KEY AUTO_INCREMENT,
  mctitle varchar(128),   #文本
  mcspan varchar(128),    #菜谱数量
  mcurl varchar(128)      #图片路径
);
insert into eatery_MenuCarousel values
(null,"百吃不厌。。。小吃","6篇菜谱","../img/cate/Menu/c640_201510241445681498709.jpg"),
(null,"原来这道甜品在家也可以做","64篇菜谱","../img/cate/Menu/c640_201509271443361522233.jpg"),
(null,"菜谱视频的做法大全，高清哦","79篇菜谱","../img/cate/Menu/c640_201511161447655123769.jpg"),
(null,"2018年最受欢迎的100道菜","100篇菜谱","../img/cate/Menu/c640_201510041443926629509.jpg"),
(null,"馄饨皮的N种吃法","23篇菜谱","../img/cate/Menu/2019012215481460369219702111.jpg"),
(null,"营养健康无黄油小零食","69篇菜谱","../img/cate/Menu/2019012215481590518619702111.jpg"),
(null,"百变的滋味，家常凉菜","36篇菜谱","../img/cate/Menu/2019012215481596424079702111.jpg"),
(null,"网红美食，到底有多好吃","28篇菜谱","../img/cate/Menu/2019012215481497109739724956.jpg"),
(null,"恋爱算什么，零食才是王道","214篇菜谱","../img/cate/Menu/2019012215481220813969702111.jpg"),
(null,"秋刀鱼的滋味，猫跟你都想了解","16篇菜谱","../img/cate/Menu/c640_20160215145554152783413.jpg"),
(null,"百吃不厌。。。小吃","6篇菜谱","../img/cate/Menu/20190121154807880191810169539.jpg"),
(null,"原来这道甜品在家也可以做","64篇菜谱","../img/cate/Menu/20190121154807786053710169539.jpg"),
(null,"菜谱视频的做法大全，高清哦","79篇菜谱","../img/cate/Menu/20190121154807596939310169539.jpg"),
(null,"2018年最受欢迎的100道菜","100篇菜谱","../img/cate/Menu/20190121154807571334410169539.jpg"),
(null,"馄饨皮的N种吃法","23篇菜谱","../img/cate/Menu/2019012115480387927149702111.jpg"),
(null,"贴心热饮，暖手又驱寒","30篇菜谱","../img/cate/Menu/20190121154803823560210104208.jpg"),
(null,"拔牙后吃这些也有胃口","13篇菜谱","../img/cate/Menu/2019011615476492597629732003.jpg"),
(null,"精选15款热卖鲜肉粽","15件商品","../img/cate/Menu/20180614152895660241610104208.jpg"),
(null,"网红饮品 热销排行Top15","15件商品","../img/cate/Menu/2018061215287713669069732003.jpg"),
(null,"15款热卖冰格","15件商品","../img/cate/Menu/20180612152878215427110104208.jpg"),
(null,"最受欢迎的15款果汁","15件商品","../img/cate/Menu/2018060615282664781679732003.jpg"),
(null,"精选15款热卖糯米","15件商品","../img/cate/Menu/20180606152825564412710104208.jpg"),
(null,"精选15款热卖绿豆","15件商品","../img/cate/Menu/2018060515281830952789732003.jpg"),
(null,"推荐15款野生粽叶","15件商品","../img/cate/Menu/20180605152816727116510104208.jpg"),
(null,"精选15款热卖鲜肉粽","15件商品","../img/cate/Menu/2018060415281001547249732003.jpg"),
(null,"推荐15款热卖的西米","15件商品","../img/cate/Menu/20180604152808065263310104208.jpg"),
(null,"15款热卖的速食凉皮","15件商品","../img/cate/Menu/2018060115278413198259732003.jpg"),
(null,"精选15款热卖速溶咖啡","15件商品","../img/cate/Menu/20180531152773757660910104208.jpg"),
(null,"精选15款热卖棒棒冰","15件商品","../img/cate/Menu/2018053115277542229419732003.jpg");

#*********commonlyUsedTags常用标签***********
CREATE TABLE eatery_MenuCommonlyUsedTags(
  clid INT PRIMARY KEY AUTO_INCREMENT,
  cltitle varchar(128),   #文本
  clspan varchar(128),    #网址路径
  clurl varchar(128)      #图片路径
);
insert into eatery_MenuCommonlyUsedTags values
(null,"一周最热",null,"../img/cate/Menu/r01.jpg"),
(null,"人气菜肴",null,"../img/cate/Menu/r02.jpg"),
(null,"夏季食谱",null,"../img/cate/Menu/r03.jpg"),
(null,"高颜值",null,"../img/cate/Menu/r04.jpg"),
(null,"快手菜",null,"../img/cate/Menu/r05.jpg"),
(null,"早餐",null,"../img/cate/Menu/r06.jpg"),
(null,"家常菜谱",null,"../img/cate/Menu/r07.jpg"),
(null,"烘焙大全",null,"../img/cate/Menu/r08.jpg"),
(null,"亲子专区",null,"../img/cate/Menu/r09.jpg"),
(null,"所有菜谱",null,"../img/cate/Menu/r10.jpg"),
(null,"限时秒杀",null,"../img/cate/Menu/z01.jpg"),
(null,"白菜价",null,"../img/cate/Menu/z02.jpg"),
(null,"买了又买",null,"../img/cate/Menu/z03.jpg"),
(null,"厨房神器",null,"../img/cate/Menu/z04.jpg"),
(null,"镇店之宝",null,"../img/cate/Menu/z05.jpg"),
(null,"海淘食光",null,"../img/cate/Menu/z06.jpg"),
(null,"葡萄酒",null,"../img/cate/Menu/z07.jpg"),
(null,"咖啡",null,"../img/cate/Menu/z08.jpg"),
(null,"杯子",null,"../img/cate/Menu/z09.jpg"),
(null,"悦烘焙",null,"../img/cate/Menu/z10.jpg");


#***************Foodclassificationfamily 食材分类******************
CREATE TABLE eatery_Foodclassificationfamily(
  efid INT PRIMARY KEY AUTO_INCREMENT, #排序
  eftitle varchar(128),   #分类名称
  efnumber varchar(128)  #分类数量
);
insert into eatery_Foodclassificationfamily values
(null,"时令与热门",null),
(null,"肉禽类","共231种"),
(null,"水产品牌","共288种"),
(null,"蔬菜类","共473种"),
(null,"果品类","共196种"),
(null,"米面豆乳","共180种"),
(null,"调味品","共178种"),
(null,"药食","共80种");
#**************FoodLabelNavigationPage 食材标签导航页*************
CREATE TABLE eatery_FoodLabelNavigationPage(
  fid INT PRIMARY KEY AUTO_INCREMENT, #排序
  efid varchar(128),  #分类名称
  ftitle varchar(128),   #文本
  furl varchar(128)    #网址路径
);

insert into eatery_FoodLabelNavigationPage values
(null,1,"鸡肉","null"),
(null,1,"鸡翅","null"),
(null,1,"鸡蛋","null"),
(null,1,"牛肉","null"),
(null,1,"猪肉","null"),
(null,1,"排骨","null"),
(null,1,"小龙虾","null"),
(null,1,"皮皮虾","null"),
(null,1,"螃蟹","null"),
(null,1,"虾","null"),
(null,1,"扇贝","null"),
(null,1,"生蚝","null"),
(null,1,"南瓜","null"),
(null,1,"茄子","null"),
(null,1,"西红柿","null"),
(null,1,"土豆","null"),
(null,1,"黑木耳","null"),
(null,1,"秋葵","null"),
(null,2,"猪肉","null"),
(null,2,"排骨","null"),
(null,2,"里脊","null"),
(null,2,"猪蹄","null"),
(null,2,"五花肉","null"),
(null,2,"肋排","null"),
(null,2,"牛肉","null"),
(null,2,"牛排","null"),
(null,2,"肥牛","null"),
(null,2,"羊肉","null"),
(null,2,"猪肝","null"),
(null,2,"猪肘","null"),
(null,2,"火腿","null"),
(null,2,"香肠","null"),
(null,2,"培根","null"),
(null,2,"腊肉","null"),
(null,2,"肉松","null"),
(null,2,"整鸡","null"),
(null,2,"鸡肉","null"),
(null,2,"鸡翅","null"),
(null,2,"鸡腿","null"),
(null,2,"乌鸡","null"),
(null,2,"鸭肉","null"),
(null,2,"乳鸽","null"),
(null,2,"鸡蛋","null"),
(null,2,"鸭蛋","null"),
(null,2,"鸭脖","null"),
(null,2,"鹅肝","null"),
(null,2,"鹌鹑","null"),
(null,2,"更多","null"),
(null,3,"草鱼","null"),
(null,3,"鲤鱼","null"),
(null,3,"鲫鱼","null"),
(null,3,"带鱼","null"),
(null,3,"鲈鱼","null"),
(null,3,"黄花鱼","null"),
(null,3,"鳕鱼","null"),
(null,3,"鲅鱼","null"),
(null,3,"鲳鱼","null"),
(null,3,"鳗鱼","null"),
(null,3,"三文鱼","null"),
(null,3,"胖头鱼","null"),
(null,3,"罗非鱼","null"),
(null,3,"秋刀鱼","null"),
(null,3,"多宝鱼","null"),
(null,3,"鱼籽","null"),
(null,3,"鱼尾","null"),
(null,3,"鱼丸","null"),
(null,3,"小龙虾","null"),
(null,3,"虾","null"),
(null,3,"龙虾","null"),
(null,3,"螃蟹","null"),
(null,3,"大闸蟹","null"),
(null,3,"皮皮虾","null"),
(null,3,"牡蛎","null"),
(null,3,"扇贝","null"),
(null,3,"生蚝","null"),
(null,3,"蛤蜊","null"),
(null,3,"蛏子","null"),
(null,3,"鲍鱼","null"),
(null,3,"海蜇","null"),
(null,3,"鱿鱼","null"),
(null,3,"海参","null"),
(null,3,"海带","null"),
(null,3,"紫菜","null"),
(null,3,"更多","null"),
(null,4,"白菜","null"),
(null,4,"油菜","null"),
(null,4,"青菜","null"),
(null,4,"芹菜","null"),
(null,4,"菠菜","null"),
(null,4,"韭菜","null"),
(null,4,"大白菜","null"),
(null,4,"娃娃菜","null"),
(null,4,"芦蒿","null"),
(null,4,"莴笋","null"),
(null,4,"油麦菜","null"),
(null,4,"芦笋","null"),
(null,4,"土豆","null"),
(null,4,"红薯","null"),
(null,4,"芋头","null"),
(null,4,"洋葱","null"),
(null,4,"萝卜","null"),
(null,4,"山药","null"),
(null,4,"西红柿","null"),
(null,4,"藕","null"),
(null,4,"豆角","null"),
(null,4,"茄子","null"),
(null,4,"青椒","null"),
(null,4,"菜花","null"),
(null,4,"豇豆","null"),
(null,4,"秋葵","null"),
(null,4,"毛豆","null"),
(null,4,"四季豆","null"),
(null,4,"黄瓜","null"),
(null,4,"冬瓜","null"),
(null,4,"西葫芦","null"),
(null,4,"黑木耳","null"),
(null,4,"蘑菇","null"),
(null,4,"香菇","null"),
(null,4,"金针菇","null"),
(null,4,"杏鲍菇","null"),
(null,4,"茭白","null"),
(null,4,"竹笋","null"),
(null,4,"荠菜","null"),
(null,4,"香椿","null"),
(null,4,"马兰头","null"),
(null,4,"更多","null"),
(null,5,"菠萝","null"),
(null,5,"草莓","null"),
(null,5,"芒果","null"),
(null,5,"木瓜","null"),
(null,5,"牛油果","null"),
(null,5,"百香果","null"),
(null,5,"栗子","null"),
(null,5,"花生","null"),
(null,5,"腰果","null"),
(null,5,"核桃","null"),
(null,5,"芝麻","null"),
(null,5,"莲子","null"),
(null,5,"枸杞","null"),
(null,5,"桂圆","null"),
(null,5,"黑芝麻","null"),
(null,5,"红枣","null"),
(null,5,"蓝莓","null"),
(null,5,"更多","null"),
(null,6,"糯米","null"),
(null,6,"小米","null"),
(null,6,"荞麦粉","null"),
(null,6,"玉米","null"),
(null,6,"燕麦","null"),
(null,6,"米粉","null"),
(null,6,"面条","null"),
(null,6,"意大利面","null"),
(null,6,"糯米粉","null"),
(null,6,"红豆","null"),
(null,6,"绿豆","null"),
(null,6,"黄豆","null"),
(null,6,"豆腐","null"),
(null,6,"豆浆","null"),
(null,6,"腐竹","null"),
(null,6,"油豆腐","null"),
(null,6,"烤麸","null"),
(null,6,"豆皮","null"),
(null,6,"淡奶油","null"),
(null,6,"奶酪","null"),
(null,6,"酸奶","null"),
(null,6,"牛奶","null"),
(null,6,"芝士","null"),
(null,6,"巧克力","null"),
(null,6,"粉皮","null"),
(null,6,"粉丝","null"),
(null,6,"年糕","null"),
(null,6,"粉条","null"),
(null,6,"河粉","null"),
(null,6,"更多","null"),
(null,7,"番茄酱","null"),
(null,7,"番茄吐司","null"),
(null,7,"豆瓣酱","null"),
(null,7,"豆瓣","null"),
(null,7,"豆豉","null"),
(null,7,"芥末酱","null"),
(null,7,"蜂蜜","null"),
(null,7,"醪糟","null"),
(null,7,"酱油","null"),
(null,7,"鸡精","null"),
(null,7,"干黄酱","null"),
(null,7,"更多","null"),
(null,8,"燕窝","null"),
(null,8,"阿胶","null"),
(null,8,"雪蛤","null"),
(null,8,"茯苓","null"),
(null,8,"党参","null"),
(null,8,"当归","null"),
(null,8,"银耳","null"),
(null,8,"枣","null"),
(null,8,"百合","null"),
(null,8,"黄芪","null"),
(null,8,"花胶","null"),
(null,8,"更多","null");

#*****珍品发现尖货 TreasureDiscoveryTopGoods******
CREATE TABLE eatery_TreasureDiscoveryTopGoods(
  Tid INT PRIMARY KEY AUTO_INCREMENT, #排序
  Ttitle varchar(128),   #商品名称
  Tprice DECIMAL(10,2),   #价格
  Tsrc varchar(128),    #图片路径
  Thref varchar(128)    #网址路径
);

insert into eatery_TreasureDiscoveryTopGoods values
(null,"【品质好物】五常·稻花香头茬米（5斤米砖＊2）","119.00","../img/JaneChoose/201710241508835944514.jpg","null"),
(null,"蛋清分离器烤箱油纸配件收纳包","99.00","../img/JaneChoose/201812051543990708728.png","null"),
(null,"蛋清分离器烤箱油纸量勺套装","40.00","../img/JaneChoose/201811141542165656366.png","null"),
(null,"陶瓷餐具北欧盘子好看的菜盘家用创意西餐碟平盘日式摆盘拼盘碟子","5.90","../img/JaneChoose/201803291522318849153.jpg","null"),
(null,"极路客 智能行车记录仪","499.00","../img/JaneChoose/201803151521098066157.jpg","null"),
(null,"ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动","599.00","../img/JaneChoose/201801261516959503565.jpg","null"),
(null,"ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机","1599.00","../img/JaneChoose/201801261516959239252.jpg","null"),
(null,"百花牌蜂蜜","59.90","../img/JaneChoose/201712271514357431647.png","null"),
(null,"妙语纯净天然自产野生蜂蜜","48.90","../img/JaneChoose/201712271514356817267.jpg","null"),
(null,"陈太女士滋补养生煲汤材料","19.90","../img/JaneChoose/201712251514188112109.jpg","null"),
(null,"冰姨益脾化湿四神汤","16.80","../img/JaneChoose/201712251514187286314.jpg","null"),
(null,"膳太虫草花干贝玉米汤","21.88","../img/JaneChoose/201712251514186814709.jpg","null"),
(null,"惠而浦空气炸锅","429.00","../img/JaneChoose/2017122215139239844029732003.jpg","null"),
(null,"九阳家用智能空气电炸锅","399.00","../img/JaneChoose/201712221513923667132.jpg","null"),
(null,"山本家用空气炸锅","328.00","../img/JaneChoose/201712221513922944969.jpg","null"),
(null,"九阳电饼铛","179.00","../img/JaneChoose/201712211513840019824.jpg","null"),
(null,"九阳家用电饼铛","259.00","../img/JaneChoose/201712211513837828617.jpg","null"),
(null,"利仁电饼档","79.00","../img/JaneChoose/201712211513836730815.png","null"),
(null,"东菱DL-N01煎牛排机","1899.00","../img/JaneChoose/201712111512986357196.jpg","null"),
(null,"美的迷你家用智能柴火饭煲","299.00","../img/JaneChoose/2017121115129707767109732003.jpg","null"),
(null,"蛋清分离器烤箱油纸","30.00","../img/JaneChoose/201812171545013108184.png","null"),
(null,"蛋清分离器烤箱油纸配件收纳包","99.00","../img/JaneChoose/201812051543990708728.png","null"),
(null,"蛋清分离器烤箱油纸量勺套装","40.00","../img/JaneChoose/201811141542165656366.png","null"),
(null,"蛋清分离器打蛋器烤箱油纸","30.00","../img/JaneChoose/201808201534757157587.png","null"),
(null,"东北特产干豆腐","9.90","../img/JaneChoose/201806141528958244206.jpg","null"),
(null,"大豆蛋白人造肉豆腐皮蛋白肉","2.29","../img/JaneChoose/201806141528958071857.jpg","null"),
(null,"云丝干豆腐皮丝","14.80","../img/JaneChoose/201806141528957681868.jpg","null"),
(null,"四川土特产开江豆笋","24.80","../img/JaneChoose/201806141528957350238.jpg","null"),
(null,"油豆皮纯正天然","8.90","../img/JaneChoose/201806141528957192796.jpg","null"),
(null,"头层腐竹干货纯正农家自制天然","14.80","../img/JaneChoose/201806141528956889780.jpg","null"),
(null,"富昌黄豆腐竹400g","29.90","../img/JaneChoose/201806141528956439207.jpg","null"),
(null,"东北农家自制大豆腐竹","7.80","../img/JaneChoose/201806141528956186530.jpg","null"),
(null,"八荒腐竹200克","28.00","../img/JaneChoose/201806141528955961649.jpg","null"),
(null,"农家干货豆制品","9.80","../img/JaneChoose/201806141528955599640.jpg","null"),
(null,"500克农家自制纯正","9.41","../img/JaneChoose/201806141528955270962.png","null"),
(null,"老郭家铺子油豆腐皮豆制品","7.10","../img/JaneChoose/201806141528955092726.jpg","null"),
(null,"龙江人家腐竹干货500g","29.90","../img/JaneChoose/201806141528954910847.jpg","null"),
(null,"腐竹干货农家自制豆皮","23.80","../img/JaneChoose/201806141528954656817.png","null"),
(null,"富昌腐竹250g黄豆腐竹","19.90","../img/JaneChoose/201806141528954189759.jpg","null"),
(null,"图优嘉兴粽子礼盒","34.50","../img/JaneChoose/201806141528953228607.jpg","null"),
(null,"【品质好物】五常·稻花香头茬米（5斤米砖＊2）","119.00","../img/JaneChoose/201710241508835944514.jpg","null"),
(null,"Brita Marella碧然德滤水壶套装","182.00","../img/JaneChoose/201702061486347664681.jpg","null"),
(null,"孕妇婴幼儿核桃油","198.00","../img/JaneChoose/201609261474900219693.jpg","null"),
(null,"物之味手工四物汤膏茶","99.00","../img/JaneChoose/201608091470734562741.jpg","null"),
(null,"沂蒙山区农家小黄米 250g无污染宝宝米","1.00","../img/JaneChoose/201607271469614113437.jpg","null"),
(null,"康宁 3.5L晶彩透明汤锅VS-3.5","599.00","../img/JaneChoose/201606161466008118932.jpg","null"),
(null,"三的家用不锈钢电动碎肉机","119.00","../img/JaneChoose/201606011464739384106.jpg","null"),
(null,"ACA长方形不粘土司模具","39.00","../img/JaneChoose/201605271464331756564.jpg","null"),
(null,"玻璃旋转调味瓶包邮","63.00","../img/JaneChoose/201605061462525138823.jpg","null"),
(null,"ACA/北美电器 AHM-P125A手持搅拌器电动打蛋器","79.00","../img/JaneChoose/201802111518353609482.png","null"),
(null,"三全端午节猪肉、八宝、蜜枣、豆沙粽子组合300g*4包","29.90","../img/JaneChoose/201604141460612090776.jpg","null"),
(null,"九阳 KX-30WJ05 电烤箱","299.00","../img/JaneChoose/201604141460599902877.jpg","null"),
(null,"得利仕炒锅无油烟不粘锅平底锅","79.00","../img/JaneChoose/201604131460516217228.jpg","null"),
(null,"今日特价：美国小蜜蜂紫草膏15g 婴儿驱蚊虫叮咬天然止痒膏","36.40","../img/JaneChoose/201604081460076903246.jpg","null"),
(null,"德国进口欧德堡超高温灭菌3.5%全脂纯牛奶  200ml*24","59.00","../img/JaneChoose/201604051459858212125.jpg","null"),
(null,"ACA/北美电器 AHM-PE350A 多功能手持料理机 搅拌机婴儿辅食绞肉","199.00","../img/JaneChoose/201605271464322774434.jpg","null"),
(null,"食帖01：Brunch吧！没那么赶时间 附别册《自给自足》","25.97","../img/JaneChoose/201603041457089728687.jpg","null"),
(null,"最美之物——日本民艺陶瓷之旅","29.70","../img/JaneChoose/201603021456913086723.jpg","null"),
(null,"早餐礼赞——歌颂生活的方式有很多，热爱早餐便是其中一种","24.00","../img/JaneChoose/201603021456911230822.jpg","null"),
(null,"克洛斯威跳绳正品，专业比赛健身减肥运动","9.90","../img/JaneChoose/201602251456408147757.jpg","null");

#* HealthyHomeRotation 健康首页轮播***
CREATE TABLE eatery_HealthyHomeRotation(
  Hcid INT PRIMARY KEY AUTO_INCREMENT,
  Hctitle varchar(128),   #文本
  Hcspan varchar(128),    #图片路径
  Hcurl varchar(128)      #链接路径
);
insert into eatery_HealthyHomeRotation values
(null,"春季常喝3中花茶，防止犯困","../img/Healthy/20190320155304586922310169539.jpg",null),
(null,"调理痰湿体质，试试这些食疗方","../img/Healthy/20190320155304558989510169539.jpg",null),
(null,"饮食五招防治春燥，春燥吃什么？","../img/Healthy/20190319155298578461310138013.jpg",null),
(null,"怀孕后，孕妇要注意哪些食物？","../img/Healthy/20190319155298380675010138013.jpg",null),
(null,"宝宝补脑，适合吃什么？","../img/Healthy/20190319155298275322510138013.jpg",null),
(null,"春季常喝3中花茶，防止犯困","../img/Healthy/20190320155304586922310169539.jpg",null),
(null,"调理痰湿体质，试试这些食疗方","../img/Healthy/20190320155304558989510169539.jpg",null),
(null,"饮食五招防治春燥，春燥吃什么？","../img/Healthy/20190319155298578461310138013.jpg",null),
(null,"怀孕后，孕妇要注意哪些食物？","../img/Healthy/20190319155298380675010138013.jpg",null),
(null,"宝宝补脑，适合吃什么？","../img/Healthy/20190319155298275322510138013.jpg",null),
(null,"上班族抗疲劳吃什么？","../img/Healthy/20190322155324362094310138013.jpg",null),
(null,"中老年必看：尿酸高吃什么好？","../img/Healthy/20190322155324324273510138013.jpg",null),
(null,"春分养生，注意养阳！","../img/Healthy/20190321155315872176810138013.jpg",null),
(null,"春天昏昏欲睡，饮食上怎么提神？","../img/Healthy/20190321155315818732410138013.jpg",null),
(null,"春季养生，坚持做好这5件事","../img/Healthy/20190321155313801770410169539.jpg",null),
(null,"春季养生食物，这10种别错过！","../img/Healthy/20190320155307115881210138013.jpg",null),
(null,"生活中降血糖的蔬菜有哪些？","../img/Healthy/20190320155307054785210138013.jpg",null),
(null,"中老年必看：尿酸高吃什么好？","../img/Healthy/20190322155324324273510138013.jpg",null),
(null,"春分养生，注意养阳！","../img/Healthy/20190321155315872176810138013.jpg",null),
(null,"春天昏昏欲睡，饮食上怎么提神？","../img/Healthy/20190321155315818732410138013.jpg",null),
(null,"春季养生，坚持做好这5件事","../img/Healthy/20190321155313801770410169539.jpg",null),
(null,"春季养生食物，这10种别错过！","../img/Healthy/20190320155307115881210138013.jpg",null),
(null,"生活中降血糖的蔬菜有哪些？","../img/Healthy/20190320155307054785210138013.jpg",null);

#*********HealthRecommendation 健康推荐********
CREATE TABLE eatery_HealthRecommendation(
  HRcid INT PRIMARY KEY AUTO_INCREMENT,
  HRctitle varchar(128),   #文本标题
  HRcontent varchar(128),  #文本内容
  HRtime varchar(128),  #文本时间
  Hcurl varchar(128)      #链接路径
);
insert into eatery_HealthRecommendation values
(null,"上班族抗疲劳吃什么？","做在写字楼里的白领们都有这样的困扰，一天上班下来，浑身乏力，酸痛等。那么，这些都是疲劳的表现。我们可以通过按摩、饮食、药","2019-3-22",null),
(null,"中老年必看：尿酸高吃什么好？","尿酸高是人体内嘌呤代谢发生紊乱，导致血液中尿酸增多而引起的一种代谢性疾病，极易引发痛风等疾病，好多中老年人频繁出现痛风、","2019-3-22",null),
(null,"经常头痛吃什么食物好？","很多疾病除了通过药物治疗，也可以通过饮食来调理，在我们日常吃的食物中，大部分是能起到食疗作用的，那么经常头痛吃什么食物好","2019-3-22",null),
(null,"女人贫血吃什么好？","有些太过瘦弱的女性朋友，经常手脚冰冷，而且面色苍白，这很有可能是贫血的征兆，需要吃些食物来调养，那么贫血吃什么好？","2019-3-22",null),
(null,"女性体寒怎么调理呢？","驱寒食物，生活中，不少女性都有体寒的问题，这给女性们的身体健康带来了不小的影响，因此要及时调理。那么女性吃什么驱寒呢？女","2019-3-22",null),
(null,"春分养生，注意养阳！","春分是天地间阴阳交合、万物新生的重要时刻,此时养生宜注重养阳,保持阴阳平衡，而饮食养阳是其中最重要的一种方式。那么春分如","2019-3-21",null),
(null,"春天昏昏欲睡，饮食上怎么提神？","春天总是感觉特别累，无精打采，人就容易昏昏欲睡，其实这就是春困，特别是对于上班族来说，这是不能忽略的问题。不妨试试小编今","2019-3-21",null),
(null,"哪些食物对心脏有利？对心脏有害？","现代不规律生活加上不健康的饮食习惯，这些都危害着心脏的健康，此时，健康饮食发挥着至关重要的作用。哪些食物对心脏有利？对心","2019-3-21",null),
(null,"整天看电脑，清肝明目吃什么好？","上班族、电脑族整天对着电脑，这时保护视力很重要，不妨常吃清肝明目的食物。那么清肝明目吃什么最好？","",null),
(null,"孕晚期的宝妈们从阳台吃什么？","很多准妈妈到了孕晚期的时候肚子都已经很大了，身体活动起来会比较受限。为了预防早产，准妈妈除了生活上要多注意避免意外，在饮","2019-3-21",null),
(null,"春季湿气缠身，祛湿必备这些食物","春季阴雨绵绵，外湿困阻脾阳，引起气血运行不畅、经脉不通，人体就会感到疲乏、嗜睡。所以，脾虚湿困是“春困”的主要原因。想消","2019-3-21",null),
(null,"减肥还想吃主食，这些热量最低","对于减肥的人来说，吃主食怕胖，不吃主食难受。尤其是还当主食来吃，一不小心就可能导致热量超标。那么主食中有哪些是热量比较低","2019-3-21",null),
(null,"春季养生，坚持做好这5件事","万物初生始于春，在这个阶段正是养生的好机会，因此，不管男女都要及时做好养生准备。那么在春季该如何养生好呢?这5件事，建议","2019-3-21",null),
(null,"黑芝麻的功效与作用，你知道多少？","黑芝麻营养十分丰富，一直被视为滋补圣品。黑芝麻不仅具有食用功效，而且还具有药用养生功效，不仅可以补充营养，而且还可以养生","2019-3-20",null),
(null,"山药的最佳搭配有哪些？","日常生活中，山药是很常见的一种食物，它的做法多样，味道好，含有丰富的营养物质，深受人们的喜欢。山药可单独煮、蒸食用，还可","2019-3-20",null),
(null,"肝脏排毒，喝什么茶好？","肝脏是我们人体的排毒器官，肝胆畅通，人体血液清澈、全身代谢系统畅通无阻，营养有效吸收，废物顺利排出，如果肝脏排毒不好会严","2019-3-20",null),
(null,"春季养生食物，这10种别错过！","春季在不知不觉中已经来到了我们身边，一年之计在于春，调理身体要从春季开始重视。正确的饮食习惯可以预防疾病，延年益寿。下面","2019-3-20",null),
(null,"生活中降血糖的蔬菜有哪些？","高血糖是糖尿病的前兆，所以高血糖甚至糖尿病患者要学会平稳血糖才能有利于健康!通过饮食来降低血糖是治疗糖尿病的有效手段，但","2019-3-20",null),
(null,"中气不足，如何补？","日常生活中有哪些方式可以补气呢？除了喝中药调理身体，还可以通过运动、饮食等方式将身体状况调好。有哪些运动可以帮助补气呢？","2019-3-20",null),
(null,"西洋参的这4个好处，你都知道吗？","很多人都知道西洋参是滋补品，却不知道西洋参到底能给我们带来哪些好处，只是看到很多人买就跟着买，今天我们就一起来看看西洋参","2019-3-20",null),
(null,"上班族抗疲劳吃什么？","做在写字楼里的白领们都有这样的困扰，一天上班下来，浑身乏力，酸痛等。那么，这些都是疲劳的表现。我们可以通过按摩、饮食、药","2019-3-22",null),
(null,"中老年必看：尿酸高吃什么好？","尿酸高是人体内嘌呤代谢发生紊乱，导致血液中尿酸增多而引起的一种代谢性疾病，极易引发痛风等疾病，好多中老年人频繁出现痛风、","2019-3-22",null),
(null,"经常头痛吃什么食物好？","很多疾病除了通过药物治疗，也可以通过饮食来调理，在我们日常吃的食物中，大部分是能起到食疗作用的，那么经常头痛吃什么食物好","2019-3-22",null),
(null,"女人贫血吃什么好？","有些太过瘦弱的女性朋友，经常手脚冰冷，而且面色苍白，这很有可能是贫血的征兆，需要吃些食物来调养，那么贫血吃什么好？","2019-3-22",null),
(null,"女性体寒怎么调理呢？","驱寒食物，生活中，不少女性都有体寒的问题，这给女性们的身体健康带来了不小的影响，因此要及时调理。那么女性吃什么驱寒呢？女","2019-3-22",null),
(null,"春分养生，注意养阳！","春分是天地间阴阳交合、万物新生的重要时刻,此时养生宜注重养阳,保持阴阳平衡，而饮食养阳是其中最重要的一种方式。那么春分如","2019-3-21",null),
(null,"春天昏昏欲睡，饮食上怎么提神？","春天总是感觉特别累，无精打采，人就容易昏昏欲睡，其实这就是春困，特别是对于上班族来说，这是不能忽略的问题。不妨试试小编今","2019-3-21",null),
(null,"哪些食物对心脏有利？对心脏有害？","现代不规律生活加上不健康的饮食习惯，这些都危害着心脏的健康，此时，健康饮食发挥着至关重要的作用。哪些食物对心脏有利？对心","2019-3-21",null),
(null,"整天看电脑，清肝明目吃什么好？","上班族、电脑族整天对着电脑，这时保护视力很重要，不妨常吃清肝明目的食物。那么清肝明目吃什么最好？","2019-3-21",null),
(null,"孕晚期的宝妈们从阳台吃什么？","很多准妈妈到了孕晚期的时候肚子都已经很大了，身体活动起来会比较受限。为了预防早产，准妈妈除了生活上要多注意避免意外，在饮","2019-3-21",null),
(null,"春季湿气缠身，祛湿必备这些食物","春季阴雨绵绵，外湿困阻脾阳，引起气血运行不畅、经脉不通，人体就会感到疲乏、嗜睡。所以，脾虚湿困是“春困”的主要原因。想消","2019-3-21",null),
(null,"减肥还想吃主食，这些热量最低","对于减肥的人来说，吃主食怕胖，不吃主食难受。尤其是还当主食来吃，一不小心就可能导致热量超标。那么主食中有哪些是热量比较低","2019-3-21",null),
(null,"春季养生，坚持做好这5件事","万物初生始于春，在这个阶段正是养生的好机会，因此，不管男女都要及时做好养生准备。那么在春季该如何养生好呢?这5件事，建议","2019-3-21",null),
(null,"黑芝麻的功效与作用，你知道多少？","黑芝麻营养十分丰富，一直被视为滋补圣品。黑芝麻不仅具有食用功效，而且还具有药用养生功效，不仅可以补充营养，而且还可以养生","2019-3-20",null),
(null,"山药的最佳搭配有哪些？","日常生活中，山药是很常见的一种食物，它的做法多样，味道好，含有丰富的营养物质，深受人们的喜欢。山药可单独煮、蒸食用，还可","2019-3-20",null),
(null,"肝脏排毒，喝什么茶好？","肝脏是我们人体的排毒器官，肝胆畅通，人体血液清澈、全身代谢系统畅通无阻，营养有效吸收，废物顺利排出，如果肝脏排毒不好会严","2019-3-20",null),
(null,"春季养生食物，这10种别错过！","春季在不知不觉中已经来到了我们身边，一年之计在于春，调理身体要从春季开始重视。正确的饮食习惯可以预防疾病，延年益寿。下面","2019-3-20",null),
(null,"生活中降血糖的蔬菜有哪些？","高血糖是糖尿病的前兆，所以高血糖甚至糖尿病患者要学会平稳血糖才能有利于健康!通过饮食来降低血糖是治疗糖尿病的有效手段，但","2019-3-20",null),
(null,"中气不足，如何补？","日常生活中有哪些方式可以补气呢？除了喝中药调理身体，还可以通过运动、饮食等方式将身体状况调好。有哪些运动可以帮助补气呢？","2019-3-20",null),
(null,"西洋参的这4个好处，你都知道吗？","很多人都知道西洋参是滋补品，却不知道西洋参到底能给我们带来哪些好处，只是看到很多人买就跟着买，今天我们就一起来看看西洋参","2019-3-20",null),
(null,"上班族抗疲劳吃什么？","做在写字楼里的白领们都有这样的困扰，一天上班下来，浑身乏力，酸痛等。那么，这些都是疲劳的表现。我们可以通过按摩、饮食、药","2019-3-22",null),
(null,"经常头痛吃什么食物好？","很多疾病除了通过药物治疗，也可以通过饮食来调理，在我们日常吃的食物中，大部分是能起到食疗作用的，那么经常头痛吃什么食物好","2019-3-22",null),
(null,"女人贫血吃什么好？","有些太过瘦弱的女性朋友，经常手脚冰冷，而且面色苍白，这很有可能是贫血的征兆，需要吃些食物来调养，那么贫血吃什么好？","2019-3-22",null),
(null,"春分养生，注意养阳！","春分是天地间阴阳交合、万物新生的重要时刻,此时养生宜注重养阳,保持阴阳平衡，而饮食养阳是其中最重要的一种方式。那么春分如","2019-3-21",null),
(null,"春天昏昏欲睡，饮食上怎么提神？","春天总是感觉特别累，无精打采，人就容易昏昏欲睡，其实这就是春困，特别是对于上班族来说，这是不能忽略的问题。不妨试试小编今","2019-3-21",null),
(null,"整天看电脑，清肝明目吃什么好？","上班族、电脑族整天对着电脑，这时保护视力很重要，不妨常吃清肝明目的食物。那么清肝明目吃什么最好？","2019-3-21",null),
(null,"肝脏排毒，喝什么茶好？","肝脏是我们人体的排毒器官，肝胆畅通，人体血液清澈、全身代谢系统畅通无阻，营养有效吸收，废物顺利排出，如果肝脏排毒不好会严","2019-3-20",null),
(null,"春季养生食物，这10种别错过！","春季在不知不觉中已经来到了我们身边，一年之计在于春，调理身体要从春季开始重视。正确的饮食习惯可以预防疾病，延年益寿。下面","2019-3-20",null),
(null,"生活中降血糖的蔬菜有哪些？","高血糖是糖尿病的前兆，所以高血糖甚至糖尿病患者要学会平稳血糖才能有利于健康!通过饮食来降低血糖是治疗糖尿病的有效手段，但","2019-3-20",null),
(null,"饮食五招防治春燥，春燥吃什么？","春天到来阳气上升，人体内的许多器官积蓄的内热，特别是肝脏，但是，如果内热散发出来后，人体就会出现春燥的症状，故而导致阴阳","2019-3-19",null),
(null,"缓解春燥，从饮食下手！","春季天气干燥而多风，人体内很可能因积蓄了较多的郁热或痰热，而出现相应的病症，如上火、干燥、急躁等，这即是所谓的“春燥”。","2019-3-19",null),
(null,"宝宝补脑，适合吃什么？","春天到了，正是小孩成长的好时期，这时多给孩子吃补脑食物，可以让孩子更聪明!那么小孩吃什么补脑呢？下面小编为您介绍小孩吃什","2019-3-19",null),
(null,"春季排毒养肝吃什么？","春季养生需要注意肝脏的保护，其中要懂得饮食的保健。养肝的食物有很多，而以春天时令菜最佳。那么，春季排毒养肝吃什么？","2019-3-18",null),
(null,"皮肤太干燥，吃什么能补水？","干燥的季节，补充水分非常重要，多吃一些补水的食物，对于身体是非常有好处的，那么补充水分吃什么好？","2019-3-18",null),
(null,"春天多养胃，7种蔬果推荐","时下，正是春季养生的紧要关头，而养胃更是重中之重。要想养胃，多吃下面这些蔬菜水果能帮助我们消化，保护你的胃，从而让我们的","2019-3-18",null),
(null,"老年人记忆力衰退，吃什么能延缓？","随着年龄的增长，老年人的生理机能会慢慢衰退，记忆力也会出现减退。记忆力的减退会给人平添许多不便和烦恼，因此大家一定要注意","2019-3-18",null),
(null,"春天吃鱼，哪些鱼可以补脑？","大自然中的一些食品有助于补脑健智，日常生活随处可见。如鱼头可以向大脑提供优质蛋白质和钙，孩子身体健康又聪明过人，那么孩子","2019-3-18",null),
(null,"低血糖怎么吃？饮食来稳定","很多只关注高血糖的问题，实际上低血糖也是对身心健康伤害比较严重的现象。发作后会出现昏迷，丧失意识，老年人、慢性病患者还容","2019-3-14",null),
(null,"一年十二个月的养生指南来了！先马再看吧！","学会养生对每个人都很重要，一般说到养生，我们第一反应大多都会想到饮食调理，确实，多吃一些有利于身体健康，营养丰富的食物，","2019-3-13",null),
(null,"内分泌失调吃什么好呢？","内分泌失调是女性常见的疾病,虽然不是很严重的疾病,但内分泌失调是很容易导致月经不调、痛经、色斑皱纹、易怒易躁、肥胖水肿出","2019-3-8",null),
(null,"减肥还想吃主食，这些热量最低","对于减肥的人来说，吃主食怕胖，不吃主食难受。尤其是还当主食来吃，一不小心就可能导致热量超标。那么主食中有哪些是热量比较低","2019-3-21",null),
(null,"6种自制茶，可有减肥功效","制作减肥茶，只需要在茶当中加入能够减肥的天然的食品，就一定可以达到减肥的效果，网上自己制作减肥茶的品种也很多，我们一起来","2019-3-19",null),
(null,"春季减肥，准备好着11种刮油食物","春季是减肥的季节，那么要如何减肥呢？减肥吃哪些食物好呢？下面就来了解一下。春季如何减肥呢？","",null),
(null,"食物吃对了，女性自有好容颜","人人都爱美，尤其是女人更爱美。不用想着怎么整容，其实吃对了就能起到养颜的效果，所以说，女人们想要有好容貌的话，建议坚持食","2019-3-15",null),
(null,"这些高蛋白食物，更有助于减肥","早餐要吃好，不仅对身体好，还能控制体重，如果早餐是高蛋白早餐，那就更利于减肥了。早餐要吃好。早餐吃富含蛋白质的食物有利于","2019-3-14",null),
(null,"春天不减肥，夏日徒伤悲","春天不减肥，夏日徒伤悲。春季减肥成功，夏季就能很好的享受瘦身的成果，瘦身一族应把握住春季减肥的时机。春天吃什么对减肥有效","2019-3-13",null),
(null,"女人滋阴养颜，吃什么食物好？","女性需要滋阴养液，润肺润燥，特别是进入更年期的女性，尤其女性能合理饮食也是能达到补阴作用。那么，滋阴食品有哪些？","2019-3-8",null),
(null,"哪些食物能够给肠道刮油呢？","平时聚会过多，经常吃过多的大鱼大肉，摄入的油脂不能及时的排出体外，不仅容易导致积聚成脂肪堆积，还会影响身体机能，因此在日","2019-3-6",null),
(null,"女生吃这些水果，让你更年轻","要知道吃对了水果可是有美容养颜作用的，尤其是中年女人，已经明显老化的她们，选择适合的水果吃，有助找回青春哟。那么水果种类","2019-3-6",null),
(null,"祛斑吃什么食物最有效？","容颜逝去爱易失，女人无论什么时候都不能忽视美容问题，不少人被脸上或身上的斑困扰着。那么，祛斑吃什么食物最有效？","2019-3-4",null),
(null,"春季减肥，减脂食谱吃起来","春季用心减肥，夏季就可以放心的穿喜欢的衣服。今天小编给大家分享春季吃什么可以减肥，下面一起来看看吧。","2019-3-4",null),
(null,"4款补水糖水，让你的皮肤不再干燥！","换季之交气候多变，有些人一到春天脸上的皮肤就干燥，甚至起皮，想要给肌肤补水，不单单只是多喝水,饮食上也要多注意补水。下面","2019-2-28",null),
(null,"春天美容养颜，吃什么好排毒？","排毒养颜成为不少白领女性关注的健康话题，其实在我们常吃的蔬菜水果中，就有不少具有解毒功效。如果不及时排毒，不仅会导致皮肤","2019-2-28",null),
(null,"女人吃的对，皮肤自美颜","人人都爱美，尤其是女人更爱美。不用想着怎么整容，其实吃对了就能起到养颜的效果，所以说，女人们想要有好容貌的话，建议坚持食","2019-2-28",null),
(null,"减肥管不住嘴，这些零食吃了不长胖","零食吃太多可是会发胖的，平日里除了要适量食用之外，还应该选对食物，这样才能让你的身材不发胖哟。","2019-2-26",null),
(null,"晚上喝汤加肥，小心更胖","我们都知道吃米饭是会导致肥胖的，所以很多人在减肥的时候都选择不吃米饭，只喝汤来进行减肥，那么你知道不吃饭只喝汤能减肥成功","2019-2-25",null),
(null,"减肥食物大盘点，避免进入误区","橘子和橙子都是可以帮助减肥的水果，橙子和橘子都属于柑橘类水果，两者的营养价值差不多。所以减肥效果也差不多，根据自己的喜好","2019-2-25",null),
(null,"女生皮肤差，吃这些可调理","俗话说百病生于气，不生气就不生病。但是恐怕很多人并不知道，人的皮肤状态也会受到心情的影响。如果女性平时经常生气，那么皮肤","2019-2-22",null),
(null,"4招帮你调理黄褐斑","黄褐斑可以说是比较难被去除的，这个是非常影响女人的美貌，今天小编就在这边跟大家讲讲一些去除黄褐斑的方法，如果你想要知道的","2019-2-21",null),
(null,"春天皮肤干燥，吃什么能补水？","春季气候温暖怡人，人的皮肤纹理由紧缩状态逐渐开始舒展，皮肤的表层血液供应量增加，皮脂腺和汗腺分泌增多，因此皮肤易干燥起皮","2019-2-19",null),
(null,"孕晚期的宝妈们从阳台吃什么？","很多准妈妈到了孕晚期的时候肚子都已经很大了，身体活动起来会比较受限。为了预防早产，准妈妈除了生活上要多注意避免意外，在饮","2019-3-21",null),
(null,"怀孕后，孕妇要注意哪些食物？","怀孕后，准妈妈的饮食可要多加留意了，除了要远离对孕妇胎儿不利的食物外，安胎保胎的食物也要适量摄入。那么，孕妇适宜吃哪些东","2019-3-19",null),
(null,"哺乳期妈妈，请远离这几种食物","新手妈妈要记得，当你需要喂奶的时候，就要凡事都特别注意。比如说有几类食物，一点都不能吃，不然伤身，同时还会因为宝宝健康的","2019-3-15",null),
(null,"产后恢复食疗方，准妈妈看过来","要知道，生产之后需要照顾宝宝，若是不及时养护身体的话，身体恢复得速度就会慢很多的。对此，建议女人们生产之后，采用食疗的法","2019-3-1",null),
(null,"孕期进补，吃人参好吗","女性怀孕以后有诸多讲究，特别是在饮食方面。孕妇怀孕期间需要均衡饮食，补充全面的营养才能保证孕妇和胎儿的健康。这些常识虽然","2019-2-28",null),
(null,"春天给宝宝这么吃，最是长身体","在春天里，宝宝能吃到新鲜的水果和蔬菜，还能呼吸新鲜的空气，晒到温暖的太阳，相比较于冬天来说，春天里的一切都特别适合宝宝长","2019-2-25",null),
(null,"春季孕妇适合吃什么水果蔬菜呢？","很多人说孕期孕妈妈要多吃些水果蔬菜，有利于补充各种元素均衡营养。而且春季气候又干燥，易上火，那么，春季孕妇适合吃什么水果","2019-2-18",null),
(null,"孕妇吃酸虽好，但不可过量","孕妇怀孕以后，胃口也会发生变化，有些孕妇在孕期会变得特别喜欢吃酸的食物。例如杨梅和草莓，当然还有包括山楂在内的酸性食物。","2019-1-31",null),
(null,"孕妇需补铁补血，饮食上吃什么好？","怀孕期间，孕妇肠道从食物中吸收铁的能力较未孕时明显提高。铁是制造血红蛋白的基本元素，孕妇无法获得充足的铁易患缺铁性贫血。","2019-1-30",null),
(null,"如何才能让小孩子爱上吃饭？","宝宝正处在生长发育的重要时期，需要充足的营养，食欲不佳不仅会影响孩子的体重和抵抗力，还会影响孩子的生长发育，尤其是正处在","2019-1-30",null),
(null,"3款食物，帮助孕妇消除水肿","女性怀孕之后身体非常容易水肿，尤其是到了孕晚期的时候更是容易水肿，那么孕妇吃些什么食物能预防水肿呢？去水肿的食物有哪些呢","2019-1-24",null),
(null,"提高宝宝记忆力，这些辅食能做到","怎么样可以提升宝宝的记忆力呢？想必这是很多妈妈们都会想要知道的吧！其实，除了陪宝宝玩游戏，看绘本之外，通过吃的办法也是可","2019-1-23",null),
(null,"孕期补血，孕妇可以吃什么？","孕妇在妊娠期间处于闭经状态，若孕妇贫血多数是因为孕妇的血红蛋白比较低，而胎儿的需求量又大，导致孕妇比较容易出现贫血症状。","2019-1-18",null),
(null,"宝宝吃水果注意这些，不易伤脾胃","水果里富含大量的维生素，对孩子的身体是极好的，只是在冬天水果就会变得有些冰凉，家长担心孩子吃了会拉肚子，那么在冬天究竟该","2019-1-18",null),
(null,"这些食物，预防孕妇流产","流产让孕妇很绝望，不少女人好不容易等来了宝宝，可是生活中不少因素都会导致流产。失去宝宝对她们的身体和心理都有很大的损伤。","2019-1-18",null),
(null,"产后吃这些，健康找回来","生完小孩子之后，很多女人似乎都松了一口气，但其实这才是“战斗”的开始。因为产后女人容易出现很多的问题，比如说贫血、缺奶水","2019-1-18",null),
(null,"产后脱发，别心急，饮食来调理","产后脱发几乎是所有新妈妈都会遇到的问题，有的脱发严重，有些较轻。这与产妇的生理变化、精神因素及生活方式有一定的关系，一般","2019-1-15",null),
(null,"孕妇便秘怎么办？日常调理很重要","便秘是怀孕期间常见的问题之一，女性一旦怀孕，自身的体内激素分泌就会发生变化，女性自身的孕激素水平会增加，可能会影响到食物","2019-1-10",null),
(null,"孕妇冬季进补，首推7种食物","冬天是人体进补的最佳时期之一，尤其是对孕妇这种急需营养的人群来说同样如此，所谓进补，是指在冬季通过食物或药物的补充，将身","2019-1-5",null),
(null,"孕妇吃榴莲的3个禁忌","榴莲是一种健康的水果，也被誉为“水果之王”，女性食用榴莲可以帮助缓解痛经、滋阴补肾。不过榴莲是一种容易上火的食物，因此很","2019-1-3",null),
(null,"春季湿气缠身，祛湿必备这些食物","春季阴雨绵绵，外湿困阻脾阳，引起气血运行不畅、经脉不通，人体就会感到疲乏、嗜睡。所以，脾虚湿困是“春困”的主要原因。想消","2019-3-21",null),
(null,"春季养生，坚持做好这5件事","万物初生始于春，在这个阶段正是养生的好机会，因此，不管男女都要及时做好养生准备。那么在春季该如何养生好呢?这5件事，建议","2019-3-21",null),
(null,"山药的最佳搭配有哪些？","日常生活中，山药是很常见的一种食物，它的做法多样，味道好，含有丰富的营养物质，深受人们的喜欢。山药可单独煮、蒸食用，还可","2019-3-20",null),
(null,"春季降肝火，这些水果有功效","春季人体新陈代谢旺盛，肝火旺盛，使人做事急躁，容易发火。因此，春季养生重在养肝。此时除了养肝之外，还应该降火。","2019-3-18",null),
(null,"春季养肝，7种好物不可错过","春季万物复苏、阳气始发，人的肝气也变的旺盛。睡眠不好也会出现肝气不顺的现象。今天就推荐一些春天养肝的食物吧。","2019-3-18",null),
(null,"养脾补气，这些食物要多吃","脾虚最大的危害是体现在脾胃上，也就是我们的消化系统上，而导致脾虚的很大一部分原因与饮食相关，因此，想要调理脾虚，也可以从","2019-3-15",null),
(null,"饮食养脾，去掉身上“坏毛病”","导致脾虚的原因有很多，根据不同的分类，脾虚最终以脾气虚、脾阳虚、中气下陷、脾不统血四大症状出现。脾气虚是最常见的，脾气虚","2019-3-14",null),
(null,"平时吃6种食物，补肾最有效","由于生活压力增大，很多男人在生活中会出现各种程度的肾虚、阳气不足现象。而很多男士会选择吃壮阳药来保持身体的强壮。其实壮阳","2019-3-13",null),
(null,"肾不好，这些食物能帮忙","肾是我们身体里非常重要的一个器官，如果肾不好，肾虚，我们的身体和精神都会受到损伤，那么强肾食物有哪些?下面就让我们一起过","2019-3-12",null),
(null,"春季养生，这些水果最该吃","一年之计在于春，春季是一年之首，也是非常适合养生呢！尤其是春季很多适合养生吃的水果，来帮助我们调理沉寂了一冬天的身体，那","2019-3-12",null),
(null,"春季阳气旺盛，养肝最合适","这阳气生发的春季里，大家要抓住养肝的好时机哟。这可不是乱说的，古籍有注“春气通肝，肝主春令”的说法。所以说，想要身体健康","2019-3-12",null),
(null,"肾好气色才好，女人要及时补肾","肾血也是人体血液循环的一部分，它出了问题，全身血液循环也会受到波及，从而影响气色。对此，建议女人要动手制作养肾佳肴食用。","2019-3-8",null),
(null,"养胃3个小妙招，春天养胃不能少","现在人们的生活质量是已经慢慢的在提高了，但是对于饮食，还是非常不重视的，经常会出现一些坏习惯，而这些坏习惯则是会直接伤害","2019-3-7",null),
(null,"女性更年期易缺钙，吃什么补钙好？","更年期女性对钙的吸收能力下降，容易出现腿疼，骨质疏松等等现象，所以，日常饮食要注意补钙，那么，更年期缺钙吃什么？","2019-3-6",null),
(null,"降血糖最有效的10种食物，患者不妨多吃！","当血糖值高于正常范围即为高血糖，一般人正常的血糖值为空腹3.9-6.0mmol/L，餐后两小时不超过7.7mmol/L。","2019-3-5",null),
(null,"春季养生汤，滋补又养颜","不少女性体质比较差，容颜憔悴，对此建议在这养生的季节里，不妨学会煲养生汤喝，帮助自己滋补身体和容貌。","2019-3-1",null),
(null,"水果能润燥，春天吃什么水果好？","水果是我们生活中离不了的食物，而春季正是许多水果上市的季节。春天气候比较干燥，人体体内水分容易流失，因此在春天一定要多吃","2019-2-28",null),
(null,"7款花茶，美容养颜不是问题！","春天悄悄来到了， 一年之计在于春，美女们要提前准备起来，这么一个美丽的季节，当然自己也要美美哒。花草茶因为味道清淡、气味","",null),
(null,"春季养生，选对食谱很重要","春季是个很适合养生的季节，你想要身体健康的话，建议靠食谱养生。也就是平日里饮食要选择合适的食谱烹饪，让身体通过饮食得到滋","2019-2-28",null),
(null,"早餐吃对了，才养胃","要想养好胃，早餐是十分重要的，要养成每天吃早餐的习惯，也要注意早餐应该吃些养胃暖胃的食物。那么早餐吃什么最养胃呢？下面一","2019-2-28",null);


#*********special 专题********
CREATE TABLE eatery_special(
  Hscid INT PRIMARY KEY AUTO_INCREMENT,
  Hsctitle varchar(128),   #文本标题
  Hssrc varchar(128),  #图片
  Hsurl varchar(128)      #链接路径
);
insert into eatery_special values
(null,"香椿·食鲜正当时","../img/special/20180403152272632599613.jpg",null),
(null,"尝鲜：春食野菜正当时","../img/special/2019032215532491922258197577.jpg",null),
(null,"麻辣小龙虾的做法大全","../img/special/201412191418968434953.jpg",null),
(null,"盐水花生的做法大全","../img/special/201501121421040797156.jpg",null),
(null,"酸梅汤的做法大全","../img/special/201501121421030817618.jpg",null),
(null,"辣子鸡的做法大全","../img/special/201501101420867277606.jpg",null),
(null,"可乐鸡翅的做法大全","../img/special/2018071815318872507858197577.jpg",null),
(null,"红烧肉的做法大全","../img/special/201511261448511476963.jpg",null),
(null,"糖醋排骨的做法大全","../img/special/201412151418633722494.jpg",null),
(null,"春季湿气重，祛湿食物吃起来","../img/special/20190321155313615842010169539.jpg",null),
(null,"缓解春燥，饮食早知道","../img/special/20190320155307023760410138013.jpg",null),
(null,"要想好气色，赶快补气血","../img/special/20190318155288115860410169539.jpg",null),
(null,"驱宫寒，多喝汤","../img/special/20190311155228762132110169539.jpg",null),
(null,"远离低血糖，饮食来稳定","../img/special/20190308155203183672210138013.jpg",null),
(null,"春天不减肥，夏日徒伤悲","../img/special/20190308155203195942510138013.jpg",null),
(null,"强推补血益气粥，让你吃出好气色","../img/special/20190308155203189527710138013.jpg",null),
(null,"天暖别乱吃，小心肠胃炎","../img/special/20190307155195238664410169539.jpg",null),
(null,"惊蛰养生原则：养肝健脾","../img/special/20190305155177569398410138013.jpg",null),
(null,"用眼过度，饮食缓解眼疲劳","../img/special/20190305155177918413710169539.jpg",null),
(null,"春日美容排毒，吃出好皮肤","../img/special/20190301155142852350210138013.jpg",null),
(null,"春季想要长高，孩子吃什么食物好","../img/special/20190226155116977514810138013.jpg",null),
(null,"春季养生，吃对很重要","../img/special/20190225155108403945810169539.jpg",null),
(null,"春季皮肤差，饮食来调节","../img/special/20190225155106572955210169539.jpg",null),
(null,"寒春易感冒，5种食物预防早","../img/special/20190222155082579167810138013.jpg",null),
(null,"春天到，防风御寒很重要","../img/special/20190220155064659261910169539.jpg",null),
(null,"春天皮肤易干燥，食物补水早知道","../img/special/20190219155056822417410138013.jpg",null),
(null,"春季润肺，呼吸更健康","../img/special/20190218155046855652810169539.jpg",null),
(null,"脂肪肝的饮食护理，5种食物别错过","../img/special/20190215155022585384310138013.jpg",null),
(null,"节时喝酒，节后养肝","../img/special/20190214155011651734410169539.jpg",null),
(null,"趁年轻，多补钙","../img/special/20190131154892403020610169539.jpg",null),
(null,"5种食物解油腻，春节必备放心吃","../img/special/20190131154892756220210138013.jpg",null),
(null,"预防老年痴呆，先从食疗下手","../img/special/20190131154892761623010138013.jpg",null),
(null,"孕妇需补铁，母婴更健康","../img/special/20190130154884059324610138013.jpg",null),
(null,"养发护发，重现年轻","../img/special/20190128154864277697110169539.jpg",null),
(null,"保护心脑血管，健康度过年关","../img/special/20190126154849034287910138013.jpg",null),
(null,"卵巢好，皮肤自然好","../img/special/20190124154829759754310169539.jpg",null),
(null,"冬天嘴唇脱皮，5种水果来护理","../img/special/20190122154815025423610138013.jpg",null),
(null,"保护心脏，食疗方奉上","../img/special/20190121154804252431210169539.jpg",null),
(null,"大寒养的好，健康少不了","../img/special/20190118154780470248510138013.jpg",null),
(null,"年末食5物，增强宝宝抵抗力","../img/special/20190117154769656148910169539.jpg",null),
(null,"烦躁情绪难控，5种食物缓解焦虑症","../img/special/20190115154754137385110138013.jpg",null),
(null,"阴虚耗损身体，滋阴食物来帮忙","../img/special/20190114154744554651510169539.jpg",null),
(null,"延缓大脑衰老，5种食物效果好","../img/special/20190111154719771186510138013.jpg",null),
(null,"冬季食5物，缓解胃胀气","../img/special/20190110154708746846410169539.jpg",null),
(null,"年末易上火，常备降火食疗方","../img/special/20190107154683019843110169539.jpg",null),
(null,"冬季肝火旺，5种食物帮你“灭火","../img/special/20190107154685307392810138013.jpg",null),
(null,"身体高血糖，饮食来帮您","../img/special/20190104154657158491810169539.jpg",null),
(null,"冬天增强免疫力，红色食物最给力","../img/special/20190103154648211424310169539.jpg",null),
(null,"预防血栓吃什么，5种食物来抗凝","../img/special/20190102154641538790510138013.jpg",null),
(null,"保护孩子的眼睛，合理饮食很重要","../img/special/20181229154607642335210138013.jpg",null),
(null,"吃它们，助你除肺热","../img/special/20181226154578727063510138013.jpg",null),
(null,"冬季养生，首要养心","../img/special/20181224154563022472110169539.jpg",null),
(null,"冬日补钙，健康常在","../img/special/20181220154529988836410169539.jpg",null),
(null,"冬天牙齿“娇嫩”，5种食物来保护","../img/special/20181218154510086650710169539.jpg",null),
(null,"痛经怎么办，5种食物可缓解","../img/special/20181217154501311263610138013.png",null),
(null,"冬季吃它们，燃烧卡路里","../img/special/20181214154478150297710138013.png",null),
(null,"冬天补水吃什么，这些果蔬有奇效","../img/special/20181213154466852982310169539.jpg",null),
(null,"深冬养生，别再熬夜伤身体","../img/special/20181211154449850354110138013.png",null),
(null,"温暖砂锅菜，咕嘟咕嘟好美味~","../img/special/20181210154441874263310169539.jpg",null),
(null,"冬天降温易感冒，食疗得当抗流感","../img/special/2018120715441738452938197577.jpg",null),
(null,"冬季健康饮食，远离“胆固醇”","../img/special/20181207154417596732710138013.png",null),
(null,"冬季养肝即养命，5种食物正当时","../img/special/20181205154399219220410169539.jpg",null),
(null,"“吃走”宫寒，温暖过冬","../img/special/20181204154391498535710138013.png",null),
(null,"冬季男女养肾，5种食物最补身","../img/special/20181203154380671663910169539.jpg",null),
(null,"老人冬季养生，5种食物最适宜","../img/special/20181130154356483760510138013.jpg",null),
(null,"食5物，清肺毒","../img/special/20181128154337162151810138013.jpg",null),
(null,"冬季养气补血，做个健康女人","../img/special/20181126154319996936310169539.jpg",null),
(null,"小雪到，御寒保暖不可少","../img/special/20181123154296673186910138013.jpg",null),
(null,"孕妇冬季进补，5种食物养胎不上火","../img/special/20181122154287857615110169539.jpg",null),
(null,"冬季手脚冰凉，还需补气血","../img/special/20181120154270916443410138013.jpg",null),
(null," 儿童冬令进补，多吃三类食物","../img/special/20181119154259556093110169539.jpg",null),
(null,"4种白色食物，养好你的肺","../img/special/20181116154235932323110138013.jpg",null),
(null,"冬天不怕冷，5种食物暖身又暖心","../img/special/20181115154226046415210169539.jpg",null),
(null,"拯救手残党的电饭煲食谱","../img/special/20181113154210082020210138013.jpg",null),
(null,"秋冬5大食物，帮你护肤养颜","../img/special/2018111215420181107288197577.jpg",null),
(null,"5种食物补脑益智，提高孩子记忆力","../img/special/20181112154199569562310169539.jpg",null),
(null,"明目抗疲劳，护眼食物要常吃","../img/special/20181109154175711348710138013.jpg",null),
(null,"秋天入睡难，5种食物缓失眠","../img/special/20181108154164616098810169539.jpg",null),
(null,"脱发掉发吃它们，还你乌黑秀发","../img/special/20181106154149581490010138013.jpg",null),
(null,"立冬养藏，滋阴补阳","../img/special/20181105154139713373410169539.jpg",null),
(null,"秋冬血压高，饮食调理很重要","../img/special/2018110215411532408088197577.jpg",null),
(null,"十人九痔，5种食物帮你缓解","../img/special/20181102154112615197510169539.jpg",null),
(null,"御寒暖胃，温暖过冬天","../img/special/20181101154106664578410138013.jpg",null),
(null,"秋季养肺，首先做好清肺工作","../img/special/20181026154054288151410138013.jpg",null),
(null,"美容养颜，多吃这些食物","../img/special/20181031154094939517910169539.jpg",null),
(null,"一年补透透，不如补霜降","../img/special/20181025154043628646510169539.jpg",null),
(null,"日常防便秘，吃它“不挡路”","../img/special/20181023154028834214810138013.jpg",null),
(null,"秋天的菌菇最养人，美容养颜不长肉","../img/special/20181022154017489498010169539.jpg",null),
(null,"秋季食5物，降血压防脑溢血","../img/special/20181019153994276526110138013.jpg",null),
(null,"天气渐冷，别让血管“着凉”","../img/special/20181018153983043964210169539.jpg",null),
(null,"炸鸡的做法大全","../img/special/2018101515395961474621958079.jpg",null),
(null,"月饼的做法大全","../img/special/2018101515395962464231958079.jpg",null),
(null,"秋季止咳润肺，5种食物来护驾","../img/special/20181015153957639844310169539.jpg",null),
(null,"乌饭的做法大全","../img/special/20140419162954547182298.jpg",null),
(null,"云吞的做法大全","../img/special/20180424152455744857113.jpg",null),
(null,"冰粉的做法大全","../img/special/c640_20160728146967140335013.jpg",null),
(null,"凤爪的做法大全","../img/special/2018090415360537048601.jpg",null),
(null,"卤菜的做法大全","../img/special/20170810150236737126613.jpg",null),
(null,"可颂的做法大全","../img/special/2018043015250918782549702108.jpg",null),
(null,"咸蛋的做法大全","../img/special/20180424152455686672413.jpg",null),
(null,"扯面的做法大全","../img/special/20180424152455664211513.jpg",null),
(null,"批萨的做法大全","../img/special/201102181051362.jpg",null),
(null,"拉面的做法大全","../img/special/20180424152456397051213.jpg",null),
(null,"拌饭的做法大全","../img/special/20170731150146929222113.jpg",null),
(null,"果汁的做法大全","../img/special/20180424152455680882513.jpg",null),
(null,"果盘的做法大全","../img/special/20171121151124163962713.jpg",null),
(null,"汤包的做法大全","../img/special/20171117151089117656413.jpg",null),
(null,"油旋的做法大全","../img/special/c640_20141017201655919008933.jpg",null),
(null,"炉果的做法大全","../img/special/c640_20161017147670046449313.jpg",null),
(null,"炒素的做法大全","../img/special/c640_201502121423741611964.jpg",null),
(null,"烙馍的做法大全","../img/special/c640_20160912147364848232713.jpg",null),
(null,"烤串的做法大全","../img/special/c640_20160323145870706173013.jpg",null),
(null,"烤肠的做法大全","../img/special/c640_201509161442404065661.jpg",null),
(null,"烩菜的做法大全","../img/special/20180426152470611533710104208.jpg",null),
(null,"煎包的做法大全","../img/special/20180424152455741665713.jpg",null),
(null,"甜汤的做法大全","../img/special/20180424152455662342913.jpg",null),
(null,"米糊的做法大全","../img/special/20180424152456126450113.jpg",null),
(null,"粑粑的做法大全","../img/special/20180425152464952127810104261.jpg",null),
(null,"粑粑的做法大全","../img/special/20180425152464952127810104261.jpg",null),
(null,"糖饼的做法大全","../img/special/c640_20141226101203765806779.jpg",null);

#***商品详情页*Commoditydetails***
#商品照片*Detailsphotos*/
/*Product Details Page Pictures*商品详情页图片*/
CREATE TABLE eatery_Detailsphotos(
  Deid INT PRIMARY KEY AUTO_INCREMENT,
  Debusiness varchar(128),   #商品商家
  Dename varchar(128),   #商品名称
  Deevaluate varchar(128),   #商品评价
  Delogo varchar(128),   #商品商家logo
  Deurl varchar(128),      #图片路径
  Dehref varchar(128)      #链接路径
);
insert into eatery_Detailsphotos values
(null,"乐悠厨房","红烧肉","非常多的人喜欢红烧肉，并把它列为最爱吃的菜之一。其中不乏古今名人，且多为学识渊博者。红烧肉的特点：色泽红亮、口味浓郁、肥而不腻、瘦而不柴、入口软而即化、百吃不厌、老少皆宜。","../img/businesslogo/71_avatar_big.jpg","../img/PDPP/20140513173310595294480.jpg",null);

#商品材料*Commercialmaterials*/
CREATE TABLE eatery_Commercialmaterials(
  Coid INT PRIMARY KEY AUTO_INCREMENT,
  Cocategory varchar(128),   #详情类
  Cocategory_id varchar(128),   #详情分类
  Coclassification varchar(128),   #分类
  Cocontents varchar(128),   #材料
  CoNumber varchar(128),   #数量
  Cohref varchar(128)      #链接路径
);
insert into eatery_Commercialmaterials values
(null,1,"食材明细","主料","五花肉","适量",null),
(null,1,"食材明细","辅料","葱姜蒜","适量",null),
(null,1,"食材明细","配料","酱油味精","适量",null),
(null,1,"食材明细","其他","酸咸","口味",null);

#商品步骤*Practicesteps*/
CREATE TABLE eatery_Practicesteps(
  Prid INT PRIMARY KEY AUTO_INCREMENT,
  Prcategory varchar(128),   #详情类
  Prcategory_id varchar(128),   #详情分类
  PrStep varchar(128),   #步骤标明
  Prtitle varchar(128),   #材料说明
  Prsrc varchar(128),   #材料图片
  Prhref varchar(128)      #链接路径
);
insert into eatery_Practicesteps values
(null,1,"红烧肉的做法步骤","1","原料图如图所示。","../img/PDPP/201111091433582.jpg",null),
(null,1,"红烧肉的做法步骤","2","五花肉切麻将大小的块，冲洗干净后，放一汤匙料酒，浸泡一小时。捞出来沥干。","../img/PDPP/201111091434229.jpg",null),
(null,1,"红烧肉的做法步骤","3","锅里放油煸炒肉块到微黄。","../img/PDPP/201111091434386.jpg",null),
(null,1,"红烧肉的做法步骤","4","4放入干辣椒，草果，八角，姜，炒出香味。","../img/PDPP/201111091434503.jpg",null),
(null,1,"红烧肉的做法步骤","5","放料酒两汤匙，炒几下，再放老抽，生抽，炒匀","../img/PDPP/201111091435044.jpg",null),
(null,1,"红烧肉的做法步骤","6","放入开水，淹没肉，转入砂锅煨两个小时调入盐。","../img/PDPP/201111091435160.jpg",null),
(null,1,"红烧肉的做法步骤","7","煨到酥烂的五花肉，放冰糖大火收汁，晃动锅，不要翻动。","../img/PDPP/201111091435309.jpg",null),
(null,1,"红烧肉的做法步骤","8","到汤汁均匀的裹在肉上就好了！放点味精提味。","../img/PDPP/201111091435415.jpg",null);

#小窍门*Tips*/
CREATE TABLE eatery_Tips(
  Tiid INT PRIMARY KEY AUTO_INCREMENT,
  Ticategory varchar(128),   #详情类
  Ticategory_id varchar(128),   #详情分类
  Tititle varchar(128),   #文本内容
  Tihref varchar(128)      #链接路径
);
insert into eatery_Tips values
(null,1,"小窍门","这个五花肉，没有焯水，而是换成浸泡的方式，比较能留住肉香。但是可能厨房洁癖的受不了。其实焯水后也可以的。看自己喜好吧",null),
(null,1,"小窍门","另外也改变了炒糖的过程，冰糖放在最后收汁的时候用.会起到增色增香提亮的作用。不习惯这么多糖的话，可以减少。",null),
(null,1,"小窍门","一定要炒锅-砂锅-炒锅，因为只用炒锅会没有酥烂的感觉，汁用砂锅，收汁不好。没有那种浓郁粘稠的色泽。",null);