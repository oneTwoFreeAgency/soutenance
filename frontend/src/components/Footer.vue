<template>
  <div class="footer mt-2 py-2">
    <b-row align-h="between">
      <b-col cols="3">
        <img
          class="ml-2"
          src="../assets/image/logofooterblanc.png"
          alt="logo de l'agence"
          id="logo"
        />
      </b-col>
      <b-col cols="6" class="coordonnées mt-4">
        <div class="mb-2">
          <img
            src="../assets/image/telephoneiconeblanc.png"
            alt="telephone agence"
          />
          <a class="text-white" href="tel:+33777524387">07.77.52.43.87</a>
        </div>
        <div class="mb-2">
          <img src="../assets/image/arobaseblanc.png" alt="email agence" />
          <a class="text-white" href="mailto:onetwofreeagency@gmail.com"
            >onetwofreeagency@gmail.com</a
          >
        </div>
        <div>
          <img src="../assets/image/mapiconeBLANC1.png" alt="adresse agence" />
          <span class="text-white">10 rue du Terrage, 75010 PARIS</span>
        </div>
      </b-col>
      <b-col class="mt-4">
        <div class="reseaux text-right">
          <a
            class="text-white"
            href="https://twitter.com/OneTwoFree20"
            target="_blank"
          >
            <font-awesome-icon :icon="['fab', 'twitter']" size="2x" />

            <font-awesome-icon icon="twitter"></font-awesome-icon>
          </a>
          <a
            class="text-white"
            href="https://www.instagram.com/onetwofreeteam/"
            target="_blank"
          >
            <font-awesome-icon :icon="['fab', 'instagram']" size="2x" />

            <font-awesome-icon icon="intagram"></font-awesome-icon>
          </a>

          <a class="text-white" href="#">
            <font-awesome-icon :icon="['fab', 'linkedin']" size="2x" />

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
            class="d-block text-right mt-3 text-white"
            >Mentions légales</a
          >
        </router-link>
        <a
          href="http://localhost/soutenance/backend/public/admin"
          class="d-block text-right mt-3 text-white"
          >Zone Admin</a
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
  width: 35px;
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