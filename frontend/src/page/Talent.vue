<template>
  <div class="talent">
    <h1 class="text-center">{ Talent }</h1>
    <h2>{ Concours créatif }</h2>
    <b-row>
      <b-col>
        <b-row>
          <b-col>
            <p>Gagnes ta 1ère campagne chez .oneTwoFree !</p>
            <!-- place pour le formulaire -->
            <!-- <b-form></b-form> -->
          </b-col>
          <b-col>
            <p>Merlin l'enchanteur t'attend !</p>
            <span>3, 2, 1, lances-toi</span>
            <img
              src="../assets/image/podium.png"
              alt="illustration concours créatif onetwofree agence"
            />
          </b-col>
        </b-row>
      </b-col>
      <b-col>
        <h3>Présentation du concours</h3>
        <video controls>
          <source src="../assets/video/rocketotf.mp4" type="video/mp4" />
        </video>
      </b-col>
    </b-row>

    <b-row>
      <b-col>
        <h2>{ Rejoindre la team OTF }</h2>
        <p>Want to be Free ?</p>
        <img
          src="../assets/image/3dés.png"
          alt="illustration talent onetwofree agence"
        />
      </b-col>
      <b-col>
        <p>Tu es Free-lance, rejoins la famille Free</p>
        <!-- Place pour le formulaire -->
        <!-- <b-form></b-form> -->
      </b-col>
    </b-row>
  </div>
</template>

<style scoped>
img {
  width: 300px;
}
.talent {
  background-color: #ffffff;
}
</style>