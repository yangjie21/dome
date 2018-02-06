
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import App from './App.vue';
import ElementUI from 'element-ui';
import NProgress from 'nprogress'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'nprogress/nprogress.css'
import 'element-ui/lib/theme-default/index.css';
import { Message } from 'element-ui';
import 'font-awesome/css/font-awesome.min.css'
Vue.use(ElementUI);

import router from './router/index.js';
import api from './http/index.js'

Vue.prototype.$message = Message
Vue.prototype.$api = api
Vue.config.productionTip = false;

router.beforeEach((to, from, next) => {
  NProgress.start();
  if (to.path == '/login') {
     sessionStorage.access_token = null;
  }
  let access_token = sessionStorage.access_token;
  console.log(access_token);
  if (!access_token && to.path != '/login') {
    next({ path: '/login' })
  } else {
    next()
  }
})

router.afterEach(transition => {
	NProgress.done();
});

const app = new Vue({
    el: '#app',
    router,
    render: h => h(App)
});
