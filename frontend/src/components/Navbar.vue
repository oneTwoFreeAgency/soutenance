<template>
  <div>
    <b-navbar toggleable="" type="dark" variant="info">
      <b-navbar-brand href="#">
        <img src="../assets/image/LogoOne.jpg" alt="Slogan de l'agence" />
      </b-navbar-brand>
      <img
        src="../assets/image/slogan.jpg"
        alt="Logo de l'agence"
        class="slogan"
      />
      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="liens">
          <router-link
            to="/agence"
            custom
            v-slot="{ href, navigate, isActive }"
          >
            <b-nav-item :active="isActive" :href="href" @click="navigate"
              >l'agence</b-nav-item
            >
          </router-link>

          <router-link
            to="/talent"
            custom
            v-slot="{ href, navigate, isActive }"
          >
            <b-nav-item :active="isActive" :href="href" @click="navigate"
              >Talents</b-nav-item
            >
          </router-link>

          <router-link to="/works" custom v-slot="{ href, navigate, isActive }">
            <b-nav-item :active="isActive" :href="href" @click="navigate"
              >Works</b-nav-item
            >
          </router-link>

          <router-link
            to="/contact"
            custom
            v-slot="{ href, navigate, isActive }"
          >
            <b-nav-item :active="isActive" :href="href" @click="navigate"
              >Contact</b-nav-item
            >
          </router-link>
          <router-link
            to="/Mentions"
            custom
            v-slot="{ href, navigate, isActive }"
          >
            <b-nav-item :active="isActive" :href="href" @click="navigate"
              >Mentions</b-nav-item
            >
          </router-link>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>

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
img {
  width: 200px;
}
.slogan {
  width: 390px;
}
.liens {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}
</style>

<!--
  L'attribut 'toggleable=""' permet de savoir quand le menu burger apparait ou pas, exemple: toggleable="lg",
  servira à a masquer le menu burger quand la taille de l'écran atteindra le breakpoint "large"
-->