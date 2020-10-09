<template>
    <div>
        <div class="first-nav">
            <div class="container">
             <div class="nav-l">
              <ul>
               <li class="top-nav-menu"><a href="/"><span class="webIntro">欢迎光临翠鲜缘 . com</span></a></li>
               <li class="top-nav-menu nologin"><router-link to="/login"><span class="getLogin">请登录</span></router-link><router-link to="/reg"><span class="getRegister">免费注册</span></router-link></li>
              </ul>
             </div>
             <div class="nav-r">
              <div class="nav-list">
               <ul>
                <li class="nav-menu downSelect">
                 <div class="downSelect-hd">
                  <router-link to=""><span>我的订单</span></router-link>
                  <span class="dowSelect-arrow"></span>
                 </div>
                 <div class="downSelect-list">
                  <div class="downSelect-panel index_panel">
                   <router-link to="">待付款订单</router-link>
                   <router-link to="">待确认收货</router-link>
                   <router-link to="">待评价订单</router-link>
                  </div>
                 </div>
                </li>
                <li class="nav-menu downSelect">
                 <div class="downSelect-hd">
                  <router-link to=""><span>我的收藏</span></router-link>
                  <span class="dowSelect-arrow"></span>
                 </div>
                 <div class="downSelect-list">
                  <div class="downSelect-panel index_panel">
                   <router-link to="">商品收藏</router-link>
                   <router-link to="">店铺收藏</router-link>
                  </div>
                 </div></li>
                <li class="nav-menu downSelect">
                 <div class="downSelect-hd">
                  <router-link to="http://www.cuixianyuan.com/shop/seller_login.html"><span>我是商家</span></router-link>
                  <span class="dowSelect-arrow"></span>
                 </div>
                 <div class="downSelect-list">
                  <div class="downSelect-panel index_panel">
                   <router-link to="http://www.cuixianyuan.com/shop/show_joinin.html">商家入驻</router-link>
                   <router-link to="http://www.cuixianyuan.com/shop/seller_login.html">商家管理</router-link>
                  </div>
                 </div></li>
                <li class="nav-menu downSelect">
                 <div class="downSelect-hd">
                  <router-link to=""><span>客户服务</span></router-link>
                  <span class="dowSelect-arrow"></span>
                 </div>
                 <div class="downSelect-list">
                  <div class="downSelect-panel index_panel">
                   <router-link to="">帮助中心</router-link>
                   <router-link to="">售后服务</router-link>
                   <router-link to="">客服中心</router-link>
                  </div>
                 </div></li>
                <li class="nav-menu downSelect code_content">
                 <div class="downSelect-hd">
                  <router-link to="#"><span>手机翠鲜缘</span></router-link>
                  <span class="dowSelect-arrow"></span>
                 </div>
                 <div class="downSelect-list">
                  <div class="downSelect-panel index_panel">
                   <div class="bg_box">
                    <img class="code_img1" src="/img/index/app_qr_top1.png" />
                    <p class="code_name">扫描下载APP</p>
                    <img class="code_img1" src="/img/index/qr_code.png" />
                    <p class="code_name">扫描关注微信</p>
                    <img class="code_img1" src="/img/index/applet.jpg" />
                    <p class="code_name">微信小程序</p>
                   </div>
                  </div>
                 </div></li>
               </ul>
              </div>
             </div>
            </div>
        </div>
        <div>
            <div class="searchInput container clearfix">
                <div class="left-logo">
                 <router-link to="/"><img src="/img/index/logo.png" /></router-link>
                </div>
                <div class="middle-search ">
                 <div class="nav-search ">
                  <div class="nav-search-toggleTyle">
                   <div class="nav-search-toggleTyle-hd">
                    <div class="nav-search-type">
                     <span>产品</span>
                    </div>
                   </div>
                  </div>
                  <div class="nav-search-inputSearch ">
                   <input type="text" placeholder="请输入您要搜索的商品关键字" />
                   <div class="nav-search-inputSearch-maybeList hideImp">
                   </div>
                  </div>
                  <div class="btn nav-search-submit">
                   <div class="submit_button_box">
                    <img src="/img/index/search.png" />
                    <span>搜索</span>
                   </div>
                  </div>
                  <div class="clearfix"></div>
                 </div>
                </div>
                <div class="right-banner">
                 <div class="my_floruit_box">
                  <router-link to="" class="content_button" style="display: block;">我的翠鲜缘</router-link>
                  <div class="my_floruit_info">
                   <div class="container_box">
                    <p class="info_title">
                     您好,请
                     <a href="/?page=login">[登录]</a></p>
                     <ul class="info_item_box clearfix">
                        <li><a href="/?page=user_balance#integral">我的积分</a></li>
                        <li><a href="/?page=user_order#state_new">我的订单</a></li>
                        <li><a href="/?page=user_fav#index">我的收藏</a></li>
                        <li><a href="/?page=user_fav#record">我的足迹</a></li>
                       </ul>
                   </div>
                  </div>
                 </div>
                 <div class="flourite-banners">
                  <div class="flourite-banner-hd cart_iconz is_header_cart">
                  我的购物车
                   <img class="my_arrow" src="/img/index/my_arrow.png" />
                  </div>
                 </div>
                </div>
               </div>
               
               <div class="screen-nav-menu clearfix">
                   <div class="container">
                       <div class="top-menu">
                           <ul>
                               <li class="show_menu">
                                <a href="/?page=all_types" class="p">所有商品分类</a>
                                <img src="/img/index/sub_arrow_down.png" style="margin-left: 10px;">
                               </li>
                               <li class="active">
                                   <a href="">首页</a>
                                </li>
                                <li>
                                    <a href="">所有产品</a>
                                 </li>
                               <li>
                                    <a href="">线下市场</a>
                               </li>
                               <li>
                                <a href="">物流配送</a>
                               </li>
                               <li>
                                <a href="">行情资讯</a>
                               </li>
                           </ul>
                           <div class="rightPhone">
                               <img src="/img/index/phone.png">
                               <span>400-800-9519</span>
                            </div>
                       </div>
                </div>
                <div class="navBorderBottom"></div>
                </div>
            
        </div>
    </div>
</template>
<style>
    .first-nav {
    font-size: 12px;
    height: 30px;
    line-height: 30px;
    background-color: #fff;
    border-bottom: 1px solid #e5e5e5;
}
.container{
    width: 1200px;
    margin: auto;
}
.first-nav .nav-l {
    float: left;
}
.first-nav .nav-l .top-nav-menu {
    font-size: 12px;
    float: left;
    text-align: left;
}
/* .first-nav .nav-l a {
    color: inherit;
    font-size: inherit;
} */
.first-nav .nav-l .top-nav-menu .webIntro {
    color: #777777;
    font-size: 12px;
}
.first-nav .nav-l .top-nav-menu {
    font-size: 12px;
    font-size: inherit;
    float: left;
    text-align: left;
}
.first-nav .nav-l .top-nav-menu .getLogin{
    color: #f18e00;
    cursor: pointer;
    margin-left: 10px;
    font-size: 12px;
}
.first-nav .nav-l .top-nav-menu .getRegister {
    color: #f18e00;
    cursor: pointer;
    margin-left: 10px;
    font-size: 12px;
}
.first-nav .nav-r {
    float: right;
}
.downSelect {
    box-sizing: border-box;
    display: inline-block;
    position: relative;
    background: transparent;
    text-align: center;
    width: 80px;
    font-size: 12px;
}
.downSelect .downSelect-hd {
    height: 32px;
    line-height: 32px;
    position: relative;
    z-index: 999;
    font-size: 12px;
}
.downSelect * {
    box-sizing: border-box;
}
.downSelect .downSelect-hd a {
    display: inline-block;
    font-size: inherit;
    color: #777;
}
.downSelect .downSelect-hd .dowSelect-arrow {
    transition-duration: 0.3s;
    display: inline-block;
    vertical-align: middle;
    font-size: inherit;
    width: 7px;
    height: 4px;
    background: url(/img/index/header_top_right_arrow.png) center no-repeat;
    margin-top: -2px;
    margin-left: 6px;
}
.downSelect > div:nth-child(2) {
    display: none;
}
.downSelect .downSelect-list {
    height: 0px;
    position: relative;
}
.downSelect.code_content {
    width: 140px;
}
.downSelect .downSelect-list .downSelect-panel {
    position: absolute;
    z-index: 100003;
    top: -32px;
    margin-top: 32px !important;
}
.downSelect .downSelect-panel {
    width: 100%;
}
.downSelect .downSelect-panel a {
    color: #777777;
    display: block;
    font-size: 12px;
    padding-top: 8px;
    padding-bottom: 8px;
}
.downSelect:hover .downSelect-hd a span, .downSelect.active .downSelect-hd a span {
  color: #f18e00; 
}
.downSelect:hover > div:nth-child(2), .downSelect.active > div:nth-child(2) {
display: block; 
}
  .downSelect:hover .downSelect-panel a:hover, .downSelect.active .downSelect-panel a:hover {
  background: #fafafa;
  color: #f18e00; 
}
.downSelect:hover .downSelect-hd .dowSelect-arrow, .downSelect.active .downSelect-hd .dowSelect-arrow {
  transform: rotate(-180deg); 
}
.searchInput {
    padding-top: 32px;
    padding-bottom: 12px;
    position: relative;
}
.searchInput .left-logo {
    width: 182px;
    height: 64px;
    margin-top: -10px;
    float: left;
}
.searchInput .left-logo img {
    width: 100%;
    height: 100%;
}
.searchInput .middle-search {
    width: 548px;
    margin-left: 150px;
    float: left;
}
.nav-search {
    width: 548px;
    height: 45px;
    margin-bottom: 44px;
    border: 1px solid #f08e00;
    box-sizing: border-box;
    font-size: 14px;
    background: #f18e00;
}
.nav-search .nav-search-toggleTyle {
    float: left;
    width: 80px;
    height: 43px;
    background: white;
    border: 1px solid #f08e00;
    box-sizing: border-box;
}
.nav-search .nav-search-toggleTyle .nav-search-toggleTyle-hd {
    text-align: center;
    line-height: 44px;
    color: #f08e00;
}
.nav-search * {
    box-sizing: border-box;
}
.nav-search .nav-search-inputSearch {
    width: 355px;
    height: 43px;
    position: relative;
    float: left;
    border: 1px solid #f08e00;
    border-left: none;
    border-right: none;
}
.nav-search .nav-search-inputSearch input {
    width: 100%;
    height: 100%;
    border: none;
    box-sizing: border-box;
    padding: 0 10px;
}
.nav-search .nav-search-submit {
    width: 110px;
    height: 42px;
    float: left;
    border: 1px solid #f08e00;
    text-align: center;
}
.btn {
    font-size: 12px;
}
.nav-search .nav-search-submit .submit_button_box {
    height: 40px;
    line-height: 38px;
    cursor: pointer;
}
.nav-search .nav-search-submit * {
    font-size: 16px;
    vertical-align: middle;
}
.nav-search .nav-search-submit .submit_button_box img {
    margin-right: 10px;
    width: 16px;
    height: 16px;
    margin-top: 2px;
}
.nav-search .nav-search-submit .submit_button_box span {
    color: #fff;
    font-size: 16px;
}
.searchInput .right-banner {
    float: right;
    width: 290px;
}
.my_floruit_box {
    float: left;
    width: 130px;
    height: 45px;
    line-height: 45px;
    box-sizing: border-box;
    margin-right: 28px;
    position: relative;
}
.my_floruit_box .content_button {
    font-size: 14px;
    color: #777;
    padding-left: 30px;
    padding-right: 20px;
    height: 100%;
    text-align: center;
    overflow: hidden;
    position: relative;
    cursor: pointer;
    z-index: 701;
    background-color: #f5f5f5;
    border: 1px solid #e8e8e8;
    box-sizing: border-box;
}
.my_floruit_box .content_button:before{
    content: '';
    display: block;
    width: 17px;
    height: 17px;
    background: url(/img/index/my.png) no-repeat center center;
    background-size: 100% 100%;
    position: absolute;
    left: 10px;
    top: 14px;
}
.my_floruit_box .content_button:after {
    content: '';
    display: block;
    width: 17px;
    height: 17px;
    position: absolute;
    top: 14px;
    background: url(/img/index/my_arrow.png) no-repeat center center;
    background-size: 10px 5px;
    right: 5px;
    left: auto;
}
.my_floruit_box .my_floruit_info {
    overflow: hidden;
    width: 270px;
    position: absolute;
    left: -140px;
    box-sizing: border-box;
    top: 44px;
    z-index: 700;
    line-height: initial;
    height: 0;
    border: 1px solid transparent;
    transition: height .1s ease-in-out 0s;
}
.my_floruit_box .my_floruit_info .container_box {
    padding: 0 20px;
}
.my_floruit_box .my_floruit_info .info_title {
    font-weight: bold;
    color: #333;
    border-bottom: 1px solid #e8e8e8;
    height: 48px;
    line-height: 48px;
    overflow: hidden;
    padding-left: 20px;
}
.my_floruit_box .my_floruit_info .info_title a {
    color: #f18e00;
    font-size: 16px;
    padding-left: 5px;
}
.my_floruit_box .my_floruit_info .info_item_box li {
    display: inline-block;
    width: 113px;
    box-sizing: border-box;
    padding: 10px 20px 0;
    overflow: hidden;
}
.my_floruit_box .my_floruit_info .info_item_box li a {
    font-size: 12px;
}
.my_floruit_box .my_floruit_info .info_item_box li a:after {
    content: '>';
    margin-left: 3px;
    font-size: 14px;
}
.my_floruit_box .my_floruit_info .info_item_box li a:hover {
  color: #f18e00; }
.my_floruit_box:hover .content_button:after {
  transform: rotate(-180deg); 
}
.my_floruit_box:hover .my_floruit_info {
  background-color: #fff;
  height: 125px;
  border: 1px solid #e8e8e8; 
}
.flourite-banners {
    position: relative;
    width: 132px;
    height: 45px;
    z-index: 998;
    box-sizing: border-box;
    float: left;
}
.flourite-banners .flourite-banner-hd.is_header_cart {
    cursor: pointer;
    background-position: 8px center;
    background-color: #f5f5f5;
}
.flourite-banners .flourite-banner-hd.cart_iconz {
    background-image: url(/img/index/shoppingcart.png);
    background-position: 14px center;
    background-repeat: no-repeat;
    padding-left: 20px;
}
.flourite-banners .flourite-banner-hd {
    line-height: 45px;
    border: 1px solid #ececec;
    color: #777;
    text-align: center;
    margin-bottom: -1px;
    z-index: 2;
    position: relative;
    font-size: 14px;
}
.flourite-banners * {
    box-sizing: border-box;
}
.flourite-banners .flourite-banner-hd img {
    vertical-align: middle;
    position: absolute;
    top: 20px;
    left: 115px;
}
.screen-nav-menu {
    position: relative;
    height: 34px;
    z-index: 2;
}
.screen-nav-menu .container{
    position: relative;
    z-index: 3;
    width: 1200px;
    margin: auto;
}
.screen-nav-menu .top-menu {
    height: 34px;
    font-size: 16px;
    line-height: 34px;
}
.screen-nav-menu .top-menu ul {
    float: left;
}
.screen-nav-menu .top-menu li a:hover {
  cursor: pointer;
  color: #f18e00; }
.screen-nav-menu .top-menu li:first-child {
    width: 180px;
    background: #f18e00;
    text-align: center;
    color: white;
    padding: 0;
}
.screen-nav-menu .top-menu li:first-child a:hover{
    background: #f18e00;
    color: white;
}
.screen-nav-menu .top-menu li {
    display: inline-block;
    font-weight: bold;
    height: 34px;
}
.screen-nav-menu .top-menu .p {
    color: white;
}
.screen-nav-menu .top-menu li.active a{
    color: #f18e00;
}
.screen-nav-menu .top-menu li {
    display: inline-block;
    padding: 0 23px;
    font-weight: bold;
    color: #414141;
    height: 34px;
}
.screen-nav-menu .top-menu .rightPhone {
    float: right;
    text-align: center;
    font-size: 18px;
    color: #f18e00;
    font-weight: bold;
}
.screen-nav-menu .navBorderBottom {
    position: relative;
    background: #f18e00;
    z-index: 2;
    height: 2px;
}
</style>