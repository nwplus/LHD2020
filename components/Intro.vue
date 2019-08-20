<template>
  <div class="header">
    <div class="header-content">
      <img src="~@/assets/animals.svg" class="animals">
      <div class="text">
        <p>nwPlus Presents</p>
        <img src="~@/assets/lhd.svg" class="lhd">
        <p>@ University of British Columbia</p>
        <p
          v-for="item in text"
          :key="item"
        >
          {{ item }}
        </p>
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
  background-position: left top;
  background-repeat: no-repeat;
  background-size: 100vw;
}
.header-content {
  padding: 18vw 15vw 0 15vw;
}
.animals {
  max-height: 24vw;
  float: left;
  margin-top: 5vw;
}
.lhd {
    max-height: 19vw;
}
.text {
  text-align: center;
}
//Mobile CSS:
@include until ($desktop) {

  }
</style>
