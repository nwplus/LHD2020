<template>
  <div class="mainContainer">
    <div v-for="item in sortedEvents" :key="item.order">
      <div class="columns white">
        <img class="column imgResize" :src="item.imageLink">
        <div class="column">
          <p class="title">
            {{ item.title }}
          </p>
          <br>
          <p class="date">
            {{ item.date }}
          </p>
          <p class="blurb">
            {{ item.blurb }}
          </p>
          <a
            :href="item.learnMoreLink"
            target="_blank"
            class="button is-primary is-outlined learnMoreButton"
          >Learn More</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import orderBy from 'lodash.orderby'
export default {
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

.title {
  color: $dark-blue;
  font-family: $heading-font;
  font-style: normal;
  font-weight: normal;
  font-size: 32px;
  line-height: 40px;
}

.date {
  color: $red;
  font-family: $body-font;
  font-size: 16px;
  line-height: 18px;
}

.blurb {
  color: $dark-blue;
  font-family: $body-font;
  font-size: 18px;
  line-height: 26px;
}
</style>
