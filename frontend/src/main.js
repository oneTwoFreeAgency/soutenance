
// import Vue from 'vue'
import Vue from "vue/dist/vue.js"
import App from './App.vue'
import VueRouter from 'vue-router'

import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import { library } from "@fortawesome/fontawesome-svg-core";
import { faCircleNotch } from "@fortawesome/free-solid-svg-icons";
import {
  faLinkedin,
  faTwitter,
  faFacebookMessenger,
  faInstagram,
  faMedium
} from "@fortawesome/free-brands-svg-icons";


library.add(
  faCircleNotch,
  faLinkedin,
  faTwitter,
  faFacebookMessenger,
  faInstagram,
  faMedium
);

Vue.component('font-awesome-icon', FontAwesomeIcon)


import { BootstrapVue } from 'bootstrap-vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.use(BootstrapVue)

Vue.config.productionTip = false

import Contact from './page/Contact'
import Works from './page/Works'
import Talent from './page/Talent'
import Agence from './page/Agence'
import Mentions from './page/Mentions'
import Accueil from './page/Accueil'
import Modal from './components/Modal'


const routes = [
  { path: '/contact', name: 'contact', component: Contact },
  { path: '/works', name: 'works', component: Works },
  { path: '/talent', name: 'talent', component: Talent },
  { path: '/agence', name: 'agence', component: Agence },
  { path: '/Mentions', name: 'Mentions', component: Mentions },
  { path: '/Accueil', name: 'Accueil', component: Accueil },
  { path: '/Modal', name: 'Modal', component: Modal },
  { path: '/', redirect: { name: 'Accueil' }, component: Accueil }
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