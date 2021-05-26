<template>
  <b-container fluid>
    <div class="parallax mx-0"></div>
    <b-container>
      <section class="p-3 mb-2">
        <h1 class="text-center mb-4">{ 2,3 de nos réalisations }</h1>
        <b-row class="mb-5">
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible1 = true"
                src="../assets/image/presentationlesouvenir2.png"
                alt="photo production pour client"
              />
            </button>
            <Modal v-show="isModalVisible1" @close="isModalVisible1 = false">
              <template v-slot:header>
                <h1>Le titre de ma page</h1>
              </template>
              <template v-slot:body>
                <p>Refonte site, Création Charte graphique</p>
              </template>
              <template v-slot:footer>
                <p>Ici les infos de contact</p>
              </template>
            </Modal>
            <p>Identité visuelle</p>
          </b-col>
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn">
              <img
                @click="isModalVisible2 = true"
                src="../assets/image/presse1.jpg"
                alt="photo production pour client"
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
            <p>Presse Ecrite</p>
          </b-col>
        </b-row>
        <b-row>
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible3 = true"
                src="../assets/image/abbepierre.png"
                alt="photo production pour client"
              />
            </button>
            <Modal v-show="isModalVisible3" @close="isModalVisible3 = false">
              <template v-slot:header>
                <h1>Le titre de ma page</h1>
              </template>
              <template v-slot:body>
                <p>Création supports visuels</p>
              </template>
              <template v-slot:footer>
                <p>Ici les infos de contact</p>
              </template>
            </Modal>
            <p>Affichage</p>
          </b-col>
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible4 = true"
                src="../assets/image/presse2.jpg"
                alt="photo production pour le client"
              />
            </button>
            <Modal v-show="isModalVisible4" @close="isModalVisible4 = false">
              <template v-slot:header>
                <h1>Le titre de ma page</h1>
              </template>
              <template v-slot:body>
                <p>Création contenus pour la radio</p>
              </template>
              <template v-slot:footer>
                <p>Ici les infos de contact</p>
              </template>
            </Modal>
            <p>Presse Radio</p>
          </b-col>
        </b-row>
      </section>
      <section class="p-3">
        <h2 class="text-center mb-4">{ 3,4 de nos travaux en cours }</h2>
        <b-row class="mb-5">
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible5 = true"
                src="../assets/image/baio.png"
                alt="photo production pour client"
              />
            </button>
            <Modal v-show="isModalVisible5" @close="isModalVisible5 = false">
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
            <p>Création site</p>
          </b-col>
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible6 = true"
                src="../assets/image/win.png"
                alt="photo production pour client"
              />
            </button>
            <Modal v-show="isModalVisible6" @close="isModalVisible6 = false">
              <template v-slot:header>
                <h1>Le titre de ma page</h1>
              </template>
              <template v-slot:body>
                <p>
                  Refonte identité visuelle, SEO, gestion des réseaux sociaux
                </p>
              </template>
              <template v-slot:footer>
                <p>Ici les infos de contact</p>
              </template>
            </Modal>
            <p>Community management</p>
          </b-col>
        </b-row>
        <b-row>
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible7 = true"
                src="../assets/image/colombbus.png"
                alt="photo production pour client"
              />
            </button>
            <Modal v-show="isModalVisible7" @close="isModalVisible7 = false">
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
            <p>Recommandation stratégique</p>
          </b-col>
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img
                @click="isModalVisible8 = true"
                src="../assets/image/momobilier.jpg"
                alt="photo production pour le client"
              />
            </button>
            <Modal v-show="isModalVisible8" @close="isModalVisible8 = false">
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
            <p>Refonte site</p>
          </b-col>
        </b-row>
      </section>
    </b-container>
  </b-container>
</template>

<script>
import Modal from "../components/Modal";
import AOS from "aos";
import "aos/dist/aos.css";

export default {
  components: {
    Modal,
  },
  created() {
    AOS.init();
  },
  data() {
    return {
      isModalVisible1: false,
      isModalVisible2: false,
      isModalVisible3: false,
      isModalVisible4: false,
      isModalVisible5: false,
      isModalVisible6: false,
      isModalVisible7: false,
      isModalVisible8: false,
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
section {
  background: #ffffff;
}
img {
  width: 150px;
}
.btn {
  display: block;
  margin: 0 auto;
}
.clients img,
p {
  display: block;
  margin: 0 auto;
  text-align: center;
}
</style>