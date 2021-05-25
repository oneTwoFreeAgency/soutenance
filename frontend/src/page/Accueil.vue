<template id="marker2">
  <b-container fluid style="background-color: #308c99">
    <h3>Nous</h3>

    <!-- <div>
      <img
        class="bouteillevide slide"
        src="../assets/image/bouteillevide.png"
        alt="bouteille vide agence"
        data-aos="fade-down"
        data-aos-easing="linear"
        data-aos-duration="1500"
      />
    </div> -->

    <div>
      <img
        class="boutbulles slide"
        src="../assets/image/bouteillebulles.png"
        alt="bouteille bulles agence"
        data-aos="fade-left"
        data-aos-anchor="#example-anchor"
        data-aos-offset="500"
        data-aos-duration="4000"
      />
    </div>
    <div>
      <img
        class="mobilebulles slide"
        src="../assets/image/Champmobilebulles.png"
        alt="mobile bulles agence"
        data-aos="fade-right"
        data-aos-offset="300"
        data-aos-easing="ease-in-sine"
      />
    </div>
    <div>
      <img
        class="tablettebulles slide"
        src="../assets/image/Champtablettebulles.png"
        alt="tablette bulles agence"
        data-aos="fade-up"
        data-aos-duration="3000"
      />
    </div>
    <div>
      <img
        class="ordibulles slide"
        src="../assets/image/champordibulles.png"
        alt="ordinateur bulles agence"
        data-aos="fade-down"
        data-aos-easing="linear"
        data-aos-duration="1500"
      />
    </div>
  </b-container>
</template>

<script>
import AOS from "aos";
import "aos/dist/aos.css";

export default {
  created() {
    AOS.init();
  },
};
</script>

<style >
.bouteillevide {
  /* width: 300px; */
  height: 75px;
}
.boutbulles {
  /* width: 350px; */
  height: 150px;
}
.mobilebulles {
  /* width: 100px; */
  height: 150px;
}
.tablettebulles {
  /* width: 200px; */
  height: 150px;
}
.ordibulles {
  /* width: 300px; */
  height: 150px;
}
body,
nav.navbar,
html {
  background-color: #308c99 !important;
}
</style>