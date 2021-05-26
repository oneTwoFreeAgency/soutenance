<template id="marker2">
  <b-container fluid style="background-color: #308c99">
    <h1 class="text-center text-white">
      <span class="point">.</span><span class="accolade">{</span> Bienvenue
      <span class="accolade"> }</span>
    </h1>
    <h3>Nous</h3>

    <div class="text-center">
      <img
        class="boutbulles slide"
        src="../assets/image/bouteillebulles.png"
        alt="bouteille bulles agence"
        data-aos="flip-left"
        data-aos-easing="ease-out-cubic"
        data-aos-duration="3000"
      />
    </div>

    <div class="text-center">
      <img
        class="mobilebulles slide"
        src="../assets/image/Champmobilebulles.png"
        alt="mobile bulles agence"
        data-aos="fade-right"
        data-aos-offset="450"
        data-aos-easing="ease-in-sine"
      />
    </div>

    <div class="text-center">
      <img
        class="tablettebulles slide"
        src="../assets/image/Champtablettebulles.png"
        alt="tablette bulles agence"
        data-aos="fade-left"
        data-aos-duration="3000"
      />
    </div>

    <div class="text-center">
      <img
        class="ordibulles slide"
        src="../assets/image/champordibulles.png"
        alt="ordinateur bulles agence"
        data-aos="fade-right"
        data-aos-easing="linear"
        data-aos-duration="1500"
      />
    </div>

    <div class="text-center">
      <img
        class="welcome"
        src="../assets/image/slideoneaerobic.png"
        alt="ordinateur bulles agence"
        data-aos="fade-up"
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
.accolade {
  color: #fbd100;
}
.point {
  color: white;
}

.hardware {
  width: 300px;
}
.boutbulles {
  /* width: 350px; */
  height: 150px;
}
.mobilebulles {
  /* width: 100px; */
  /* max-height: 100%; */
  max-width: 40%;
  /* height: 150px !important; */
}
.tablettebulles {
  /* width: 200px; */
  /* height: 150px !important; */
  max-width: 40%;
}
.ordibulles {
  width: 250px;
  /* height: 150px !important; */
  /* max-width: 50%; */
}
.welcome {
  width: 500px;
}
body,
nav.navbar,
html {
  background-color: #308c99 !important;
}
</style>