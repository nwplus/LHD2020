<template>
  <div class="container">
    <h1>FAQ</h1>
    <div class="columns">
      <!-- Left column begin -->
      <div class="column is-half is-multiline">
        <!--  -->
        General
        <div
          v-for="item in items"
          :key="item.question"
        >
          <div
            v-if="item.selected && item.category == 'general'"
          >
            <button
              class="accordion"
              @click="openSesame"
            >
              {{ item.question }}
            </button>
            <div class="panel">
              <p>
                {{ item.answer }}
              </p>
            </div>
          </div>
        </div>
        <!--  -->
      </div>
      <!-- Left column end -->      <!-- Right column begin -->
      <div class="column is-half is-multiline">
        <!-- logistics start -->
        Logistics
        <div
          v-for="item in items"
          :key="item.question"
        >
          <div
            v-if="item.selected && item.category == 'logistics'"
          >
            <button
              class="accordion"
              @click="openSesame"
            >
              {{ item.question }}
            </button>
            <div class="panel">
              <p>
                {{ item.answer }}
              </p>
            </div>
          </div>
        </div>
        <!-- logistics end -->
        <!-- logistics 2 start -->
        Logistics 2
        <div
          v-for="item in items"
          :key="item.question"
        >
          <div
            v-if="item.selected && item.category == 'logistics'"
          >
            <button
              class="accordion"
              @click="openSesame"
            >
              {{ item.question }}
            </button>
            <div class="panel">
              <p>
                {{ item.answer }}
              </p>
            </div>
          </div>
        </div>
        <!-- logistics 2 end -->
      </div>
      <!-- Right column end -->
    </div>
  </div>
</template>

<script>
export default {
  props: { items: {
    type: Array,
    required: true
  }
  },
  methods: {
    openSesame: (e) => {
      e.target.classList.toggle('active')
      const panel = e.target.nextElementSibling
      if (panel.style.display === 'block') {
        panel.style.display = 'none'
      } else {
        panel.style.display = 'block'
      }
    }
  }
}
</script>

<style scoped lang="scss">
@import "bulma/bulma.sass";
//Desktop CSS:
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  text-align: left;
  border: none;
  outline: none;
  transition: 0.4s;
  // min-width: 100%;
}
.panel {
  padding: 0 18px;
  background-color: white;
  display: none;
  overflow: hidden;
}
//Mobile CSS:
@include until ($desktop) {

  }
</style>
