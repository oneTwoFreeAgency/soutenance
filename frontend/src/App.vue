<template>
  <div id="app">
    <Navbar />
    <Footer />
  </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Footer from "./components/Footer.vue";

export default {
  name: "App",
  components: {
    Navbar,
    Footer,
  },
};
</script>

<style>
@font-face {
  font-family: "FuturaCondensedExtraBold";
  src: url(./assets/font/FuturaCondensedExtraBold.otf);
}

body {
  overflow-x: hidden;
}

h1,
h2,
h3,
h4 {
  font-family: "FuturaCondensedExtraBold";
}
</style>