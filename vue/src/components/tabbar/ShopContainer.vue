<template>
	<div class="app-shop">
		<header id="header" class="mui-bar mui-bar-nav">
			<div class="page-search">
				<mt-search ></mt-search>
			</div>
			<router-link to="" class="mui-icon mui-icon-extra mui-icon-extra-cart mui-pull-right" style="color: white;"></router-link>
		</header>

		<!--轮播图-->		
			<!--<mt-swipe  :auto="3000">
        <mt-swipe-item v-for="item in pro_imagelist" :key="item.id">
           <img :src="item.img_url" />
        </mt-swipe-item>
      </mt-swipe>-->
		<!--轮播结束-->
		<!--导航开始-->
		<div class="shop-nav">
			<div class="nav_item">
				<img src="../../img/icon/icon1.png" lazy-load></img>
				<p>汉元素</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon2.png" lazy-load></img>
				<p>交领襦裙</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon3.png" lazy-load></img>
				<p>对襟襦裙</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon4.png" lazy-load></img>
				<p>褙子</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon5.png" lazy-load></img>
				<p>齐胸</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon1.png" lazy-load></img>
				<p>长衫</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon6.png" lazy-load></img>
				<p>配饰周边</p>
			</div>
			<div class="nav_item">
				<img src="../../img/icon/icon7.png" lazy-load></img>
				<p>其它</p>
			</div>
		</div>
		<!--导航结束-->
		<div class="pro_title">
				<p>配    饰    周    边</p>
			</div>
		<div class="pro_container">
			
			<!--商品滑动-->	
			<div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<mt-swipe :auto="0" >
							<mt-swipe-item>
								<div class="mui-slider-item">
									<ul class="mui-table-view mui-grid-view">
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-17_172014.png">
												<div class="mui-media-body">￥34.02</div>
											</a>
										</li>
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-17_172233.png">
												<div class="mui-media-body">￥43.02</div>
											</a>
										</li>
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-20_142936.png">
												<div class="mui-media-body">￥58</div>
											</a>
										</li>
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-20_143042.png">
												<div class="mui-media-body">￥29.52</div>
											</a>
										</li>
									</ul>
								</div>
							</mt-swipe-item>
							<!--第2页-->
							<mt-swipe-item>
								<div class="mui-slider-item">
									<ul class="mui-table-view mui-grid-view">
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-20_143109.png">
												<div class="mui-media-body">￥19.80</div>
											</a>
										</li>
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-20_143134.png">
												<div class="mui-media-body">￥58</div>
											</a>
										</li>
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-20_143124.png">
												<div class="mui-media-body">￥22.25</div>
											</a>
										</li>
										<li class="mui-table-view-cell mui-media mui-col-xs-3">
											<a href="#"><img class="mui-media-object" src="../../img/product/2018-11-20_143148.png">
												<div class="mui-media-body">￥66</div>
											</a>
										</li>
									</ul>
								</div>
							</mt-swipe-item>
							<!---->
						</mt-swipe>
					</div>
				</div>
				</div>
			<!--滑动结束-->		
		</div>
		<!--九宫格商品-->
			<div class="pro_title">
				<p>汉&nbsp;服&nbsp;女&nbsp;装</p>
			</div>
            <div class="sy_parent">
						<!--摄影图片1-->
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171028.png"  />

							<div class="sy_info">
								<p class="sy-title">￥ 89
								</p>
								<p class="sy-zuozhe">丹墨 观其赋原创传统汉服女 立领琵琶袖上襦 一片式穿孔下裙
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171051.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 139
								</p>
								<p class="sy-zuozhe">流烟昔泠 霜笙 袄裙 传统原创设计冬款绣花袄裙女装
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171139.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 89
								</p>
								<p class="sy-zuozhe">丹墨 观其赋原创传统汉服女 立领琵琶袖上襦 一片式穿孔下裙
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171156.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 139
								</p>
								<p class="sy-zuozhe">流烟昔泠 霜笙 袄裙 传统原创设计冬款绣花袄裙女装
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171234.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 89
								</p>
								<p class="sy-zuozhe">丹墨 观其赋原创传统汉服女 立领琵琶袖上襦 一片式穿孔下裙
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171303.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 139
								</p>
								<p class="sy-zuozhe">流烟昔泠 霜笙 袄裙 传统原创设计冬款绣花袄裙女装
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171314.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 89
								</p>
								<p class="sy-zuozhe">丹墨 观其赋原创传统汉服女 立领琵琶袖上襦 一片式穿孔下裙
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171327.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 139
								</p>
								<p class="sy-zuozhe">流烟昔泠 霜笙 袄裙 传统原创设计冬款绣花袄裙女装
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171338.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 89
								</p>
								<p class="sy-zuozhe">丹墨 观其赋原创传统汉服女 立领琵琶袖上襦 一片式穿孔下裙
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171349.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 139
								</p>
								<p class="sy-zuozhe">流烟昔泠 霜笙 袄裙 传统原创设计冬款绣花袄裙女装
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171403.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 89
								</p>
								<p class="sy-zuozhe">丹墨 观其赋原创传统汉服女 立领琵琶袖上襦 一片式穿孔下裙
								</p>
							</div>
						</div>
						<div class="sy_pic">
							<img src="../../img/product/2018-11-17_171413.png" />

							<div class="sy_info">
								<p class="sy-title">￥ 139
								</p>
								<p class="sy-zuozhe">流烟昔泠 霜笙 袄裙 传统原创设计冬款绣花袄裙女装
								</p>
							</div>
						</div>
						</div>
	</div>
</template>
<script>
	
	//import swiper from "../sub/swiper.vue"
	

	export default {
		name: 'app-shop',

		data() {
			return {
				pro_imagelist: [],
			};
		},
		methods: {
			getImageList() {
				var url="http://127.0.0.1:3000/pro_imagelist";
				this.$http.get(url).then(result=>{this.pro_imagelist = result.body})
			}
		},
		created() {
			this.getImageList();
		},
		

	};
</script>
<style>
	p {
		padding: 0;
		margin: 0;
	}
	.app-shop .mui-bar-nav {
		background: lightcoral;
		display: flex;
		justify-content: space-between;
	}
	
	.app-shop .mint-searchbar-inner .mintui-search {
		font-size: 18px;
		color: black;
	}
	
	.app-shop .mui-bar input[type='search'] {
		background: white;
		height: 26px;
	}
	
	.app-shop .mint-searchbar-cancel {
		color: white;
	}
	
	.app-shop .mint-searchbar {
		background: lightcoral;
	}
	
	.page-search {
		height: 100%;
	}
	.app-shop .mint-search{
		    height: 10vh;
	}
	/*轮播*/
	
	.app-shop .mint-swipe  {
		height: 150px;
	}
		.app-shop .mint-swipe img{
		width: 100%;
	}

	/*导航区域*/
	
	.shop-nav {
		display: flex;
		flex-wrap: wrap;
		background: white;
		margin: 47px 0 5px 0;
	}
	
	.shop-nav .nav_item {
		/* 子元素弹性布局 image/text */
		height: 200rpx;
		width: 25%;
		box-sizing: border-box;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		font-size: 12px;
	}
	
	.shop-nav img {
		/* 3：修改图片高度宽度 */
		width: 50px;
		height: 50px;
		margin-bottom: 5px;
	}
	/*导航结束*/
	/*滑动*/
	.pro_container .mui-card{
		margin: 0 0 5px 0;
	}
	.pro_container .mui-table-view.mui-grid-view {
		padding: 0;
	}
	
	.pro_container .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body {
		margin: 0;
	}
	
	.pro_container .mint-swipe {
		height: 120px;
	}
	
	.pro_container .mui-media-object {
		border-radius: 10px;
	}
	.pro_container .mui-card-content-inner{padding: 0;}
	.pro_container .mui-table-view.mui-grid-view{
		/*background: #EFEFF4;*/
	}
	.pro_container .mui-table-view:after{
		height: 0;
	}
/**/
.pro_title p{
	text-align: center;
	margin: 0;
	font-size: 18px;
	color: white;
	padding: 5px 0;
	
}
.pro_title {
background: lightcoral;
border-radius: 5px;
		border: 1px solid #ccc;
		/*边框*/
		box-shadow: 0 0 10px #ccc;
		height: 30px;
}
/*2行2列商品区域*/
	.sy_parent {
		display: flex;
		flex-wrap: wrap;
		/*子元素换行*/
		justify-content: space-between;
		/*两端对齐*/
		padding: 7px;
		/*为子元素内补丁*/
	}
	
	.sy_pic {
		width: 49%;
		/*元素宽度*/
		border-radius: 15px;
		border: 1px solid #ccc;
		/*边框*/
		box-shadow: 0 0 10px #ccc;
		/*阴影*/
		margin-bottom: 8px;
	}
	
	.sy_pic img {
		width: 99%;
		border-radius: 15px 15px 0 0;
	}
	.sy_info p {
		font-size: 10px;
		text-align: center;
		margin: 0;
		overflow: hidden;
	}
	/*结束*/
	.app-shop .mint-swipe-indicator{
		display:none;
	}
</style>