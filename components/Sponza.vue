<template>
  <div class="sponza">
    <h2 style="margin-bottom: 30px;">
      Sponsors
    </h2>
    <br>
    <!--  -->
    <div id="sponsors-list" v-for="tier in tiers" :key="tier" :class="is-flex">
      <div class="columns is-multiline is-vcentered is-centered">
        <div v-for="item in items" :key="item.name">
          <div v-if="item.rank == tier">
            <div class="column">
              <a :href="formatURL(item.url)" target="_blank">
                <v-lazy-image :class="item.rank" :alt="item.name" :src="item.imageURL" />
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--  -->
    <Button
      :is-wide="true"
      style="margin-top: 50px;"
      title="Become a Sponsor"
      url="mailto:lhd@nwplus.io"
    />
  </div>
</template>

<script>
import VLazyImage from 'v-lazy-image'
import Button from '~/components/Button.vue'

export default {
  components: {
    Button,
    VLazyImage
  },
  props: {
    items: {
      type: Array,
      required: true
    }
  },
  data: function () {
    return {
      tiers: ['tera', 'giga', 'mega', 'kilo', 'in-kind']
    }
  },
  methods: {
    formatURL(url) {
      if (!url.includes('http')) {
        return `http://${url}`
      } else {
        return url
      }
    }
  }
}
</script>

<style scoped lang="scss">
@import "bulma/bulma.sass";
$heading-font: "Caveat Brush";

//Desktop CSS:
.columns {
  margin-bottom: 20px !important;
}

.tera {
  width: 400px;
}

.giga {
  max-width: 350px;
}

.mega {
  max-width: 300px;
}

.kilo {
  max-width: 225px;
}

.in-kind {
  max-width: 150px;
}

h2 {
  font-family: $heading-font;
  font-size: 48px;
  line-height: 60px;
}
.sponza {
  margin-top: 5%;
  text-align: center;
}

//Mobile CSS:
@include until($desktop) {
}
</style>
