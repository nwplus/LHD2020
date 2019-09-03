<template>
  <div class="mainContainer">
    <h2>
      Events
    </h2>
    <div
      v-for="item in sortedEvents"
      :key="item.order"
    >
      <div class="columns white">
        <img class="column imgResize" :src="item.imageLink">
        <<<<<<< HEAD
        <div class="column">
          =======
          <div class="column ">
            >>>>>>> parent of 301a65a... add three events graphics
            <p class="title">
              {{ item.title }}
            </p>
            <br>
            <p class="text">
              {{ item.text }}
            </p>
            <p v-if="item.title === 'cmd-f'" class="disclaimer">
              *The cmd-f team would like to acknowledge that "female" or "women" is not an
              accurate description for many people and it may make some feel unwelcome.
              We use * to specifically and intentionally include cis and trans women,
              as well as non-binary, agender, intersex people.
            </p>
            <a :href="item.learnMoreLink" target="_blank" class="button is-primary is-outlined learnMoreButton">Learn More</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Button from '~/components/Button.vue'
import orderBy from 'lodash.orderby'
export default {
  props: { items: {
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
