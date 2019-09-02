<template>
  <div class="wrapper">
    <img src="~@/assets/bulletin.svg">
  </div>
</template>

<script>
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";
  .wrapper {
    min-height: 60vw; // the bg image height is 60% its width
    background-position: left top;
    background-repeat: no-repeat;
    display: block;
    margin: auto;
    background-size: 100vw;
  }
  .wrapper img {
      margin: auto;
      display: block;
  }
  @include from ($desktop) {
      .wrapper{
          background-image: url('~@/assets/BulletinBackground.svg')
      }
  }
</style>
