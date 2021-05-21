<template>
  <div class="footer">
    <b-row align-h="between">
      <b-col cols="3">
        <img
          class="ml-2"
          src="../assets/image/logo-white.png"
          alt="logo de l'agence"
          id="logo"
        />
      </b-col>
      <b-col cols="6" class="coordonnées">
        <a href="tel:+33777524387">0777524387</a>
        <a href="mailto:onetwofreeagency@gmail.com"
          >onetwofreeagency@gmail.com</a
        >
        <p>10 rue du Terrage, 75010, Paris</p>
      </b-col>
      <b-col>
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
}

.coordonnées {
  display: flex;
  flex-direction: column;
}
</style>