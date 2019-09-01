<template>
  <div class="wrapper">
    <a :href="url" class="but-wrapped">
      <p class="but-text">{{ title }}</p>
      <img src="~@/assets/button.png" class="but">
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
  }
  .but-wrapped:hover {
    transform: scale(1.1);
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
