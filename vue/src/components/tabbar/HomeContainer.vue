<template>
	<div class="app-home">
		<!--导航-->
		<div class="nav">
			<mt-button size="small" class="mui-icon-extra mui-icon-extra-gift"></mt-button>
			<mt-button size="small" @click.native.prevent="active = 'tab-container1'" :style="actobj">推荐摄影</mt-button>
			<mt-button size="small" @click.native.prevent="active = 'tab-container2'" :style="actobj2">汉服活动</mt-button>
			<mt-button size="small" class="mui-icon mui-icon-search"></mt-button>
		</div>
		<!--导航结束-->
		<div class="page-tab-container">
			<mt-tab-container class="page-tabbar-tab-container" v-model="active" swipeable>
				<!--标签页1开始-->
				<mt-tab-container-item id="tab-container1">
					<!--轮播图-->
					<div class="mui-card">
						<div class="mui-card-content">
							<div class="mui-card-content-inner">
								<swiper-box :list="imagelist"></swiper-box>
							</div>
						</div>
					</div>
					<!--轮播结束-->
					<!--摄影图片区域-->
					<div class="sy_parent">
						<!--摄影图片1-->
						<div class="sy_pic" v-for="item in sylist" :key="item.id"">
							<router-link :to="item.href"><img :src="item.img" />

							<div class="sy_info">
								<p class="sy-title">{{item.title}}
								</p>
								<p class="sy-zuozhe">{{item.zuozhe}}
								</p>
							</div>
							</router-link>
						</div>
						<!--摄影图片1结束-->
						
					</div>

				</mt-tab-container-item>
				<!--标签页1结束-->
				<!--标签页2开始-->
				<mt-tab-container-item id="tab-container2">
					<div class="hd_parent">
						<!--活动1开始-->						
						<div class="mui-card">
				<div class="mui-card-header mui-card-media" style="height:35vw">
					<img src="../../img/hd/6c0371bdf178462f8de0e9cd4cc94e7e.png"/>
				</div>
				<div class="hd_indo">					
						<p style="color:#626262;font-size: 15px;text-indent:2em;">穿汉服过新年</p>
						<p style="text-indent:2em;">春节是汉民族最重要的节日，没有什么比汉服更配新年的了。穿上汉服与家人们拍一张全家福吧。</p>				
				</div>
			</div>
					<!--活动1结束-->					
					<!--活动2开始-->
					<div class="mui-card">
				<div class="mui-card-header mui-card-media" style="height:35vw">
					<img src="../../img/hd/9aa185b777ad4676bc6527671cfc557e.jpg"/>
				</div>
				<div class="hd_indo">					
						<p style="color:#626262;font-size: 15px;text-indent:2em;">汉服· 宠物</p>
						<p style="text-indent:2em;">当汉服越来越日常的时候，你是否记得常常陪伴在你身边的那一抹小小的身影？它时常安静的躺在你的怀里...</p>				
				</div>
			</div>
					<!--活动2结束-->
					<!--活动3开始-->
					<div class="mui-card">
				<div class="mui-card-header mui-card-media" style="height:35vw">
					<img src="../../img/hd/079e29d5d2f84a268aaa0b3be1ef0700.jpg"/>
				</div>
				<div class="hd_indo">					
						<p style="color:#626262;font-size: 15px;text-indent:2em;">汉服· cp</p>
						<p style="text-indent:2em;">岂曰无衣，与子同CP，有个与你一同痴迷汉服的同袍CP一定是件幸福的事情，是否还记得那个午后黄昏，你我同穿一件衣裳穿梭......</p>				
				</div>
			</div>
					<!--活动3结束-->
					<!--活动4开始-->
					<div class="mui-card">
				<div class="mui-card-header mui-card-media" style="height:35vw">
					<img src="../../img/hd/312df0f2edd54901a02d7062b9c8099b.jpg"/>
				</div>
				<div class="hd_indo">					
						<p style="color:#626262;font-size: 15px;text-indent:2em;">汉服 · 街拍</p>
						<p style="text-indent:2em;">当汉服的倩影走过了人潮熙熙的步行街，穿过了错综复杂的写字楼，路过了车水马龙的红绿灯时......</p>				
				</div>
			</div>
					<!--活动4结束-->
						</div>

						
						
				</mt-tab-container-item>
				<!--标签页2结束-->
			</mt-tab-container>
		</div>
	</div>
</template>

<script>
   import swiper from "../sub/swiper.vue"
	export default {
		name: 'page-tab-container',
		data() {
			return {
				active: 'tab-container1',
				imagelist: [],
				sylist:[],
				actobj:{
					color:"yellow"
				},
				actobj2:{
					color:"white"
				}
			};
		},
		methods: {
			getImageList() {
				this.$http.get("imagelist").then(result => {
					this.imagelist = result.body
				})
			},
			getSYlist(){
				var url="http://127.0.0.1:3000/sylist";
				this.$http.get(url).then(result=>{
					console.log(result.body);
					this.sylist=result.body
				})
			}
		},
		created() {
			this.getImageList();
			this.getSYlist();
		},
		updated(){
			if(this.active=='tab-container1'){
				this.actobj.color="yellow"
				this.actobj2.color="white"
			}else{
				this.actobj2.color="yellow"
				this.actobj.color="white"
			}
		},
		components: {
			"swiper-box": swiper
		},
	};
</script>

<style lang="css" scoped>
touch-action: none;
	p {
		padding: 0;
		margin: 0;
	}
	
	.item {
		display: inline-block;
	}
	
	.nav {
		padding: 5px 0;
		background-color: lightcoral;
		display: flex;
		justify-content: space-around;
	}
	
	.mint-button--small {
		background: lightcoral;
	}
	
	.mui-icon-extra {
		font-size: 20px;
	}
	
	.mint-button--small:nth-child(2) {
		font-size: 17px;
	}
	
	.mint-button--small:nth-child(3) {
		font-size: 17px;
	}
	
	.nav .mint-button--default {
		color: whitesmoke;
		-webkit-box-shadow: none;
		box-shadow: none;
	}
	
	.link {
		color: inherit;
		padding: 20px;
		display: block;
	}
	
	.app-home mint-button mint-button--default mint-button--small {
		padding-left: 50px;
	}
	
	.app-home .mui-card {
		border-radius: 10px
	}
	
	.app-home .mui-card-content-inner {
		padding: 0;
	}
	
	.app-home .app-container {
		padding-top: 0;
	}
	
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
	}
    .hd_parent>.mui-card img{
    	width: 100%;
		height: 100%;
    }
    .hd_parent .mui-card-header.mui-card-media{
    	padding: 0;
    }
    .hd_indo{
    	background: whitesmoke;
    }
    .app-home{
    	touch-action: default;
    }
 
</style>