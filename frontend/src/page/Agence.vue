<template>
  <b-container>
    <img
      class="agence"
      src="../assets/image/Slideagence1.jpg"
      alt="campagne agence"
    />
    <!-- <v-parallax src="../assets/image/Slideagence1.jpg"></v-parallax> -->

    <h1 class="text-center">{ L'agence }</h1>
    <b-row>
      <b-col>
        <h3>Notre histoire</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum cum
          culpa id accusamus error recusandae veniam ab voluptatibus nemo
          veritatis, aut odio ipsa sequi maxime ratione, dolores magni? Ullam,
          asperiores.
        </p>
      </b-col>
      <b-col>
        <h3>Notre concept</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod sequi
          harum eveniet a consequuntur cumque aut eius. Beatae, delectus fugiat.
          Neque, quisquam reprehenderit? Neque ut, cupiditate dicta aliquam
          cumque facilis.
        </p>
        <img src="#" alt="illustration agence" />
        <img src="#" alt="illustration agence" />
      </b-col>
    </b-row>

    <h2 class="text-center">{ l'équipe }</h2>
    <b-row>
      <b-col class="text-center">
        <h4>{ BINETOU }</h4>
        <img
          class="profil"
          src="../assets/image/profilB.jpg"
          alt="portrait Binetou"
        />
        <p>CHEFFE DE PROJET</p>
        <div>
          <a href="#">
            <font-awesome-icon :icon="['fab', 'twitter']" size="2x" />

            <font-awesome-icon icon="twitter"></font-awesome-icon>
          </a>
          <a href="#">
            <font-awesome-icon
              :icon="['fab', 'instagram']"
              size="2x"
              class="mx-3"
            />

            <font-awesome-icon icon="intagram"></font-awesome-icon>
          </a>

          <a href="#">
            <font-awesome-icon :icon="['fab', 'linkedin']" size="2x" />

            <font-awesome-icon icon="linkedin"></font-awesome-icon>
          </a>
        </div>
      </b-col>

      <b-col class="text-center">
        <h4>{ MICHEL }</h4>
        <img
          class="profil"
          src="../assets/image/profilM.jpg"
          alt="portrait MICHEL"
        />
        <p>DESIGN / DEV</p>
        <div>
          <a href="#">
            <font-awesome-icon :icon="['fab', 'twitter']" size="2x" />

            <font-awesome-icon icon="twitter"></font-awesome-icon>
          </a>
          <a href="#">
            <font-awesome-icon
              :icon="['fab', 'instagram']"
              size="2x"
              class="mx-3"
            />

            <font-awesome-icon icon="intagram"></font-awesome-icon>
          </a>

          <a href="#">
            <font-awesome-icon :icon="['fab', 'linkedin']" size="2x" />

            <font-awesome-icon icon="linkedin"></font-awesome-icon>
          </a>
        </div>
      </b-col>
      <b-col class="text-center">
        <h4>{ RAPHAËL }</h4>
        <img
          class="profil"
          src="../assets/image/profilR.jpg"
          alt="portrait RAPHAËL"
        />
        <p>DEVELOPPEUR FRONTEND</p>
        <div class="">
          <a href="#">
            <font-awesome-icon :icon="['fab', 'twitter']" size="2x" />

            <font-awesome-icon icon="twitter"></font-awesome-icon>
          </a>
          <a href="#">
            <font-awesome-icon
              :icon="['fab', 'instagram']"
              size="2x"
              class="mx-3"
            />

            <font-awesome-icon icon="intagram"></font-awesome-icon>
          </a>

          <a href="#">
            <font-awesome-icon :icon="['fab', 'linkedin']" size="2x" />

            <font-awesome-icon icon="linkedin"></font-awesome-icon>
          </a>
        </div>
      </b-col>
      <b-col class="text-center">
        <h4>{ PHILIPPE }</h4>
        <img
          class="profil"
          src="../assets/image/profilP.jpg"
          alt="portrait PHILIPPE"
        />
        <p>DEVELOPPEUR BACKEND</p>
        <div>
          <a href="#">
            <font-awesome-icon :icon="['fab', 'twitter']" size="2x" />

            <font-awesome-icon icon="twitter"></font-awesome-icon>
          </a>
          <a href="#">
            <font-awesome-icon
              :icon="['fab', 'instagram']"
              size="2x"
              class="mx-3"
            />

            <font-awesome-icon icon="intagram"></font-awesome-icon>
          </a>

          <a href="#">
            <font-awesome-icon :icon="['fab', 'linkedin']" size="2x" />

            <font-awesome-icon icon="linkedin"></font-awesome-icon>
          </a>
        </div>
      </b-col>
    </b-row>
  </b-container>
</template>

<style scoped>
.profil {
  width: 150px;
}
.agence {
  height: 300px;
}
</style>