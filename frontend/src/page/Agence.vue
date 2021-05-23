<template id="marker2">
  <b-container fluid>
    <div class="parallax"></div>
    <b-container>
      <section class="section">
        <h1 class="text-center">{ L'agence }</h1>
        <b-row>
          <b-col>
            <h3>Notre histoire</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum cum
              culpa id accusamus error recusandae veniam ab voluptatibus nemo
              veritatis, aut odio ipsa sequi maxime ratione, dolores magni?
              Ullam, asperiores.
            </p>
          </b-col>
          <b-col>
            <h3>Notre concept</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod
              sequi harum eveniet a consequuntur cumque aut eius. Beatae,
              delectus fugiat. Neque, quisquam reprehenderit? Neque ut,
              cupiditate dicta aliquam cumque facilis.
            </p>
            <img src="#" alt="illustration agence" />
            <img src="#" alt="illustration agence" />
          </b-col>
        </b-row>
      </section>
    </b-container>
    <div class="parallax2"></div>
    <b-container>
      <section class="section">
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
      </section>
    </b-container>
  </b-container>
</template>

<style scoped>
.parallax {
  /* The image used */
  background-image: url("../assets/image/slideone1aerobic.png");
  /* Set a specific height */
  min-height: 300px;
  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.parallax2 {
  /* The image used */
  background-image: url("../assets/image/Slideagence1.jpg");

  /* Set a specific height */
  min-height: 300px;

  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.profil {
  width: 150px;
}
.section {
  background-color: #dcdcdc;
}
</style>