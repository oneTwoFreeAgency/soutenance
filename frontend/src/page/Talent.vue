<template>
  <div class="talent">
    <div class="parallax mx-0"></div>
    <h1 class="text-center">
      <span class="point">.</span><span class="accolade">{</span> Talent
      <span class="accolade"> }</span>
    </h1>
    <h2>{ Concours créatif }</h2>
    <b-row>
      <b-col>
        <div>
          <p>Gagnes ta 1ère campagne chez .oneTwoFree !</p>
          <!-- place pour le formulaire -->
          <!-- <b-form></b-form> -->
          <img
            class="form1"
            src="../assets/image/captureconcours.png"
            alt="capture formulaire concours"
          />
        </div>
        <div>
          <p>Merlin l'enchanteur t'attend !</p>
          <span>3, 2, 1, lances-toi</span>
          <img
            class="podium"
            src="../assets/image/podium.png"
            alt="illustration concours créatif onetwofree agence"
          />
        </div>
      </b-col>
      <b-col>
        <h3>Présentation du concours</h3>
        <video controls>
          <source src="../assets/video/rocketotf.mp4" type="video/mp4" />
        </video>
        <p>Tu es Free-lance, rejoins la famille Free</p>
      </b-col>
    </b-row>

    <div class="text-center pt-5">
      <h2>{ Rejoindre la team OTF }</h2>
      <p>Want to be Free ?</p>
    </div>
    <b-row class="py-2">
      <b-col>
        <img
          class="des mt-3 ml-3"
          src="../assets/image/3dés.png"
          alt="illustration talent onetwofree agence"
        />
      </b-col>
      <b-col>
        <img
          class="form1"
          src="../assets/image/capturecandidats.png"
          alt="capture formulaire candidat"
        />
      </b-col>
    </b-row>
  </div>
</template>

<style scoped>
.parallax {
  /* The image used */
  background-image: url("../assets/image/slide-mousquetaires.png");
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
} 
*/
h1,
h2 {
  color: #308c99;
}
h3 {
  color: #fbd100;
}
/* img {
  width: 300px;
} */
.talent {
  background-color: #ffffff;
}
.accolade {
  color: #fbd100;
}
.point {
  color: #308c99;
}
.form1 {
  width: 100%;
}
.podium {
  width: 250px;
}
.des {
  width: 200px;
}
</style>