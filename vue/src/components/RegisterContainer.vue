<template>
	<div class="app-reg">
		<header class="mui-bar mui-bar-nav">
			<router-link to="/login" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
			<h1 class="mui-title"></h1>
		</header>
		<div class="mui-content">
			<form class="mui-input-group">
				<div class="mui-input-row">
					<label>账号</label>
					<input id='account' type="text" class="mui-input-clear mui-input" v-model="unameval" placeholder="请输入账号">
				</div>
				<div class="mui-input-row">
					<label>密码</label>
					<input id='password' type="password" class="mui-input-clear mui-input" v-model="upwdval" placeholder="请输入密码">
				</div>
				<div class="mui-input-row">
					<label>确认</label>
					<input id='password_confirm' type="password" class="mui-input-clear mui-input" v-model="passdval" placeholder="请确认密码">
				</div>
				
			</form>
			<div class="mui-content-padded">
				<button  class="mui-btn mui-btn-block mui-btn-primary" @click="btnSubmit">注册</button>
			</div>
			
		</div>
	</div>
</template>

<script>
	import { Toast } from "mint-ui"
	export default {
		data() {
			return {
				unameval: "",
				upwdval: "",
				passdval:""
			}
		},
		methods: {
			btnSubmit() {
				var u = this.unameval;
				var p = this.upwdval;
				var pa=this.pasdwal
				this.$http.get("login?uname=" + u + "&upwd=" + p).then(result => { //10:35
					if(result.body.code == 1) {
						Toast(result.body.msg);
						this.$router.push("/home");
					} else {
						Toast(result.body.msg);
					}
				})
			}
		}
	}
</script>

<style>
		.app-reg+.mui-bar-tab {
		display: none;
	}
	/**/
	.app-reg .mui-bar-nav{
		background: lightpink;
	}
	.app-reg .mint-button--default {
    color: white;
  
    -webkit-box-shadow: none;
    box-shadow: none;
    background: lightpink;}
	.app-reg .mui-btn-block {
		padding: 7px 0;
		border-radius: 30px;
		height: 40px;
		color: white;
	}
		.app-reg .mui-btn-primary {
		background: lightpink;
		border: 0;
	
	}
</style>