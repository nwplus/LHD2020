<template>
  <div class="header">
    <div class="text">
      {{ text }}
    </div>
    <div class="sub">
      {{ sub }}
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
  height: 100vh;
  background-image: url('~@/assets/header.svg');
  background-color: #f6edec;
  background-position: top;
  background-repeat: no-repeat;
  background-size: 100vw;
}

//Mobile CSS:
@include until ($desktop) {

  }
</style>
