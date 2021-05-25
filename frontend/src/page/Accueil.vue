<template id="marker2">
  <b-container fluid style="background-color: #308c99">
    <h3>Notre histoire</h3>

    <div>
      <img
        class="bouteillevide"
        src="../assets/image/bouteillevide.png"
        alt="bouteille vide agence"
      />
    </div>

    <div>
      <img
        class="boutbulles"
        src="../assets/image/bouteillebulles.png"
        alt="bouteille bulles agence"
        data-aos="fade-down"
        data-aos-easing="linear"
        data-aos-duration="1500"
      />
    </div>
    <div>
      <img
        class="mobilebulles"
        src="../assets/image/Champmobilebulles.png"
        alt="mobile bulles agence"
        data-aos="fade-right"
        data-aos-offset="300"
        data-aos-easing="ease-in-sine"
      />
    </div>
    <div>
      <img
        class="tablettebulles"
        src="../assets/image/Champtablettebulles.png"
        alt="tablette bulles agence"
        data-aos="fade-up"
        data-aos-duration="3000"
      />
    </div>
    <div>
      <img
        class="ordibulles"
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
.boutbulles {
  width: 350px;
}
.mobilebulles {
  width: 100px;
}
.tablettebulles {
  width: 200px;
}
.ordibulles {
  width: 300px;
}
body,
nav.navbar,
html {
  background-color: #308c99 !important;
}
</style>