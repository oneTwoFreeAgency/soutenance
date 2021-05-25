<template>
  <b-container>
    <h1 class="text-center">{ Works }</h1>
    <b-row class="mb-5">
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
    </b-row>
    <b-row class="mb-5">
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
    </b-row>
    <b-row>
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
      <b-col class="clients">
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
      <b-col class="clients">
        <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        <button type="button" class="btn" @click="showModal">
          Plus d'info
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
  </b-container>
</template>

<script>
import Modal from "../components/Modal";

export default {
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


<style scoped>
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