<template>
    <div>
        <my-header></my-header>
            <!--轮播图  -->
        <my-carousel></my-carousel>
            <div class="container">
                <div class="limitActivity  " style="width: 1200px;">
                 <h4 class="title">精彩活动</h4>
                 <p class="info">每日精彩优惠活动抢不停</p>
                 <div class="activity_item limit_time ">
                  <div class="activity_title">
                   <span class="activity_info">商品已经抢完了哦！下次来早点！</span>
                   <span class="activity_btn">已售罄</span>
                  </div>
                  <img class="goods_img" src="/img/index/11.png" />
                  <h4 class="title"><span>上海皇仕麒麟</span></h4>
                  <p class="info">皮薄瓤红 味甜多汁</p>
                  <p class="price">
                   0.99
                   <span>/斤</span>
                  </p>
                  <p class="old_price">
                  <span>原价：</span>
                   ¥1.99/斤
                   </p>
                 </div>
                 <div class="activity_item limit_num ">
                  <div class="activity_title">
                   <span class="activity_info"></span>
                   <span class="activity_btn">13点开抢</span>
                  </div>
                  <img class="goods_img" src="/img/index/12.png" />
                  <h4 class="title"><span>越南红心火龙果</span></h4>
                  <p class="info">嫩滑多汁 清甜回味</p>
                  <p class="price">
                    29<span>/ 件</span>
                  </p>
                  <p class="old_price">
                      <span>原价：</span>
                      ¥45/件
                  </p>
                 </div>
                </div>
               </div>
               <!-- 楼层 -->

               <div class="container">
                <h4 class="index_title today_recommend">
                 今日推荐
                 <span>今日好货全面推荐</span>
                 </h4>
                <div class="index_goods">
                 <div class="goods_item belone_first" v-for="(t,i) of pro" :key="i">
                  <img :src="t.image">
                  <h5 class="title">{{t.title}}</h5>
                  <p class="info">{{t.details}}</p>
                  <p class="price">
                    {{t.price}}
                    <span class="old_price">158/件</span>
                  </p>
                  <router-link :to="`/details/${t.fid}`">
                    <span class="add_cart"></span>
                 </router-link>
                 </div>
                </div>
               </div>

               <div class="container">
                <h4 class="index_title today_recommend">
                    今日推荐
                 <span>今日好货全面推荐</span>
                 </h4>
                <div class="index_goods">
                 <div class="goods_item belone_first" v-for="(t,i) of pro" :key="i">
                  <img :src="t.image">
                  <h5 class="title">{{t.title}}</h5>
                  <p class="info">{{t.details}}</p>
                  <p class="price">
                    {{t.price}}
                    <span class="old_price">158/件</span>
                  </p>
                  <router-link :to="`/details/${t.fid}`">
                    <span class="add_cart"></span>
                 </router-link>
                 </div>
                </div>
               </div>

               <div class="container">
                <h4 class="index_title today_recommend">
                 今日推荐
                 <span>今日好货全面推荐</span>
                 </h4>
                <div class="index_goods">
                 <div class="goods_item belone_first" v-for="(t,i) of pro" :key="i">
                  <img :src="t.image">
                  <h5 class="title">{{t.title}}</h5>
                  <p class="info">{{t.details}}</p>
                  <p class="price">
                    {{t.price}}
                    <span class="old_price">158/件</span>
                  </p>
                  <router-link :to="`/details/${t.fid}`">
                    <span class="add_cart"></span>
                 </router-link>
                 </div>
                </div>
               </div>

               <div class="container">
                <h4 class="index_title today_recommend">
                 今日推荐
                 <span>今日好货全面推荐</span>
                 </h4>
                <div class="index_goods">
                 <div class="goods_item belone_first" v-for="(t,i) of pro" :key="i">
                  <img :src="t.image">
                  <h5 class="title">{{t.title}}</h5>
                  <p class="info">{{t.details}}</p>
                  <p class="price">
                    {{t.price}}
                    <span class="old_price">158/件</span>
                  </p>
                  <router-link :to="`/details/${t.fid}`">
                    <span class="add_cart"></span>
                 </router-link>
                 </div>
                </div>
               </div>
               <my-footer></my-footer>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                pro:{}
            }
        },
        mounted(){
            this.axios.get("/pro/index").then(result=>{
            this.pro=result.data
            })
        }
    }
</script>
<style>
.container{
    width: 1200px;
    margin: auto;
}
.limitActivity {
  height: 426px;
  background: url("/img/index/limit_activity_bg.png") no-repeat center center;
  background-size: 100% 100%;
  padding: 20px 20px;
  box-sizing: border-box;
  overflow: hidden; }

 .limitActivity .title {
  font-size: 20px;
  color: #333;
  font-weight: bold;
  text-align: center; }

.limitActivity .info {
  font-size: 12px;
  color: #777;
  line-height: 24px;
  text-align: center; }

.limitActivity .activity_item {
  width: 570px;
  float: left;
  height: 316px;
  padding-top: 50px;
  box-sizing: border-box;
  margin-top: 20px;
  position: relative;
  padding-left: 302px;
  box-shadow: 0 0 60px -2px rgba(0, 0, 0, 0.1); }

.limitActivity .activity_item.limit_time {
  margin-right: 20px;
  background: url("/img/index/limit_time1.png") no-repeat center center;
  background-size: 100% 100%; }

 .limitActivity .activity_item.limit_num {
  background: url("/img/index/limit_num1.png") no-repeat center center;
  background-size: 100% 100%; }

.limitActivity .activity_item .goods_img {
  width: 260px;
  height: 260px;
  position: absolute;
  left: 0;
  bottom: 0;
  cursor: pointer; 
  }
 .limitActivity .activity_item .title {
  margin-top: 60px;
  font-size: 18px;
  font-weight: bold;
  color: #333;
  text-align: left; }

 .limitActivity .activity_item .title span {
  cursor: pointer; }

.limitActivity .activity_item .info {
  margin-top: 10px;
  font-size: 14px;
  color: #999;
  text-align: left; }

 .limitActivity .activity_item .price {
  margin-top: 20px;
  font-size: 24px;
  font-weight: bold;
  color: #f18e00; }

.floruit_index .limitActivity .activity_item .price:before {
  content: '￥';
  font-weight: normal;
  font-size: 12px; 
  }

 .limitActivity .activity_item .price span {
  font-size: 12px; 
  }

 .limitActivity .activity_item .old_price {
  font-size: 12px;
  color: #999;
  margin-top: 4px;
  text-decoration: line-through; 
  }

 .limitActivity .activity_item .activity_title {
  position: absolute;
  top: 11px;
  right: 7px;
  width: 90%;
  height: 30px;
  line-height: 30px;
  text-align: right; 
  }

 .limitActivity .activity_item .activity_title .activity_info {
  font-size: 12px;
  color: #fff;
  margin-right: 12px; 
  }

.limitActivity .activity_item .activity_title .activity_btn {
  display: inline-block;
  padding: 0 10px;
  background-color: #000;
  height: 30px;
  font-size: 14px;
  color: #fff;
  border-radius: 20px;
  font-weight: bold; 
  }
  .index_title {
    padding-left: 50px;
    padding-top: 20px;
    margin-top: 30px;
    padding-bottom: 10px;
    font-size: 18px;
    color: #333;
    font-weight: bold;
    background-size: 41px 28px;
    background:url("/img/index/today_recommend.png") no-repeat 0 18px ;
}
.index_title span {
    font-size: 12px;
    color: #777;
    padding-left: 8px;
    font-weight: normal;
}
.index_goods{
    display: flex;
}
.index_goods .goods_item.belone_first {
    margin-left: 0;
}
.index_goods .goods_item{
    width: 232px;
    height: 322px;
    box-sizing: border-box;
    border: 1px solid #e8e8e8;
    margin-left: 10px;
    cursor: pointer;
    margin-top: 10px;
    position: relative;
    transition: all .2s ease-in-out 0s;
}
.index_goods .goods_item img {
    width: 230px;
    height: 230px;
}
.index_goods .goods_item .title {
    padding: 0 20px;
    font-size: 14px;
    color: #333;
    font-weight: bold;
    margin-top: 2px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.index_goods .goods_item .info {
    padding: 0 20px;
    font-size: 12px;
    color: #777;
    margin-top: 4px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.index_goods .goods_item .price {
    font-size: 18px;
    color: #f18e00;
    padding: 0 20px;
    margin-top: 8px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.index_goods .goods_item .price span {
    font-size: 12px;
}
.index_goods .goods_item .price .old_price {
    color: #ccc;
    padding-left: 10px;
    text-decoration: line-through;
}
.index_goods .goods_item .add_cart {
    position: absolute;
    display: block;
    opacity: 0;
    width: 26px;
    height: 24px;
    background: url(/img/index/cart_add.png) no-repeat center center;
    background-size: 100% 100%;
    right: 10px;
    bottom: 18px;
    z-index: 3;
}
.index_goods .goods_item:hover {
  box-shadow: 0 0 60px -2px rgba(0, 0, 0, 0.1);
  border: 1px solid #fff; }

.index_goods .goods_item:hover .add_cart {
  opacity: 1; 
  }
  .index_goods .goods_item +.goods_item{
    margin-left: 10px;
}
</style>