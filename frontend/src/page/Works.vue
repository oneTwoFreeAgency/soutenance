<template>
  <b-container fluid>
    <div class="parallax mx-0"></div>
    <b-container>
      <section class="p-3 mb-2">
        <h1 class="text-center mb-4">{ 2,3 de nos réalisations }</h1>
        <b-row class="mb-5">
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
        </b-row>
        <b-row>
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
        </b-row>
      </section>
      <section class="p-3">
        <h2 class="text-center mb-4">{ 3,4 de nos travaux en cours }</h2>
        <b-row class="mb-5">
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
        </b-row>
        <b-row>
          <b-col class="clients" data-aos="fade-left" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
          </b-col>
          <b-col class="clients" data-aos="fade-right" aos-init aos-animate>
            <button type="button" class="btn" @click="showModal">
              <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
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
            <p>test work</p>
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