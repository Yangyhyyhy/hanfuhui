//app.js
//1:加载模块
const express = require("express");
const pool  = require("./pool");
//2:创建express对象
var app = express();
//服务器node.js 允许跨域访问配置项
//2.1:引入跨域模块   
const cors = require("cors");
//2.2:配置允许哪个程序跨域访问 脚手架   11:16
app.use(cors({
  origin:[
    "http://127.0.0.1:3001","http://localhost:3001"],
  credentials:true
}))
//3:指定静态目录
//服务器指定目录 绝对路径 出错
app.use(express.static(__dirname+"/public"));

//4:绑定监听端口
app.listen(3000);

//首页轮播
app.get("/imagelist",(req,res)=>{
  //sql 
  var sql = " SELECT * FROM hfh_index_lunbo";
  pool.query(sql,(err,result)=>{
    if(err) throw err; 
    res.send(result)
    //console.log(err);   
  })
});
//功能:商城首页图片轮播
//GET /pro_imagelist   json
app.get("/pro_imagelist",(req,res)=>{
  var obj = [
 {id:1,img_url:"http://127.0.0.1:3000/banner/banner21.png"},
 {id:2,img_url:"http://127.0.0.1:3000/banner/banner22.png"},
 {id:3,img_url:"http://127.0.0.1:3000/banner/banner23.png"},
 {id:4,img_url:"http://127.0.0.1:3000/banner/banner24.png"},
];
  res.send(obj)
});
//功能:首页推荐摄影
app.get("/sylist",(req,res)=>{
	var sql="select * from hfh_index_sheying";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result)
	})
})
//分页显示:帖子分页
app.get("/postslist",(req,res)=>{
  //1:参数  当前页码  页大小(一页显示几行数据)
  var pno = req.query.pno;            //2
  var pageSize = req.query.pageSize;  //5
  //2:sql
  //2.1:查找总记录数->转换总页数  15->3
  var sql = "SELECT count(id) as c FROM hfh_postslist";
  var obj = {};      //保存发送客户端数据
  var progress = 0;  //进度
  pool.query(sql,(err,result)=>{
      if(err)throw err;
      var c = Math.ceil(result[0].c/pageSize);
      obj.pageCount = c;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  });
  //2.2:查找当前页内容           中间5行
  var sql = " SELECT id,title,img_url,ctime,point";
     sql += " FROM hfh_postslist";
     sql += " LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);   
  //计算分页偏移量
  pageSize = parseInt(pageSize)
  pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err)throw err;
      //console.log(result);
      obj.data = result;
      progress+=50;
      if(progress==100){
        res.send(obj);
      }
  })
});
//发送脚手架新闻详细
app.get("/newsinfo",(req,res)=>{
   var obj = {
     title:"周日上海南京路出游",
     content:"有小伙伴一起的吗？"
    };
   res.send(obj);
});

//用户发表评论
const qs = require("querystring");
app.post("/postcomment",(req,res)=>{
   //为req对象绑定事件data   10:45
   req.on("data",(buf)=>{
     var str = buf.toString();  //1:将参数转字符串
     var obj = JSON.parse(str); //2:将参数转对象
     var msg = obj.msg;         
     var nid = parseInt(obj.nid);
     var sql = "INSERT INTO hfh_comment(content,user_name,ctime,nid) VALUES(?,'匿名',now(),?)";
     pool.query(sql,[msg,nid],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:"添加成功"});
     })
   })
})
//用户获取指定帖子编号所有评论
app.get("/getComment",(req,res)=>{
  //获取指定新闻编号  
  var nid = parseInt(req.query.id);
  var pno = req.query.pno;            
  var pageSize = req.query.pageSize;  
  var sql = " SELECT count(id) as c FROM hfh_comment";
  sql +=" WHERE nid = ?";
  var obj = {};      //保存发送客户端数据
  var progress = 0;  //进度
  pool.query(sql,[nid],(err,result)=>{
      if(err)throw err;
      var c = Math.ceil(result[0].c/pageSize);
      obj.pageCount = c;
      progress+=50;
      if(progress==100){
        res.send(obj);
       }
    });
    //2.2:查找当前页内容
  var sql = " SELECT id,content,ctime,user_name";
     sql += " FROM hfh_comment";
     sql += " WHERE nid = ?"
     sql += " ORDER BY id DESC";//降序排列
     sql += " LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);   
  pageSize = parseInt(pageSize)
  pool.query(sql,[nid,offset,pageSize],(err,result)=>{
     if(err)throw err;
      obj.data = result;
      progress+=50;
      if(progress==100){
      res.send(obj);
      }
  })
})
//用户登录
app.get("/login",(req,res)=>{
  //1:参数 2 uname upwd
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //2:正则表达式验证 
  //3:sql 
  var sql = " SELECT count(id) as c FROM hfh_user1";
      sql +=" WHERE uname=? AND upwd = md5(?)";
  pool.query(sql,[uname,upwd],(err,result)=>{
        if(err)throw err;
        if(result[0].c==0){
          res.send({code:-1,msg:"用户名或密码错误"});
        }else{
          res.send({code:1,msg:"登录成功"});
        }
  })
});
//注册功能
app.post("/register",(req,res)=>{
	req.on("data",(buf)=>{
		var str = buf.toString();  //1:将参数转字符串
     var obj = JSON.parse(str); //2:将参数转对象
	})
  //1:参数 2 uname upwd
  var uname = obj.user_name;
  var upwd = obj.user_upwd;
  var email = obj.email;
  //2:正则表达式验证 
  //3
  var sql = " insert into hfh_user1 values(null,?,?,?)";
  pool.query(sql,[uname,upwd,email],(err,result)=>{
        if(err)throw err;
          res.send({code:1,msg:"注册成功"});
        
  })
});