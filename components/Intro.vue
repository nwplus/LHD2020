<template>
  <div class="header">
    <div class="header-content">
      <img src="~@/assets/animals.svg" class="animals" />
      <div class="text">
        <p>nwPlus Presents</p>
        <img src="~@/assets/lhd.svg" class="lhd" />
        <p>@ University of British Columbia</p>
        <p v-for="item in text" :key="item" class="date">{{ item }}</p>
        <Button title="Contact Us" url="mailto:lhd@nwplus.io" />
        <Button disabled title="Sign Up" url="#" />
        <p>Check back soon for sign up!</p>
      </div>
    </div>
  </div>
</template>

<script>
import Button from "~/components/Button.vue";
export default {
  components: {
    Button
  },
  props: {
    text: {
      type: String,
      default: "loading.."
    },
    sub: {
      type: String,
      default: "loading.."
    }
  },
  mounted() {
    this.text = this.text.split(".");
  }
};
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";
.header {
  min-height: 60vw; // the bg image height is 60% its width
  background-position: left top;
  background-repeat: no-repeat;
  background-size: 100vw;
}
.header-content {
  display: flex;
  flex: 1 0 auto;
  flex-wrap: wrap-reverse;
  justify-content: space-evenly;
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
@include from($desktop) {
  .header {
    margin-bottom: -12vw;
    background-image: url("~@/assets/header.svg");
  }
  .header-content {
    padding: 17vw 12vw 0 8vw;
  }
  .lhd {
    max-height: 16vw;
    margin-bottom: 12px;
  }
  .animals {
    max-height: 24vw;
  }
}
//Mobile CSS:
@include until($desktop) {
  .header {
    background-image: url("~@/assets/mobile-header.svg");
  }
  .header-content {
    padding: 15vw 10vw 0 10vw;
  }
  .lhd {
    max-height: 50vh;
    margin-bottom: 12px;
  }
  .date {
    display: none;
  }
}
</style>
