#客户端编码为UTF8
SET NAMES UTF8;
#丢弃数据库hfh，如果存在
DROP DATABASE IF EXISTS hfh;
#创建数据库hfh,设置编码为UTF8
CREATE DATABASE hfh CHARSET=UTF8;
#进入数据库
USE hfh;

/**用户信息**/
CREATE TABLE hfh_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64)
);



/****首页轮播图片****/
CREATE TABLE hfh_index_lunbo(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****商品页轮播图片****/
CREATE TABLE hfh_product_lunbo(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页摄影图片****/
CREATE TABLE hfh_index_sheying(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  zuozhe VARCHAR(64),
  href VARCHAR(128)
);

/****商品页商品信息****/
CREATE TABLE hfh_product_list(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(200),
  content VARCHAR(128),
  price VARCHAR(128),
  img2 VARCHAR(128),
  href VARCHAR(128)
);

/****社区帖子列表****/
CREATE TABLE hfh_postslist(
 id    INT PRIMARY KEY AUTO_INCREMENT, 
 title VARCHAR(128),
 ctime DATETIME,
 img_url VARCHAR(255),
 point INT
);

/****创建评论****/
CREATE TABLE hfh_comment(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(140),
  ctime   DATETIME,
  user_name VARCHAR(50),
  nid  INT
);
/*******************/
/******数据导入******/
/*******************/

/**用户信息**/
INSERT INTO hfh_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com'),
(NULL, 'dangdang', '123456', 'dang@qq.com'),
(NULL, 'doudou', '123456', 'dou@qq.com'),
(NULL, 'yaya', '123456', 'ya@qq.com');

/****首页轮播广告****/
INSERT INTO hfh_index_lunbo VALUES
(NULL, 'http://127.0.0.1:3000/banner/banner1.jpg','首页轮播图1','#'),
(NULL, 'http://127.0.0.1:3000/banner/banner2.jpg','首页轮播图2','#'),
(NULL, 'http://127.0.0.1:3000/banner/banner3.jpg','首页轮播图3','#'),
(NULL, 'http://127.0.0.1:3000/banner/banner4.jpg','首页轮播图4','#');

/****首页摄影图片****/
INSERT INTO hfh_index_sheying VALUES
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_110426.png','《青青子衿》','by 小扇子','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_094812.png','《醉金秋》','by 柳腰轻','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_111333.png','《彼岸相思》','by 白露（江沪浙约拍）','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_111643.png','《满江红》','by 独立摄影师桃缇','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_111918.png','《清溪》','by 青儿','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_112109.png','《花妖》','by 阿惑','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_110426.png','《宫》','by 满想想','/home/post?id=22'),
(NULL, 'http://127.0.0.1:3000/sy/2018-11-17_112441.png','《愿你做自己的太阳》','by 徐驰超','/home/post?id=22');

/****商城页轮播广告****/
INSERT INTO hfh_product_lunbo VALUES
(NULL, 'http://127.0.0.1:3000/banner/banner21.png','商城轮播图1','#'),
(NULL, 'http://127.0.0.1:3000/banner/banner22.png','商城轮播图2','#'),
(NULL, 'http://127.0.0.1:3000/banner/banner23.png','商城轮播图3','#'),
(NULL, 'http://127.0.0.1:3000/banner/banner24.png','商城轮播图4','#');


/****社区帖子列表   now() 当前数据库时间 年月日时分秒****/
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",6666);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",5555);
INSERT INTO hfh_postslist VALUES(null,'教你分辨汉服的山正 保姆级教程 （麻烦萌新进来看看）',now(),
"http://127.0.0.1:3000/postslist/postslist3.jpg",4444);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",3333);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",2222);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",1111);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",999);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",888);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",777);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",666);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",555);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",444);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",333);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",222);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",111);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",111);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",111);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",111);
INSERT INTO hfh_postslist VALUES(null,'【制衣】在秋天里做好了一套夏装',now(),
"http://127.0.0.1:3000/postslist/postslist2.jpg",111);
INSERT INTO hfh_postslist VALUES(null,'西塘汉服文化周：我的梦里水乡，处处都是汉家衣裳',now(),
"http://127.0.0.1:3000/postslist/postslist1.jpg",111);


INSERT INTO hfh_comment VALUES(null,'ha ha1',now(),'颜末 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha2',now(),'爱思 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha3',now(),'阿萨德 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha4',now(),'飞碟说',1);
INSERT INTO hfh_comment VALUES(null,'ha ha5',now(),'安生',1);
INSERT INTO hfh_comment VALUES(null,'ha ha6',now(),'奋斗史 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha7',now(),'广东',1);
INSERT INTO hfh_comment VALUES(null,'ha ha8',now(),'史蒂夫 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha9',now(),'士大夫',1);
INSERT INTO hfh_comment VALUES(null,'ha ha10',now(),'过分 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha11',now(),'习惯 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha12',now(),'形参 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha13',now(),'李静 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha14',now(),'欧阳 ',1);
INSERT INTO hfh_comment VALUES(null,'ha ha15',now(),'偶就 ',1);


#用户登录表
CREATE TABLE hfh_user1(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd  VARCHAR(32),
  email VARCHAR(64)
);
#通用加密算法md5 对称加密算法 散列算法
#单向加密
#多次循环加密
#通行解决方案:
#强制用户密码超过12位,
#大写字母小写字母数字特殊字符 
INSERT INTO hfh_user1 VALUES(null,'dingding',md5('123456'),'ding@qq.com');
INSERT INTO hfh_user1 VALUES(null,'dangdang',md5('123456'),'dang@qq.com');
INSERT INTO hfh_user1 VALUES(null,'doudou',md5('123456'),'dou@qq.com');
INSERT INTO hfh_user1 VALUES(null,'yaya',md5('123456'),'ya@qq.com');
