<template>
    <div>
        <!-- 顶部 -->
        <div class="header">
            <div class="wrap clearfix">
                <router-link to="/reg" class="headerLogo"><img src="/img/index/logo.png" alt="翠鲜缘"></router-link>
                <span class="headerLine"></span>
                <p>欢迎来到翠鲜缘.com</p>
            </div>
        </div>
        <!-- 登录界面 -->
        <div class="center">
            <div class="wrap clearfix">
            <div><img src="/img/index/sign_left1.png" alt="" class="loginimg"></div>
            <div class="loginbox">
                <div class="logintop clearfix">
                    <h3 class="active" style="margin-right: 20px;">密码登录</h3>
                    <router-link to="/reg" style="cursor: pointer;">立即注册</router-link>
                    <span>没有账号？</span>
                </div>
                <div>
                    <ul>
                        <li>
                            <div class="login-show">
                                <!-- <em class="login_WarningBc hidden"></em>
                                <p></p> -->
                                <div :class="phone_class">{{phone_class.msg}}</div>
                            </div>
                            <em class="loginUser"></em>
                            <input name="name" placeholder="请输入手机号" class="loginText" v-model="phone" @blur="phone_blur">
                        </li>
                        <li>
                            <div class="login-show">
                            <!-- <em class="login_WarningBc hidden"></em>
                            <p class="errorMsg"></p> -->
                            <div :class="upwd_class">{{upwd_class.msg}}</div>
                            </div>
                            <em class="loginLock"></em>
                            <input type="password" name="password" placeholder="请输入密码" class="loginText" v-model="upwd" @blur="upwd_blur">
                        </li>
                        <li class="loginF clearfix">
                            <input type="checkbox" class="checkbox">自动登录
                            <router-link to="">忘记密码？</router-link>
                        </li>
                        <li>
                            <button class="loginBtn" @click="login">登 录</button>
                        </li>
                    </ul>
                </div>
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
                phone:"",
                upwd:"",
                phone_class:{
                    msg:"",
                    success:false,
                    fail:false
                },
                upwd_class:{
                    msg:"",
                    success:false,
                    fail:false
                }
            }
        },
        methods:{
            phone_blur(){
            let reg=/^1[3-9]\d{9}$/
            if(reg.test(this.phone)){
            this.phone_class={
              success:true,
              fail:false,
              msg:"√手机号格式正确"
            }
            return true;
            }else{
            this.phone_class={
              success:false,
              fail:true,
              msg:"×手机号格式不正确"
            }
            return false;
          }
            },
            upwd_blur(){
            let reg=/^[0-9A-Za-z_]{6,20}$/
            if(reg.test(this.upwd)){
            this.upwd_class={
              success:true,
              fail:false,
              msg:"√密码位数正确"
            }
            return true;
            }else{
            this.upwd_class={
              success:false,
              fail:true,
              msg:"×密码位数不正确"
            }
            return false;
          }
            },
            login(){
                if(this.phone_blur()&this.upwd_blur()){
                    this.axios.get('/user/login',{params:{phone:this.phone,upwd:this.upwd}}).then(res=>{
                        if(res.data.code==1){
                            alert('登录成功')
                            this.$router.push('/')
                        }else{
                            alert('登录失败，用户名或密码错误')
                        }
                    })
                }
            }
        }
    }
</script>
<style>
.header {
    border-bottom: 2px solid #f18d01;
}
.wrap {
    width: 1200px;
    margin: 0 auto;
    overflow: hidden;
}
.clearfix:before{
    content: " ";
    display: table;
}
.header .headerLogo {
    float: left;
    margin-right: 15px;
    margin-top: 18px;
}
.header .headerLine {
    border-left: 1px solid #ffb54c;
    float: left;
    height: 36px;
    margin-top: 36px;
}
.header p {
    float: left;
    font-size: 24px;
    color: #666;
    margin-left: 15px;
    line-height: 102px;
}
.center {
    background: #fafafa;
}
.center .loginimg {
    float: left;
    margin: 60px 0 0 0px;
}
.center .loginbox {
    float: right;
    border: 1px solid #f7f7f7;
    background: #fff;
    margin: 40px 0 40px 0;
    padding: 40px 40px;
    box-shadow: 1px 1px 5px #eee;
    border-radius: 6px;
}
.center .loginbox .logintop {
    border-bottom: 1px solid #ececec;
    width: 410px;
}
.clearfix:before{
    content: " ";
    display: table;
}
.clearfix::after{
    visibility: hidden;
    display: block;
    font-size: 0;
    content: " ";
    clear: both;
    height: 0;
}
.center .loginbox .logintop h3.active{
    color: #f28f00;
    border-bottom: 2px solid #f28f00;
}
.center .loginbox .logintop h3 {
    float: left;
    font-size: 20px;
    color: #999;
    margin: 0;
    padding-bottom: 6px;
    cursor: pointer;
}
.center .loginbox .logintop a {
    float: right;
    margin-top: 5px;
    color: #f28f00;
}
.center .loginbox .logintop span {
    float: right;
    color: #999;
    margin-top: 5px;
}
.center .loginbox li {
    position: relative;
    line-height: 16px;
}
.center .loginbox .login-show {
    height: 40px;
    line-height: 40px;
    margin: 5px 0 5px 0;
}
/* .center .login_WarningBc {
    background: url(/img/index/Warning.png);
    width: 14px;
    height: 14px;
    position: absolute;
    left: 10px;
    top: 14px;
}
.hidden {
    display: none;
} */
.center .loginbox .login-show p {
    color: red;
    padding-left: 30px;
}
.center .loginbox .loginUser {
    background: url(/img/index/loginuser.png);
    display: block;
    width: 12px;
    height: 14px;
    position: absolute;
    left: 14px;
    top: 60px;
}
.center .loginbox .loginText {
    width: 410px;
    height: 44px;
    border: 1px solid #e3e3e3;
    text-indent: 3em;
}
.center .loginbox .loginLock {
    background: url(/img/index/login-lock.png);
    display: block;
    width: 12px;
    height: 16px;
    position: absolute;
    left: 14px;
    top: 60px;
}
.center .loginbox .loginF{
    padding: 24px 0;
}
.center .loginbox .loginF .checkbox {
    display: block;
    float: left;
    width: 16px;
    height: 16px;
    cursor: pointer;
}
.center .loginbox .loginF a {
    float: right;
    color: #f28f00;
}
.center .loginbox .loginBtn {
    background: #f18e00;
    width: 100%;
    border: none;
    height: 48px;
    color: #fff;
    font-size: 24px;
    outline: none;
}
.success{
      background-color: lightgreen;
      border: 1px solid green;
      color: green;
      border-radius: 10px;
    }
.fail{
      background-color: pink;
      border: 1px solid red;
      color: red;
      border-radius: 10px;
    }
</style>
