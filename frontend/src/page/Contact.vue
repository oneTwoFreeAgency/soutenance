<template>
  <b-container fluid>
    <div class="parallax mx-0"></div>
    <b-container>
      <h1 class="text-center text-white">
        <span class="point">.</span><span class="accolade">{</span> One Two from
        To
        <span class="accolade"> }</span>
      </h1>
      <b-row>
        <b-col class="text-white">
          <h3>Informations pratiques</h3>
          <p>Localisation de l'agence</p>
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.002547647792!2d2.361373515675051!3d48.87722797928935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e74a2784d1d%3A0x24dd226ba319689b!2s10%20Rue%20du%20Terrage%2C%2075010%20Paris!5e0!3m2!1sfr!2sfr!4v1621517373084!5m2!1sfr!2sfr"
            width="600"
            height="450"
            style="border: 0"
            allowfullscreen=""
            loading="lazy"
          ></iframe>
        </b-col>
        <b-col class="col-adresse">
          <address class="adresse d-flex">
            <div class="mb-3">
              <img
                src="../assets/image/mapiconeBLANC1.png"
                alt="adresse de l'agence"
              />
              <span class="text-white"
                >Adresse : 10 rue du Terrage, 75010 PARIS</span
              >
            </div>
            <a class="text-white mb-3" href="tel:+33777524387">
              <img
                src="../assets/image/telephoneiconeblanc.png"
                alt="adresse de l'agence"
              />
              Téléphone : 07.77.52.43.87</a
            >
            <a class="text-white" href="mailto:onetwofreeagency@gmail.com">
              <img
                src="../assets/image/arobaseblanc.png"
                alt="adresse de l'agence"
              />
              Email : onetwofreeagency@gmail.com</a
            >
          </address>
        </b-col>
      </b-row>
      <b-row class="mt-5">
        <b-col class="text-white">
          <h2>Contactez-nous</h2>
          <p class="text-center">Par ici</p>
          <button type="button" class="btn" @click="isModalVisible1 = true">
            <img
              class="form2"
              src="../assets/image/logofooter4.png"
              alt="illustration Contact"
            />
          </button>
          <Modal v-show="isModalVisible1" @close="isModalVisible1 = false">
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
        </b-col>
        <b-col class="text-white">
          <h2>Le patron c'est Vous !</h2>
          <p class="text-center">C'est quoi l'idée ?</p>
          <button type="button" class="btn" @click="isModalVisible2 = true">
            <img
              class="form2"
              src="../assets/image/calcul.jpg"
              alt="illustration brief / devis"
            />
          </button>
          <Modal v-show="isModalVisible2" @close="isModalVisible2 = false">
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
        </b-col>
      </b-row>
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
      isModalVisible1: false,
      isModalVisible2: false,
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
.form2 {
  width: 250px;
}
img .col-adresse {
  margin-top: 250px;
}
.adresse {
  flex-direction: column;
}
.adresse img {
  width: 40px;
}
.accolade {
  color: #fbd100;
}
.point {
  color: white;
}
.parallax {
  /* The image used */
  background-image: url("../assets/image/slideone-telephone.png");
  /* Set a specific height */
  min-height: 400px;
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
