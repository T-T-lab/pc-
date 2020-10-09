import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import myFooter from './components/my-footer' 
import myHeader from './components/header' 
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import myCarousel from './components/carousel' 



Vue.config.productionTip = false
Vue.use(ElementUI);
axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios;
Vue.component("myFooter",myFooter)
Vue.component("myHeader",myHeader)
Vue.component("myCarousel",myCarousel)


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
