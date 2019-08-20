<template>
  <div id="sponsors">
    <h2>Sponsors</h2>
    <div id="sponsors-list" :class="'is-flex'">
      <div v-for="item in items" :key="item.name">
        <a :href="item.url" target="_blank">
          <img :src="item.imageURL" :alt="item.name">
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    items: {
      type: Array,
      required: true
    }
  }
}
</script>

<style scoped lang="scss">
@import "bulma/bulma.sass";
//Desktop CSS:

//Mobile CSS:
@include until ($desktop) {

  }
</style>
