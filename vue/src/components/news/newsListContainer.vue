<template>
  <div class="app-newslist">
  	<!--头部-->
  	<header>
  	<mt-header title="汉 阁">
        <mt-button slot="right" class="mui-icon mui-icon-compose"></mt-button>
      </mt-header>
  	</header>
  		  <div class="page-search">
				<mt-search></mt-search>
			</div>
  		
  		
    <ul class="mui-table-view">
     	<li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
					<router-link :to="'/home/newsinfo?id='+item.id">
						<img class="mui-media-object mui-pull-left" :src="item.img_url">
						<div class="mui-media-body">
							{{item.title}}
							<p class='mui-ellipsis'>
         <span>{{item.ctime | datetimeFilter}}</span>
         <span>点击：{{item.point}} 次</span>
              </p>
						</div>   
					</router-link>
				</li>
    </ul>
    <mt-button type="primary" size="large" @click="getMore">加载更多 </mt-button>
  </div>
</template>
<script>
  export default {
     data(){
       return {
         list:[],
         pageIndex:0,     //属性显示当前页数
         pageSize:10,       //页大小
         hasMore:true,     //是否存在下一页数据
         pageCount:2,      //总页数 
       }
     },
     methods:{
       //加载更多
       getMore(){
         this.pageIndex++;
         //判断是否有下一页数据
         this.hasMore = this.pageIndex <= this.pageCount;
         //如果没有下一页数据停止函数执行
         if(!this.hasMore){return}
         var url = "http://127.0.0.1:3000/postslist";
         url+="?pno="+this.pageIndex+"&pageSize="+this.pageSize;
         this.$http.get(url).then(result=>{
           //concat 接拼数组 将二个数组拼接新数组
           var rows = this.list.concat(result.body.data);
           this.list = rows;
           //保存总页数
           this.pageCount = result.body.pageCount
         })
       }
     },
     created(){
       this.getMore();
     }

  }
</script>
<style>
	/**/
.app-newslist .mint-header{
	background: lightcoral;
	font-size: 16px;
}
.app-newslist .mint-header .mint-button{
	font-size: 25px;
}
/**/
.app-newslist .mint-searchbar{
	padding: 5px;
}
.app-newslist .mint-searchbar-inner .mintui-search {
    font-size: 17px;
    color: gray;
}
.app-newslist   .mintui-search {
		font-size: 18px;
		color: black;
	}
	
.app-newslist  input[type='search'] {
		background: white;
		height: 26px;
		margin: 0;
	}
	
.app-newslist  .mint-searchbar-cancel {
		color: white;
	}
	
/*.app-newslist .mint-searchbar {
		background: lightcoral;
	}*/
	
	.page-search {
		height: 100%;
	}
.app-newslist  .mint-search{
		    height: 6vh;
	}
/**/
.app-newslist .mui-table-view li .mui-ellipsis{
  display:flex;     /*父元素设置弹性布局*/
  font-size:12px;   
  color:#226aff;    
  justify-content:space-between;/*二端对齐*/
} 
</style>