<template>
  <div class="container">
    <h1 class="title">
      Frequently Asked Questions
    </h1>
    <div class="columns">
      <!-- Left column begin -->
      <div class="column is-half is-multiline">
        <!--  -->
        <p class="label">
          General
        </p>
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
        <p class="label">
          Logistics
        </p>
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
        <p class="label">
          Logistics 2
        </p>
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
@import url("https://fonts.googleapis.com/css?family=Caveat+Brush&display=swap");

.container {
    width: 90%;
    margin: 0 auto;
}
.title {
    text-align: center;
    font-family: "Caveat Brush";
    font-size: 48px;
    color: #425E96;
}
.label {
    font-family: "HK Grotesk Regular";
    color: #FF7676;
    font-size: 20px;
}
//Desktop CSS:
.accordion {
  background-color: #fff;
  color: #425E96;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  // transition: 0.3s;
  margin: 10px auto;
  text-align: left;
  outline: none;
  border: 1.3px solid #425E96;
  border-radius: 5px;
  font-size: 18px;
  font-family: "HK Grotesk Regular";
}
.accordion.active {
    border-bottom: none;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    margin-bottom: 0px;
}
.panel {
  padding: 18px;
  padding-top: 0;
  background-color: white;
  display: none;
  overflow: hidden;
  border: 1.3px solid #425E96;
  border-top: none;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
  margin: 0 auto;
  margin-bottom: 2%;
  width: 100%;
}
//Mobile CSS:
@include until ($desktop) {
  }
</style>
