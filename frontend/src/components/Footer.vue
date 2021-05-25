<template>
  <div class="footer mt-4 py-4">
    <b-row align-h="between">
      <b-col cols="3">
        <img
          class="ml-2"
          src="../assets/image/logofooterblanc.png"
          alt="logo de l'agence"
          id="logo"
        />
      </b-col>
      <b-col cols="6" class="coordonnées">
        <div>
          <img
            src="../assets/image/telephoneicone.png"
            alt="telephone agence"
          />
          <a href="tel:+33777524387">07.77.52.43.87</a>
        </div>
        <div>
          <img src="../assets/image/arobase.png" alt="email agence" />
          <a href="mailto:onetwofreeagency@gmail.com"
            >onetwofreeagency@gmail.com</a
          >
        </div>
        <div>
          <img src="../assets/image/mapiconeblanc.png" alt="adresse agence" />
          <span>10 rue du Terrage, 75010, Paris</span>
        </div>
      </b-col>
      <b-col>
        <b-row> </b-row>
        <div class="reseaux text-right">
          <a href="https://twitter.com/OneTwoFree20" target="_blank">
            <font-awesome-icon :icon="['fab', 'twitter']" size="3x" />

            <font-awesome-icon icon="twitter"></font-awesome-icon>
          </a>
          <a href="https://www.instagram.com/onetwofreeteam/" target="_blank">
            <font-awesome-icon :icon="['fab', 'instagram']" size="3x" />

            <font-awesome-icon icon="intagram"></font-awesome-icon>
          </a>

          <a href="#">
            <font-awesome-icon :icon="['fab', 'linkedin']" size="3x" />

            <font-awesome-icon icon="linkedin"></font-awesome-icon>
          </a>
        </div>
        <router-link
          to="/Mentions"
          custom
          v-slot="{ href, navigate, isActive }"
        >
          <a
            :active="isActive"
            :href="href"
            @click="navigate"
            class="d-block text-right mt-3"
            >Mentions légales</a
          >
        </router-link>
        <a
          href="http://localhost/soutenance/backend/public/index"
          class="d-block text-right mt-3"
          >Lien Backend</a
        >
      </b-col>
    </b-row>
  </div>
</template>

<script>
export default {
  name: "Footer",
};
</script>

<style scoped>
.coordonnées img {
  width: 40px;
  margin-right: 10px;
}
.footer {
  background-color: #308c99;
}

#logo {
  width: 150px;
}

a,
.coordonnées {
  margin-right: 1em;
  color: black;
  text-decoration: none !important;
}

.coordonnées {
  display: flex;
  flex-direction: column;
}
</style>