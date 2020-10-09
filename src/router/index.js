import Vue from 'vue'
import VueRouter from 'vue-router'
import  Login from '../views/login.vue'
import  Reg from '../views/register.vue'
import  Home from '../views/home.vue'
import  Details from '../views/details.vue'

Vue.use(VueRouter)

const routes = [
  {
    path:'/login',
    component:Login
  },
  {
    path:'/details/:fid',
    component:Details,
    props:true
  },
  {
    path:'/reg',
    component:Reg
  },
  {
    path:'/',
    component:Home
  }
]

const router = new VueRouter({
  routes
})

export default router
