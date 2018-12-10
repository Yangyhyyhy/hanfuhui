<template>
  <div class="app-subswipe">
     <mt-swipe :auto="2000">
       <mt-swipe-item  v-for="item in list" :key="item.id">
          <img :src="item.img" />
       </mt-swipe-item>
     </mt-swipe>
  </div>
</template>
<script>
  export default {
    data(){
      return {}
    },
    props:["list"] //子组件接收父组件数据
  }
</script>
<style>
 .app-subswipe .mint-swipe{
   height:170px;
 }
 .app-subswipe .mint-swipe img{
   width:100%;
   height: 100%;
 } 
 
</style>