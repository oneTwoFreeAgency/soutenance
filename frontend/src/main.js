
// import Vue from 'vue'
import Vue from "vue/dist/vue.js"
import App from './App.vue'
import VueRouter from 'vue-router'
import { BootstrapVue } from 'bootstrap-vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.use(BootstrapVue)

Vue.config.productionTip = false

import Contact from './page/Contact'
import Works from './page/Works'
import Talent from './page/Talent'
import Agence from './page/Agence'


const routes = [
  { path: '/contact', name: 'contact', component: Contact },
  { path: '/works', name: 'works', component: Works },
  { path: '/talent', name: 'talent', component: Talent },
  { path: '/agence', name: 'agence', component: Agence },
]

const router = new VueRouter({
  routes // short for `routes: routes`
})
Vue.use(VueRouter)

new Vue({
  render: h => h(App),
  router,
})
  .$mount('#app')