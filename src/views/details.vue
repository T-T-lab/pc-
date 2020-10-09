<template>
    <div>
        <my-header></my-header>
        <!-- 商品详情 -->
        <div class="container clearfix details">
            <div class="details-Top">
                <div class="top-Left">
                    <div class="top-Left-Menu">
                        <a href="/?page=index" class="to_index">首页<i>&gt;</i></a>
                        <a class="menu-goods">{{title}}</a>
                    </div>
                    <div class="top-Left-Show">
                    <div class="left-Show-Left">
                        <div class="box_Magnifier">
                         <div>
                             <!-- <img :src="image" alt="" class="wrap_image"> -->
                             <glass :img="image"></glass>
                          <div id="max_bor" style="display: none; top: 304px; left: 304px;">
                          </div>
                         </div>
                        </div>
                    </div>
                    <div class="left-Show-Right">
                        <div class="left-Show-Right-1">
                            <img src="">
                            <span class="js_good_name">
                            <i></i>{{title}}
                        </span>
                        </div>
                        <div class="left-Show-Right-2">
                        <p class="js_good_desc">{{details}}</p>
                        </div>
                        <div class="left-Show-Right-4">
                            <div class="public-show-Area clearfix">
                                <span class="title">配送至</span>
                                <div class="default-Input">
                                 <span type="text" class="show-Area-Input">北京</span>
                                 <span class="show-Area-Have">有货</span>
                                </div>
                                <div id="delivery_box">
                                 <div class="tio">
                                 满 600.00免运费
                                 </div>
                                </div>
                            </div>
                            <div class="show-Num clearfix">
                                <span>成交量</span>
                                <div class="js_goods_storage pre_sell">
                                 已成交
                                 <i>2099</i>件
                                </div>
                            </div>
                            <div class="show-Num clearfix">
                                <span>
                                 采购量
                                </span>
                                <div class="js_goods_storage">
                                 <span class="cart_min"></span>
                                 <input type="text" value="1" id="num_ipt" class="show-Num-Input" />
                                 <span class="cart_add"></span>
                                </div>
                                <i class="goods_storage">
                                    {{num}}
                                 </i>
                            </div>
                        </div>
                        <div class="det_btn">
                            <div>
                             <span class="add_cart">加入购物车</span>
                             <span class="buy_now">立即购买</span>
                            </div>
                        </div>
                    </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="bottom-Left">
            <div class="bottom-Left-Top">
                <div class="tabList clearfix" style="position: absolute; top: initial;">
                    <ul>
                        <li class="selected">商品介绍</li>
                    </ul>
                </div>
                <div class="tabCon">
                    <div class="selected">
                     <span class="tabCon-Introduce">
                         <span>
                       {{brand}}
                        </span>
                       <span>
                       {{place}}
                       </span>
                       <span>
                      {{package}}
                       </span>
                       <span>
                       {{weight}}
                       </span>
                       <span>
                       包装净重： 0.00斤
                       </span>
                       <span>
                      {{r}}
                       </span>
                       <span>
                       单果重：0.00g
                      </span>
                      <span>
                       {{vl}}
                       </span>
                    </span>
                     <div class="info_body">
                      <img :src="im" alt="image" />
                     </div>
                    </div>
                   </div>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>
<script>
import Glass from '../components/Glass.vue'
    export default{
        props:["fid"],
        components:{
            Glass
        },
        data(){
            return{
                title:"",
                details:"",
                num:"",
                brand:"",
                place:"",
                package:"",
                weight:"",
                r:"",
                vl:"",
                image:"",
                im:""
            }
        },
        mounted(){
            this.axios.get("/pro/details",{params:{fid:this.fid}}).then(result=>{
               this.title=result.data[0].title
               this.details=result.data[0].details
               this.num=result.data[0].num
               this.brand=result.data[0].brand
               this.place=result.data[0].place
               this.package=result.data[0].package
               this.weight=result.data[0].weight
               this.r=result.data[0].r
               this.vl=result.data[0].vl
               this.im=result.data[0].im
               this.image=result.data[0].image
            })
        }
    }
</script>
<style>
.container{
    width: 1200px;
    margin: auto;
}
.details-Top {
    padding: 44px 0 2px 0;
}
.details .details-Top .top-Left {
    width: 952px;
    float: left;
}
.details .details-Top .top-Left .top-Left-Menu {
    color: #f18e00;
    height: 20px;
    line-height: 20px;
}
.details .details-Top .top-Left .top-Left-Menu .to_index {
    font-size: 14px;
}
.top-Left-Menu a {
    color: #f18e00;
    font-size: 12px;
}
a.menu-goods {
    color: #777;
}
.details .details-Top .top-Left .top-Left-Show {
    margin-top: 20px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Left {
    width: 380px;
    height: 510px;
    float: left;
}
.box_Magnifier .wrap_image {
    height: 380px;
    width: 380px
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right {
    width: 548px;
    float: left;
    margin-left: 24px;
    position: relative;
    padding-bottom: 20px;
}
.js_good_name {
    font-size: 24px;
    color: #777;
    margin-left: 12px;
    line-height: 30px;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    width: 476px;
    display: inline-block;
}
.left-Show-Right-2 {
    padding-left: 56px;
    font-size: 14px;
    color: #777;
}
.js_good_desc {
    margin-top: 5px;
    max-height: 66px;
    overflow: hidden;
    font-size: 14px;
    line-height: 22px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 {
    margin-top: 14px;
}
.public-show-Area {
    margin-left: 14px;
}
.public-show-Area .title {
    float: left;
    letter-spacing: 10px;
    font-size: 12px;
    color: #999;
    line-height: 26px;
}
.public-show-Area .default-Input {
    float: left;
    margin-left: 20px;
}
.public-show-Area .default-Input .show-Area-Input {
    float: left;
    width: 30px;
    height: 26px;
    text-align: center;
    padding: 0 5px 0 0;
    margin: 0;
    color: #999;
}
.public-show-Area .default-Input span {
    color: #ff9702;
    font-size: 14px;
    line-height: 26px;
    margin-left: 10px;
}
.public-show-Area .default-Input .show-Area-Have {
    border-right: 1px solid #ccc;
    padding-right: 15px;
    height: 16px;
    line-height: 16px;
    display: inline-block;
}
.public-show-Area .tio {
    float: left;
    height: 26px;
    text-align: center;
    color: #999;
    font-size: 14px;
    line-height: 26px;
    padding-left: 70px;
    background: url(/img/details/mianyunfei_tag.png) 15px center no-repeat;
}

.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num {
    margin-left: 14px;
    margin-top: 14px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num span {
    float: left;
    letter-spacing: 10px;
    font-size: 12px;
    color: #999;
    line-height: 26px;
    width: 67px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .js_goods_storage {
    float: left;
    margin-left: 20px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .pre_sell {
    color: #777;
    font-size: 14px;
    display: inline-block;
    height: 26px;
    line-height: 26px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num {
    margin-left: 14px;
    margin-top: 14px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num span {
    float: left;
    letter-spacing: 10px;
    font-size: 12px;
    color: #999;
    line-height: 26px;
    width: 67px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .js_goods_storage {
    float: left;
    margin-left: 20px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .js_goods_storage .cart_min {
    background: url(/img/details/jian.png) center no-repeat;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .js_goods_storage span {
    width: 26px;
    height: 26px;
    border: 1px solid #e3e3e3;
    text-align: center;
    line-height: 26px;
    cursor: pointer;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num span {
    float: left;
    letter-spacing: 10px;
    font-size: 12px;
    color: #999;
    line-height: 26px;
    width: 67px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .js_goods_storage .show-Num-Input {
    float: left;
    width: 62px;
    height: 26px;
    border: 0;
    border-top: 1px solid #e3e3e3;
    border-bottom: 1px solid #e3e3e3;
    text-align: center;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .js_goods_storage .cart_add {
    background: url(/img/details/jia.png) center no-repeat;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .left-Show-Right-4 .show-Num .goods_storage {
    float: left;
    color: #777;
    height: 26px;
    line-height: 38px;
    margin-left: 20px;
    font-size: 12px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .det_btn {
    margin-top: 35px;
    padding-left: 80px;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .det_btn .add_cart {
    background: #f18e00;
    color: #fff;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .det_btn span {
    display: inline-block;
    height: 40px;
    line-height: 40px;
    border: 1px solid #f18e00;
    border-radius: 3px;
    width: 118px;
    text-align: center;
    font-size: 18px;
    margin: 0 20px;
    cursor: pointer;
}
.details .details-Top .top-Left .top-Left-Show .left-Show-Right .det_btn .buy_now {
    background: #ffefd9;
    color: #f18e00;
}
.bottom-Left {
    width: 950px;
    margin-left: 296px;
}
.bottom-Left-Top {
    border: 1px solid #e0e0e0;
}
.bottom-Left-Top .tabList {
    background: #f7f7f7;
    position: absolute;
    width: 948px;
}
.bottom-Left-Top .tabList ul .selected {
    border-bottom: none;
    background: #fff;
}
.bottom-Left-Top .tabList ul li {
    border-right: 1px solid #e0e0e0;
    height: 42px;
    width: 155px;
    line-height: 42px;
    text-align: center;
    font-size: 16px;
    color: #777;
    cursor: pointer;
    position: relative;
    margin: 0 auto;
}
.bottom-Left-Top .tabCon {
    padding-top: 42px;
}
.bottom-Left-Top .tabCon .selected {
    width: 950px;
    opacity: 1;
    display: block;
}
.bottom-Left-Top .tabCon .tabCon-Introduce {
    display: inline-block;
    padding: 10px;
    overflow: hidden;
}
.bottom-Left-Top .tabCon .tabCon-Introduce span {
    float: left;
    color: #777;
    font-size: 12px;
    width: 210px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    margin: 10px 10px;
}
.bottom-Left-Top .tabCon .selected img {
    width: 947px;
    max-width: none;
}
</style>