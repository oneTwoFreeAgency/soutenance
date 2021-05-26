<template>
  <b-container fluid>
    <div class="parallax mx-0"></div>
    <b-container>
      <h1 class="text-center">{ Contact }</h1>

      <h3>Informations pratiques</h3>

      <div>
        <p>Localisation de l'agence</p>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.002547647792!2d2.361373515675051!3d48.87722797928935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e74a2784d1d%3A0x24dd226ba319689b!2s10%20Rue%20du%20Terrage%2C%2075010%20Paris!5e0!3m2!1sfr!2sfr!4v1621517373084!5m2!1sfr!2sfr"
          width="600"
          height="450"
          style="border: 0"
          allowfullscreen=""
          loading="lazy"
        ></iframe>
      </div>

      <address>
        <p class="text-white">Adresse : 10 rue du Terrage, 75010 PARIS</p>
        <a class="text-white" href="tel:+33777524387"
          >Téléphone : 07.77.52.43.87</a
        >
        <a class="text-white" href="mailto:ag.one.two.free@gmail.com"
          >Email :ag.one.two.free@gmail.com</a
        >
      </address>
      <div>
        <h2>Contactez-nous</h2>
        <p>Par ici</p>
        <button type="button" class="btn" @click="showModal">
          <img src="#" alt="illustration Contact" />
        </button>
        <Modal v-show="isModalVisible" @close="closeModal">
          <template v-slot:header>
            <h1>Le titre de ma page</h1>
          </template>
          <template v-slot:body>
            <p>Ici les infos de contact</p>
          </template>
          <template v-slot:footer>
            <p>Ici les infos de contact</p>
          </template>
        </Modal>
      </div>
      <div>
        <h2>Le patron c'est Vous !</h2>
        <p>C'est quoi l'idée ?</p>
        <button type="button" class="btn" @click="showModal">
          <img src="#" alt="illustration brief / devis" />
        </button>
        <Modal v-show="isModalVisible" @close="closeModal">
          <template v-slot:header>
            <h1>Le titre de ma page</h1>
          </template>
          <template v-slot:body>
            <p>Ici les infos de contact</p>
          </template>
          <template v-slot:footer>
            <p>Ici les infos de contact</p>
          </template>
        </Modal>
      </div>
    </b-container>
  </b-container>
</template>

<script>
import Modal from "../components/Modal";

export default {
  name: "HelloWorld",
  props: {
    msg: String,
  },
  components: {
    Modal,
  },
  data() {
    return {
      isModalVisible: false,
    };
  },
  methods: {
    showModal() {
      this.isModalVisible = true;
    },
    closeModal() {
      this.isModalVisible = false;
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.parallax {
  /* The image used */
  background-image: url("../assets/image/slide-work.png");
  /* Set a specific height */
  min-height: 300px;
  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
/* .parallax2 {
   The image used 
  background-image: url("../assets/image/Slideagence1.jpg");

   Set a specific height 
  min-height: 300px;

   Create the parallax scrolling effect 
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
} */
</style>
