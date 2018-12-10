<template>

  <div class="app-post">
  	<!--1头部-->
  	<mt-header title="帖子详情">
        <router-link to="/home/newslist" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
        <mt-button slot="right" icon="more"></mt-button>
      </mt-header>
      <!--头部结束-->
      <div class="post_container">
      	
      </div>
     <!--mui card-->
     <div class="mui-card">
     	<div class="post_writer">
      		<p>小扇子<br />2018-10-01</p>     		
      			<button>关注</button>
      	</div>
      	<div class="post_title">
      		  <p>青青子衿</p>
      		  <p>【汉服】青青子衿，悠悠我心#西塘汉服文化周大美江湖，我在西塘等你。出镜：原Po摄影&后期：诛仙 阿金妆娘：娟子 桶桶后勤：甜的点上襦：素君下裳：蓬莱————第一次来西塘也...</p>
      	</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
					  <ul class="photo-list">
               <li v-for="item in list">
                  <img v-lazy="item.img">
               </li>
            </ul>
					</div>
				</div>
			</div>
     <!---->
     
     <comment-box :id="this.id"></comment-box>
  </div>
</template>
<script>
	import comment from "../sub/comment.vue"
  export default {
     data(){
       return {
         list:[],
         info:{},id:this.$route.query.id
       }
     },
     created(){
       this.getImage();
       this.getNewsInfo();
     },
     methods:{
        getImage(){
         this.$http.get("imagelist").then(result=>{
          this.list = result.body;
         })
        },
         getNewsInfo(){
        //发送ajax请求获取当前新闻详细信息
        var url = "http://127.0.0.1:3000/newsinfo";
        this.$http.get(url).then(result=>{
           //console.log(result.body);
           this.info = result.body;
        })
      }
     },
     components:{
      //2:注册子组件
      "comment-box":comment
    }
  }  
</script>
<style>
	p {
		padding: 0;
		margin: 0;
	}

	/*头部背景*/
	.app-post .mint-header{
		background: lightcoral;
	}
	/**/
	/*.post_container{
		display: flex;
		flex-wrap: wrap;
		background: white;
		margin: 0px 0 5px 0;
	}*/
	/**/
	/**/
	.app-post	.post_writer{
			display: flex;
			justify-content: space-between;
			background: white;
			margin-bottom: 20px;
		}
	.post_writer p{
		
		    margin: 5px 0 0 25px;
	}
	.post_writer button{
		 height: 32px;
		    margin: 8px 5px 0 0;
		    background:lightcoral;
		    color: white;
		    border-radius: 10px;
	}
	/**/
 .photo-list{
   list-style:none;
   background:whitesmoke;
   padding-left:0;
 }
 .photo-list li img{  
   width:100%;
 }
 /*lazyload 组件专用样式*/
 .photo-list li img[lazy=loading]{
   width:100%;
   height:100px;
   margin:auto;
 }
 .post_title p:nth-child(1){
 	font-size: 20px;
 	color: gray;
 	text-align: center;
 }
  .post_title p:nth-child(2){
  	text-indent:2em;
 }

</style>