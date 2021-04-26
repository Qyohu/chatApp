import Vue from 'vue'
import App from './App.vue'
import router from './router'
// import ElementPlus from 'element-plus';
// import 'element-plus/lib/theme-chalk/index.css';
import Antd from 'ant-design-vue';
import 'ant-design-vue/dist/antd.css';
import {Modal} from 'ant-design-vue';

import axios from 'axios'
import socket from 'socket.io-client'


axios.defaults.baseURL = 'http://121.43.132.101:3000'
Vue.prototype.$axios = axios
Vue.prototype.$io = socket
Vue.prototype.$confirm = Modal.confirm

Vue.config.productionTip = false
Vue.use(Antd)

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
