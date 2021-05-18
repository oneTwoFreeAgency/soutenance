<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png" />
    <Base msg="Bienvenue sur Vue.js App" />
    <p>
      <!-- use router-link component for navigation. -->
      <!-- specify the link by passing the `to` prop. -->
      <!-- <router-link> will be rendered as an `<a>` tag by default -->
      <router-link to="/contact">aller sur contact |</router-link>
      <router-link to="/bar">aller sur bar</router-link>
    </p>
    <!-- route outlet -->
    <!-- component matched by the route will render here -->
    <router-view></router-view>
  </div>
</template>

<script>
import Base from "./components/Base.vue";

export default {
  name: "App",
  components: {
    Base,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
