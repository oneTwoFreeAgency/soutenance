<template>
  <div class="mx-0 d-none d-md-block test">
    <h1 class="dynamic-text-shadow">
      <p class="slogan_blanc">
        <span class="deco">.</span>oneTwoFree<span class="deco">{</span
        ><span class="slogan">Nos plus grands</span>
      </p>
      <p class="slogan">
        supporters sont en Algérie.<span class="deco">}</span>
      </p>
    </h1>
  </div>
</template>

<script>
export default {
  name: "SlideAlgerie",
};
</script>

<style scoped>
.dynamic-text-shadow {
  text-shadow: 0.1em 0.1em 0 #265973;
}
/* .test {
  display: grid;
  gap: 1ch;
} */
.deco {
  color: white;
  font-size: 6rem;
}
h1 {
  text-align: center;
  font-size: 4rem;
  font-weight: 900;
  line-height: 1.1;
  font-family: "FuturaBold";
}
.slogan {
  color: #fbd200;
}
.slogan_blanc {
  color: white;
}
</style>