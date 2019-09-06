<template>
  <div class="wrapper">
    <a :href="url" :class="`but-wrapped ${!disabled ? 'hoverable' : ''}`">
      <p :class="`but-text ${disabled ? 'disabled' : ''}`">{{ title }}</p>
      <img src="~@/assets/button.png" :class="`but ${disabled ? 'disabled' : ''}`">
    </a>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: 'Hello World'
    },
    url: {
      type: String,
      default: '#'
    },
    disabled: {
      type: Boolean,
      required: false,
      default: false
    }
  }
}
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";

.wrapper {
  text-align: center;
  display: inline-block;
  margin: 0 5px 0 5px;
  @include until($desktop) {
    margin: 0;
  }
}
.but-wrapped {
  display: inline-block;
  transition: all 0.2s ease-in-out;
  margin: auto;
  width: 142px;
  height: 53px;
  @include until($desktop) {
    width: 100px;
    height: auto;
  }
}
.hoverable:hover {
  transform: scale(1.1);
}
.but-text {
  position: relative;
  top: 15px;
  z-index: 3;
  color: $dark-blue;
  font-family: $body-font;
  font-size: 20px;
  line-height: 25px;
  font-weight: bold;
  @include until($desktop) {
    top: 9px;
    font-size: 14px;
    line-height: 18px;
    display: inline-block;
  }
}
.disabled {
  color: grey;
}
.but {
  position: relative;
  margin-top: -20px;
  z-index: 0;
  max-width: 121px;
  height: auto;
  @include until($desktop) {
    max-width: 100px;
    height: auto;
  }
}
</style>
