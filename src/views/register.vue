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
        <!-- 注册界面 -->
        <div class="register-central">
            <div class="central-left">
             <div id="register_form">
              <div class="register-box">
               <div>
                <div class="register-box-top clearfix">
                 <h3>账户信息</h3>
                </div>
                <ul>
                <li>
                     <em class="register-img-acc"></em>
                     <input type="text" placeholder="请输入手机号" name="phone" class="register-Phone" value="" v-model="phone" @blur="phone_blur">
                  <div class="register-show">
                    <div :class="phone_class">{{phone_class.msg}}</div>
                  </div>
                </li>
                 <li>
                     <em class="register-img-lock"></em>
                     <input type="password" placeholder="请输入6-20位密码" name="password" class="register-Phone" v-model="upwd" @blur="upwd_blur">
                  <div class="register-show">
                    <div :class="upwd_class">{{upwd_class.msg}}</div>
                  </div>
                </li>
                </ul>
               </div>
               <div class="register-box-2">
                <ul>
                 <li>
                     <button class="btn" @click="reg">注册</button>
                </li>
                 <!-- <li class="registerChk">
                     <label>
                         <input type="checkbox" v-model="isAgree">
                   我已接受翠鲜缘.com的
                    </label>
                    <router-link to="" target="_blank">服务条款</router-link>
                </li> -->
                </ul>
               </div>
              </div>
            </div>
            </div>
            <span class="register-Line"></span>
            <div class="central-right">
             <div class="central-right-top">
              <img src="/img/index/right_up.png" />
             </div>
             <div class="central-right-down">
              <img src="/img/index/reg_rightdown.png" />
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
            reg(){
                if(this.phone_blur()&this.upwd_blur()){
                    this.axios.get('/user/reg',{params:{phone:this.phone,upwd:this.upwd}}).then(res=>{
                        if(res.data.code==1){
                            alert('注册成功')
                            this.$router.push('/login')
                        }else{
                            alert('注册失败,请输入正确的格式')
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
.register-central {
  height: 1000px;
  padding: 50px 0 40px 0;
  background: #fafafa; }

.register-central .register_WarningBc {
  /* background: url("../img/login/Warning.png"); */
  width: 14px;
  height: 14px;
  position: absolute;
  left: 10px;
  top: 57px; }

.register-central .register-Line {
  border-left: 2px solid #d7d7d7;
  float: left;
  height: 90%;
  margin-top: 30px; }

.register-central .central-left {
  float: left;
  width: 59%; }

.register-central .central-left .register-box {
  float: right;
  margin: 0 100px 0 0;
  padding: 15px 42px; }

.register-central .central-left .register-box .register-box-2 {
  margin-top: 32px; }

.register-central .central-left .register-box .register-box-2 .btn {
  cursor: pointer;
  background: #f18e00;
  width: 100%;
  border: none;
  height: 47px;
  color: #fff;
  font-size: 16px; }

.register-central .central-left .register-box .register-box-2 .registerChk {
  margin-top: 10px;
  font-size: 12px;
  height: 26px;
  line-height: 26px; }

.register-central .central-left .register-box .register-box-2 .registerChk a {
  color: #f18e00;
  font-size: 12px; }

.register-central .central-left .register-box .register-box-top {
  border-bottom: 1px solid #ececec;
  width: 410px;
  margin: 0 0 30px 0; }

.register-central .central-left .register-box .register-box-top h3 {
  float: left;
  font-size: 16px;
  color: #888;
  font-weight: 400;
  margin: 0;
  padding-bottom: 10px; }

.register-central .central-left .register-box ul li {
  position: relative; }

.register-central .central-left .register-box ul .areaList {
  color: #777;
  background-color: #FFF;
  height: 42px;
  vertical-align: middle;
  *display: inline;
  padding: 4px 8px;
  margin-right: 10px;
  border: solid 1px #e3e3e3; }

.register-central .central-left .register-box ul select option {
  line-height: 20px;
  display: block;
  height: 20px;
  padding: 4px 20px; }

.register-central .central-left .register-box ul .chosetime {
  color: #777;
  width: 410px;
  height: 45px;
  text-indent: 2em;
  border: solid 1px #e3e3e3; }

.register-central .central-left .register-box ul .register-Phone {
  width: 410px;
  height: 45px;
  border: 1px solid #e3e3e3;
  text-indent: 3em; }

.register-central .central-left .register-box ul .register-Phone option {
  width: 410px;
  text-align: center; }

.register-central .central-left .register-box ul .register-Phone:hover {
  border-color: #f08f00; }

.register-central .central-left .register-box ul select {
  padding-left: 6px; }

.register-central .central-left .register-box ul .register-yanzheng {
  width: 300px;
  height: 45px;
  border: 1px solid #e3e3e3;
  text-indent: 3em;
  float: left; }

.register-central .central-left .register-box ul .register-yanzheng:hover {
  border-color: #f08f00; }

.register-central .central-left .register-box ul .registerText_shortImg {
  height: 47px;
  line-height: 30px;
  float: right;
  width: 110px; }

.register-central .central-left .register-box ul .registerBtn-Phone {
  float: right;
  background: #f18e00;
  border: none;
  height: 47px;
  line-height: 47px;
  color: #fff;
  font-size: 12px;
  width: 110px;
  cursor: pointer;
  text-align: center; }

.register-central .central-left .register-box ul .hadsend {
  background: #e3e3e3; }

.register-central .central-right {
  float: right;
  width: 39%; 
}

.register-central .central-right .central-right-top {
  margin: 15px 0 0 60px; }

.register-central .central-right .central-right-down {
  margin: 80px 0 0 80px; }
.register-img-acc {
    background: url(/img/index/loginuser.png);
    display: block;
    width: 12px;
    height: 16px;
    position: absolute;
    left: 14px;
    top: 16px;
}
.register-show, .register-show-update {
    height: 30px;
    padding-left: 30px;
    clear: both;
}
.register-img-lock {
    background: url(/img/index/login-lock.png);
    display: block;
    width: 12px;
    height: 16px;
    position: absolute;
    left: 14px;
    top: 16px;
}
.register-central .register-Line {
    border-left: 2px solid #d7d7d7;
    float: left;
    height: 90%;
    margin-top: 30px;
}
</style>