<template id="marker2">
  <b-container>
    <div class="mx-0 d-none d-md-block test">
      <h1 class="dynamic-text-shadow">
        <p class="slogan">
          <span class="deco">.</span>oneTwoFree<span class="deco">{</span
          >L'agence web,
        </p>
        <p class="slogan">pas le club d'aérobic.<span class="deco">}</span></p>
      </h1>
      <!-- <img
        class="signette d-block mx-auto"
        src="../assets/image/svg/slideBoysBand.svg"
        alt="signature de l'agence"
      /> -->
    </div>
    <b-container>
      <section class="section p-5">
        <h2 class="text-center titre_born">
          <img
            class="titre_born2"
            src="../assets/image/svg/oneTwoTitreBeginsY.svg"
            alt="titre de la page"
          />
          <span class="point">.</span>OneTwoBorn<span class="accolade mr-1"
            >{</span
          ><span class="accolade">}</span>
        </h2>
        <b-row class="mt-5">
          <b-col class="text-center">
            <h3>Notre histoire</h3>
            <p>
              L’idée de créer une agence web est venue autour d’une table en
              septembre 2020, nous étions deux avec juste cette idée. Lorsque
              l’idée est revenue sur la table 6 mois plus tard, nous étions
              trois, avec toujours la même idée et juste un nom à lui donner:
              One Two Free.
            </p>
            <p>
              Le mot Free à la place de Three, parce que nous étions trois
              indépendants avec déjà l’envie d’être plus.
            </p>
            <p>
              Aujourd’hui nous sommes quatre autour de la table de One Two Free
              avec toujours l’envie d’être plus et toujours la même idée, faire
              l’agence web de vos rêves, de vos envies, de vos besoins, de vos
              idées…
            </p>
          </b-col>
          <b-col>
            <h3 class="text-center">Notre concept</h3>
            <img
              class="accroche d-block mx-auto mt-4"
              src="../assets/image/accrocheID.png"
              alt="concept de l'agence"
            />
          </b-col>
        </b-row>
      </section>
    </b-container>
    <div class="parallax2 mx-0 d-none d-md-block"></div>
    <b-container class="mt-5 mt-lg-0">
      <section class="section">
        <h2 class="text-center">{ One Two Team }</h2>
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
.parallax2 {
  /* The image used */
  background-image: url("../assets/image/slideonemousquetaire.png");

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
.titre_born,
h3 {
  color: #2f8b97 !important;
}
.accroche {
  width: 250px;
}
.accolade {
  color: #fbd200;
  font-size: 80px;
  vertical-align: sub;
}
.point {
  color: #fbd200;
  font-size: 80px;
}
.signette {
  font-family: "FuturaCondensedExtraBold";
  width: 1000px;
}
@font-face {
  font-family: "FuturaCondensedExtraBold";
  src: url(../assets/font/FuturaCondensedExtraBold.otf);
}
@font-face {
  font-family: "FuturaExtraBold";
  src: url(../assets/font/futura-extra-bold.ttf);
}
@font-face {
  font-family: "FuturaBold";
  src: url(../assets/font/unicode.futurab.ttf);
}
@import url(https://fr.allfont.net/allfont.css?fonts=futura-bold);
.dynamic-text-shadow {
  text-shadow: 0.1em 0.1em 0 #265973;
}
.test {
  display: grid;
  gap: 1ch;
}
.deco {
  color: #fbd200;
  font-size: 6rem;
}
h1 {
  text-align: center;
  font-size: 4rem;
  font-weight: 900;
  line-height: 1.1;
  /* font-family: "FuturaExtraBold", "arial" !important; */
  /* font-family: "Futura-Bold", arial; */
  font-family: "FuturaBold";
}
.slogan {
  color: white;
}
.titre_born2 {
  width: 300px;
}
</style>