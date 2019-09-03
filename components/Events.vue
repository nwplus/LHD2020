<template>
  <div class="mainContainer">
    <h2>Events</h2>
    <div v-for="item in sortedEvents" :key="item.order">
      <div class="columns white">
        <img
          v-if="item.title === 'Learn Day'"
          class="column imgResize"
          src="../assets/learn-deer-graphic.svg"
        >
        <img
          v-else-if="item.title === 'Build Day'"
          class="column imgResize"
          src="../assets/build-beaver-graphic.svg"
        >
        <img
          v-else-if="item.title === 'Share Day'"
          class="column imgResize"
          src="../assets/share-bear-graphic.svg"
        >
        <div class="column">
          <p class="title">
            {{ item.title }}
          </p>
          <br>
          <p class="text">
            {{ item.text }}
          </p>
          <Button title="Email list" url="#" />
          <Button title="Event page" url="#" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Button from '~/components/Button.vue'
import orderBy from 'lodash.orderby'
export default {
  components: {
    Button
  },
  props: {
    items: {
      type: Array,
      required: true
    }
  },
  computed: {
    sortedEvents: function () {
      return orderBy(this.items, 'order')
    }
  }
}
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";
</style>
