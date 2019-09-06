<template>
  <div class="sponsors">
    <h2>Sponsors</h2>
    <!-- <div id="sponsors-list" :class="'is-flex'">
      <div v-for="item in items" :key="item.name">
        <a :href="item.url" target="_blank">
          <img :src="item.imageURL" :alt="item.name">
        </a>
      </div>
    </div> -->
    <Button title="Become a Sponsor" url="mailto:lhd@nwplus.io" is-wide="true" />
  </div>
</template>

<script>
import Button from '~/components/Button.vue'

export default {
  components: {
    Button
  },
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
.sponsors {
  text-align: center;
}

//Mobile CSS:
@include until ($desktop) {

  }
</style>
