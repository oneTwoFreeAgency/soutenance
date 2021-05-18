<template>
  <div>
    <b-navbar toggleable="lg" type="dark" variant="info">
      <b-navbar-brand href="#">.oneTwoFree{}</b-navbar-brand>
      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav>
          <router-link
            to="/agence"
            custom
            v-slot="{ href, route, navigate, isActive }"
          >
            <b-nav-item
              class="wesh"
              :active="isActive"
              :href="href"
              @click="navigate"
              >l'agence</b-nav-item
            >
          </router-link>

          <router-link
            to="/talent"
            custom
            v-slot="{ href, route, navigate, isActive }"
          >
            <b-nav-item
              class="wesh"
              :active="isActive"
              :href="href"
              @click="navigate"
              >Talents</b-nav-item
            >
          </router-link>

          <router-link
            to="/works"
            custom
            v-slot="{ href, route, navigate, isActive }"
          >
            <b-nav-item
              class="wesh"
              :active="isActive"
              :href="href"
              @click="navigate"
              >Works</b-nav-item
            >
          </router-link>

          <router-link
            to="/contact"
            custom
            v-slot="{ href, route, navigate, isActive }"
          >
            <b-nav-item
              class="wesh"
              :active="isActive"
              :href="href"
              @click="navigate"
              >Contact</b-nav-item
            >
          </router-link>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
    <!-- <img alt="Vue logo" src="./assets/logo.png" /> -->
    <!-- <Base msg="Bienvenue sur Vue.js App" /> -->

    <!-- route outlet -->
    <!-- component matched by the route will render here -->
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "NavbarPrincipal",
  props: {},
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
