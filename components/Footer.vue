<template>
  <div class="bottom">
    <div class="footerT">
      <a href="https://www.facebook.com/nwplusubc/">
        <svg-icon name="fb" class="icon-animation" /></a>
      <a href="https://www.instagram.com/nwplusubc/">
        <svg-icon name="insta" class="icon-animation" /></a>
      <a href="https://medium.com/nwplusubc">
        <svg-icon name="medium" class="icon-animation" /></a>
      <a href="https://twitter.com/nwPlusubc">
        <svg-icon name="twitter" class="icon-animation" /></a>
      <p> {{ text }} </p>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      default: 'Copyright © 2019 nwPlus'
    }
  }
}
</script>

<style lang="scss">
@import "bulma/bulma.sass";
//Desktop CSS:

.icon-animation:hover {
    animation: pop-up 2s linear 0s 1;
    animation-fill-mode: forwards;
}

@keyframes pop-up {
    0% {
        transform: translateY(0);
    }
    25% {
        transform: translateY(-6px);
    }
    50% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(-8px);
    }
}
//Mobile CSS:
@include until ($desktop) {

  }
</style>
