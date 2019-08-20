<template>
  <div class="bottom">
    <div class="left">
      <img class="left-fg" src="../static/footer/left-fg.png">
      <img class="left-bg" src="../static/footer/left-bg.png">
      <img class="bike" src="../static/footer/bike.png">
    </div>
    <div class="right">
      <img class="right-fg" src="../static/footer/right-fg.png">
      <img class="right-bg" src="../static/footer/right-bg.png">
    </div>
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

//Mobile CSS:
@include until ($desktop) {

  }
</style>
