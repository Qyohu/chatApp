import Vue from 'vue'
import VueRouter from 'vue-router'
import User from '../views/User.vue'
import Login from '../views/Login.vue'
import Home from '../views/Home.vue'
import Register from '../views/Register.vue'


Vue.use(VueRouter)

const routes = [
  { path: '/', redirect: '/login' },
  {
    path: '/',
    name: 'User',
    component: User,
    children: [
      {
        path: '/login',
        name: 'Login',
        component: Login
      },
      {
        path: '/register',
        name: 'Register',
        component: Register
      },
    ]
  },
  {
    path: '/home',
    name: 'Home',
    component: Home
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
//挂载路由导航守卫
router.beforeEach((to,from,next)=> {
  //to 将要访问的路径
  //from 代表从哪个路径跳转而来
  //next 是一个函数，表示放行
  // next()放行 next('/login')

  if(to.path ==='/login') return next();
  //获取token
  const id=window.localStorage.getItem("currentUserId");
  if(!id) return next('/login');
  next();
})
export default router
