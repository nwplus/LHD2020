<template>
  <div class="header">
    <div class="container">
      <div class="text">
        {{ text }}
      </div>
      <div class="sub">
        {{ sub }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      default: 'loading..'
    },
    sub: {
      type: String,
      default: 'loading..'
    }
  }
}
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";
//Desktop CSS:
.header {
  height: 60vw; // the bg image height is 60% its width
  background-image: url('~@/assets/header.svg');
  background-position: top;
  background-repeat: no-repeat;
  background-size: 100vw;
}
.container {
  padding: 20vh 15% 0 15%;
}
//Mobile CSS:
@include until ($desktop) {

  }
</style>
