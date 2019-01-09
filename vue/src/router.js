import Vue from 'vue'
import Router from 'vue-router'

//1:引入自定义组件 
import homeContainer from "./components/tabbar/HomeContainer.vue"
import newsListContainer from "./components/news/newsListContainer.vue"
import newInfoContainer from "./components/news/newInfoContainer.vue"
import shopContainer from "./components/tabbar/ShopContainer.vue"
import post from "./components/post/PostContainer.vue"
import login from "./components/LoginContainer.vue"
import register from "./components/RegisterContainer.vue"
Vue.use(Router)
//2:配置访问自定义组件路径
//   {path访问路径 component  组件名称}
export default new Router({
  routes: [
    {path:"/login",component:login},
    {path:"/register",component:register},
    {path:"/home/post",component:post},
    {path:"/shop",component:shopContainer},
    {path:"/home/newsinfo",component:newInfoContainer},
    {path:"/home/newslist",component:newsListContainer},
    {path:'/',redirect:"/login"},
    {path:"/home",component:homeContainer},
  ]
})


