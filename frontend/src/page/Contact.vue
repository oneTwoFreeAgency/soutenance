<template>
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
      <p>Adresse : 10 rue du Terrage, 75010 PARIS</p>
      <a href="tel:+33777524387">Téléphone : 07.77.52.43.87</a>
      <a href="mailto:ag.one.two.free@gmail.com"
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
      <h2>C'est vous le patron !</h2>
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
</style>
