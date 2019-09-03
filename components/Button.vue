<template>
  <div class="wrapper">
    <a :href="url" class="but-wrapped">
      <p class="but-text">{{ title }}</p>
      <img src="~@/assets/button.png" class="but" :class="{wide: isWide}">
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
    isWide: {
      type: Boolean,
      default: false
    }
  }
}
</script>

<style lang="scss" scoped>
  .wrapper {
    text-align: center;
    display: inline-block;
    margin: 0 5px 0 5px;
  }
  .but-wrapped {
    display: inline-block;
    transition: all .2s ease-in-out;
    margin: auto;
    width: 142px;
    height: 53px;
    color: #425E96;
  }
  .but-wrapped:hover {
    transform: scale(1.1);
  }
  .wide {
    transform: scaleX(1.2);
  }
  .but-text {
    position: relative;
    top: 20px;
    z-index: 3;
  }
  .but {
    position: relative;
    margin-top: -20px;
    z-index: 0;
  }
</style>
