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
          class="date"
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
.header {
  min-height: 60vw; // the bg image height is 60% its width
  background-image: url('~@/assets/header.svg');
  background-position: left top;
  background-repeat: no-repeat;
  background-size: 100vw;
}
.header-content {
  display: flex;
  flex: 1 0 auto;
  flex-wrap: wrap-reverse;
  justify-content: space-evenly;
  padding: 18vw 15vw 0 15vw;
}
.animals {
  margin-top: 30px;
  float: left;
  align-self: flex-start;
}
.text {
  text-align: center;
  line-height: 26px;
  align-self: flex-start;
}
//Desktop CSS:
@include from ($desktop) {
    .lhd {
      max-height: 16vw;
      margin-bottom: 12px;
    }
    .animals {
      max-height: 24vw;
    }
}
//Mobile CSS:
@include until ($desktop) {
    .lhd {
      max-height: 50vh;
      margin-bottom: 12px;
    }
    .date {
      display: none;
    }
    .animals {
    }
}
</style>
