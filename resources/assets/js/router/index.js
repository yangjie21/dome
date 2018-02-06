import Vue from 'vue';
import VueRouter from 'vue-router';
Vue.use(VueRouter);
        
export default new VueRouter({
    saveScrollPosition: true,
    routes: [
        {
            name: 'login',
            path: '/login',
            component: resolve => void(require(['../components/Login.vue'], resolve)),
            hidden: true
        },
        {
            name: 'register',
            path: '/register',
            component: resolve => void(require(['../components/Register.vue'], resolve)),
            hidden: true
        },
        {
            name: 'index',
            path: '/',
            component: resolve => void(require(['../components/Index.vue'], resolve)),
            hidden: true
        },
    ]
});