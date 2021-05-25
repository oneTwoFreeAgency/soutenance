<template id="marker2">
  <b-container fluid>
    <div class="parallax mx-0"></div>
    <b-container>
      <section class="section p-5">
        <h1 class="text-center">{ L'agence }</h1>
        <b-row class="mt-5">
          <b-col>
            <h3>Notre histoire</h3>
            <p>
              L’idée de créer une agence web est venue autour d’une table en
              septembre 2020, nous étions deux avec juste cette idée. Lorsque
              l’idée est revenue sur la table 6 mois plus tard, nous étions
              trois, avec toujours la même idée et juste un nom à lui donner:
              One Two Free. Le mot Free à la place de Three, parce que nous
              étions trois indépendants avec déjà l’envie d’être plus.
            </p>
            <p>
              Aujourd’hui nous sommes quatre autour de la table de One Two Free
              avec toujours l’envie d’être plus et toujours la même idée, faire
              l’agence web de vos rêves, de vos envies, de vos besoins, de vos
              idées…
            </p>
          </b-col>
          <b-col>
            <h3>Notre concept</h3>
            <p>Chez .oneTwoFree{} nous pensons définitivement que :</p>
            <span
              >rien n’est plus fort qu’une idée, quand on a qu’une idée.</span
            >
            <p></p>
            <img src="#" alt="illustration agence" />
            <img src="#" alt="illustration agence" />
          </b-col>
        </b-row>
      </section>
    </b-container>
    <div class="parallax2 mx-0"></div>
    <b-container>
      <section class="section">
        <h2 class="text-center">{ l'équipe }</h2>
        <b-row>
          <b-col class="text-center">
            <h4>{ BINETOU }</h4>
            <img
              class="profil"
              src="../assets/image/profilBblanc.png"
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
              src="../assets/image/profilMjaune.png"
              alt="portrait MICHEL"
            />
            <p>DIRECTEUR ARTISTIQUE</p>
            <p>DESIGN GRAPHIQUE / DEV</p>
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
              src="../assets/image/profilRjaune.png"
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
              src="../assets/image/profilPjaune.png"
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
  background-color: #ffffff;
}
</style>