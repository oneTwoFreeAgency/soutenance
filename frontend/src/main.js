
import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'

Vue.config.productionTip = false

const Foo = { template: "<div>foo</div>" };
const Bar = { template: "<div>bar</div>" };

const routes = [
  { path: '/foo', component: Foo },
  { path: '/bar', component: Bar }
]

const router = new VueRouter({
  routes // short for `routes: routes`
})
Vue.use(VueRouter)

new Vue({
  render: h => h(App),
  router,
}).$mount('#app')
