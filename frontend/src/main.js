
// import Vue from 'vue'
import Vue from "vue/dist/vue.js"
import App from './App.vue'
import VueRouter from 'vue-router'

Vue.config.productionTip = false
import Contact from './page/Contact'

// const Contact = { template: "<div>contact</div>" };
const Bar = { template: "<div>bar</div>" };

const routes = [
  { path: '/contact', name: 'contact', component: Contact },
  { path: '/bar', name: 'bar', component: Bar }
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