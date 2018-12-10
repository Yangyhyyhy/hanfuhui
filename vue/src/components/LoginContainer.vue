<template>
	<div class="app-login">
		<!---->
		<header class="login_header">
			<div>
				<p>汉服荟</p>
				<p>同袍的汉式生活家</p>
			</div>
		</header>
		<div class="mui-content">
			<form id='login-form' class="mui-input-group">
				<div class="mui-input-row">
					<label>账号</label>
					<input id='account' type="text" class="mui-input-clear mui-input" v-model="unameval" placeholder="请输入账号">
				</div>
				<div class="mui-input-row">
					<label>密码</label>
					<input id='password' type="password" class="mui-input-clear mui-input" v-model="upwdval" placeholder="请输入密码">
				</div>
			</form>

			<div class="mui-content-padded">
				<button id='btn' type="button" class="mui-btn mui-btn-block mui-btn-primary" @click="btnSubmit">登录</button>
				<div class="link-area">
					<router-link to="/register" id='reg'>注册账号</router-link>
					<span>|</span>
					<router-link to="" id='forgetPassword'>忘记密码</router-link>
				</div>
			</div>
			<div class="mui-content-padded oauth-area">
			</div>
		</div>
		<!---->
     <div class="">
     	  <p>测试账号：dingding</p>
     	  <p>测试密码：123456</p>
     </div>
	</div>
</template>
<script>
	import { Toast } from "mint-ui"
	export default {
		data() {
			return {
				unameval: "",
				upwdval: ""
			}
		},
		methods: {
			btnSubmit() {
				var u = this.unameval;
				var p = this.upwdval;
				this.$http.get("login?uname=" + u + "&upwd=" + p).then(result => { 
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
	.app-login+.mui-bar-tab {
		display: none;
	}
	.login_header {
		height: 170px;
		background: lightpink;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.login_header p {
		letter-spacing: 2px;
		color: white;
		font-size: 16px;
	}
	
	.login_header p:first-child {
		text-align: center;
		font-size: 25px;
	}
	/**/
	
	.app-login .mui-btn-block {
		padding: 7px 0;
		border-radius: 30px;
		height: 40px;
	}
	
	.app-login .mui-btn-primary {
		background: lightpink;
		border: 0;
	}
	
	.link-area {
		text-align: center;
		color: gray;
	}
	
	#reg,
	#forgetPassword {
		color: gray;
		padding: 0 10px;
	}
</style>