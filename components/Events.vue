<template>
  <div class="mainContainer">
    <h2>Events</h2>
    <div v-for="item in sortedEvents" :key="item.order">
      <div class="columns white singleEvent" :class="{ flipped: isFlipped(item) }">
        <img
          v-if="item.title === 'Learn Day'"
          class="column imgResize graphic"
          src="../assets/learn-deer-graphic.svg"
        >
        <img
          v-else-if="item.title === 'Build Day'"
          class="column imgResize graphic"
          src="../assets/build-beaver-graphic.svg"
        >
        <img
          v-else-if="item.title === 'Share Day'"
          class="column imgResize graphic"
          src="../assets/share-bear-graphic.svg"
        >
        <div class="column allEvents">
          <h3 class="title">
            {{ item.title }}
          </h3>
          <br>
          <p class="date">
            {{ item.date }}
          </p>
          <p class="blurb">
            {{ item.blurb }}
          </p>
          <Button disabled title="Sign up" url="#" class="buttonLabel" />
          <Button disabled title="Event page" url="#" class="buttonLabel" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import orderBy from 'lodash.orderby'
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
  },
  computed: {
    sortedEvents: function () {
      return orderBy(this.items, 'order')
    }
  },
  methods: {
    isFlipped(item) {
      console.log('isFlipped', item)
      return item.title === 'Learn Day' || item.title === 'Share Day'
    }
  }
}
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";
$heading-font: Merriweather;
$body-font: Apercu Pro, sans-serif;

#events .singleEvent {
  margin: 0 120px 130px 120px;
  @include until($desktop) {
    margin: 30px;
  }
}

#events .singleEvent.flipped {
  @include from($desktop) {
    display: flex;
    flex-direction: row-reverse;
  }
}

#events .graphic {
  margin-right: 50px;
}

.allEvents .title {
  color: darkblue;
  font-family: $heading-font;
  font-style: normal;
  font-weight: normal;
  font-size: 48px;
  line-height: 60px;
  margin-bottom: 0;
}

.date {
  color: $red;
  font-family: $body-font;
  font-size: 20px;
  line-height: 18px;
  font-weight: bold;
}

.blurb {
  color: darkblue;
  font-family: $body-font;
  font-size: 18px;
  line-height: 26px;
  margin: 25px 0;
}
</style>
