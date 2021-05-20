<template>
  <div>
    <h1>{ L'agence }</h1>
    <div>
      <h3>Notre histoire</h3>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum cum culpa
        id accusamus error recusandae veniam ab voluptatibus nemo veritatis, aut
        odio ipsa sequi maxime ratione, dolores magni? Ullam, asperiores.
      </p>
    </div>

    <div>
      <h3>Notre concept</h3>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod sequi
        harum eveniet a consequuntur cumque aut eius. Beatae, delectus fugiat.
        Neque, quisquam reprehenderit? Neque ut, cupiditate dicta aliquam cumque
        facilis.
      </p>
      <img src="#" alt="illustration agence" />
      <img src="#" alt="illustration agence" />
    </div>

    <h2>{ l'équipe }</h2>
    <div>
      <h4>{ BINETOU }</h4>
      <img
        class="profil"
        src="../assets/image/profilB.jpg"
        alt="portrait Binetou"
      />
      <p>blablabla</p>
      <div>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'twitter']" />

          <font-awesome-icon icon="twitter" size="3x"></font-awesome-icon>
        </a>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'instagram']" />

          <font-awesome-icon icon="intagram" size="3x"></font-awesome-icon>
        </a>

        <a href="#">
          <font-awesome-icon :icon="['fab', 'linkedin']" />

          <font-awesome-icon icon="linkedin" size="3x"></font-awesome-icon>
        </a>
      </div>

      <h4>{ MICHEL }</h4>
      <img
        class="profil"
        src="../assets/image/profilM.jpg"
        alt="portrait MICHEL"
      />
      <p>blablabla</p>
      <div>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'twitter']" />

          <font-awesome-icon icon="twitter" size="3x"></font-awesome-icon>
        </a>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'instagram']" />

          <font-awesome-icon icon="intagram" size="3x"></font-awesome-icon>
        </a>

        <a href="#">
          <font-awesome-icon :icon="['fab', 'linkedin']" />

          <font-awesome-icon icon="linkedin" size="3x"></font-awesome-icon>
        </a>
      </div>

      <h4>{ RAPHAËL }</h4>
      <img
        class="profil"
        src="../assets/image/profilR.jpg"
        alt="portrait RAPHAËL"
      />
      <p>blablabla</p>
      <div>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'twitter']" />

          <font-awesome-icon icon="twitter" size="3x"></font-awesome-icon>
        </a>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'instagram']" />

          <font-awesome-icon icon="intagram" size="3x"></font-awesome-icon>
        </a>

        <a href="#">
          <font-awesome-icon :icon="['fab', 'linkedin']" />

          <font-awesome-icon icon="linkedin" size="3x"></font-awesome-icon>
        </a>
      </div>

      <h4>{ PHILIPPE }</h4>
      <img
        class="profil"
        src="../assets/image/profilP.jpg"
        alt="portrait PHILIPPE"
      />
      <p>blablabla</p>
      <div>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'twitter']" />

          <font-awesome-icon icon="twitter" size="3x"></font-awesome-icon>
        </a>
        <a href="#">
          <font-awesome-icon :icon="['fab', 'instagram']" />

          <font-awesome-icon icon="intagram" size="3x"></font-awesome-icon>
        </a>

        <a href="#">
          <font-awesome-icon :icon="['fab', 'linkedin']" />

          <font-awesome-icon icon="linkedin" size="3x"></font-awesome-icon>
        </a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.profil {
  width: 150px;
}
h4 {
  font-family: Helvetica, sans-serif;
}
</style>