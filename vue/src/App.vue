<template>
 <div class="app-container">
    <!--1：顶部导航栏-->
   <!--<mt-header fixed title="学子商城 "></mt-header>-->
    <!--2：容器显示不同组件-->
    <router-view></router-view>
    <!--3：底部导航栏-->
    
    <nav class="mui-bar mui-bar-tab" >
			<router-link to="/home" class="mui-tab-item mui-active" href="#tabbar">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</router-link>
			<router-link to="/shop" class="mui-tab-item" href="#tabbar-with-map">
				<span class="mui-icon mui-icon-extra-class"></span>
				<span class="mui-tab-label">商城</span>
			</router-link>
			
			<router-link to="/home/newslist" class="mui-tab-item" href="#tabbar-with-contact">
				<span class="mui-icon mui-icon-extra mui-icon-compose">
                   
                </span>
				<span class="mui-tab-label">社区</span>
			</router-link>
			<a class="mui-tab-item" href="#tabbar-with-map">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">我的</span>
			</a>
		</nav>
 </div>
</template>

<style>
   .app-container{
     
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
.app-container .mui-bar-tab .mui-tab-item.mui-active{
color:#929292;
}
</style>
