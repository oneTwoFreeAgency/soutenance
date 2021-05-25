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
        <a href="#">
          <img src="../assets/image/logo-simple.jpg" alt="logo du client" />
        </a>
        <p>test work</p>
      </b-col>
    </b-row>
    <Modal></Modal>
  </b-container>
</template>

<script>
import { Modal } from "../components/Modal.vue";

export default {
  components: Modal,
};
</script>


<style scoped>
img {
  width: 150px;
}

.clients img,
p {
  display: block;
  margin: 0 auto;
  text-align: center;
}
</style>