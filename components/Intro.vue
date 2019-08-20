<template>
  <div>
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

//Mobile CSS:
@include until ($desktop) {

  }
</style>
