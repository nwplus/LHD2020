<template>
  <div class="footert">
    <img src="~@/assets/gondola.svg" class="gondola">
    <div class="footer-wrapper">
      <div class="footer-content">
        <a href="https://www.facebook.com/nwplusubc/">
          <svg-icon name="fb" class="icon-animation" /></a>
        <a href="https://www.instagram.com/nwplusubc/">
          <svg-icon name="insta" class="icon-animation" /></a>
        <a href="https://medium.com/nwplusubc">
          <svg-icon name="medium" class="icon-animation" /></a>
        <a href="https://twitter.com/nwPlusubc">
          <svg-icon name="twitter" class="icon-animation" /></a>

        <p class="links">
          <a
            href="mailto:hello@nwplus.io"
          >Email Us</a>
          <a
            href="#"
          >Code of Conduct</a>
          <a
            href="#"
          >Become a Sponsor</a>
        </p>
        <p
          v-for="item in text"
          :key="item"
          class="line"
        >
          {{ item }}
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      default: 'Organized and held by nwPlus. Copyright © UBC Local Hack Day 2019'
    }
  },
  mounted() {
    this.text = this.text.split('.')
  }
}
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";
//Desktop CSS:
.footert {
  min-height: 68vw; // the bg image height is 80% its width
  background-image: url('~@/assets/footer.svg');
  background-size: 100vw;
  background-color: #f6edec;
  background-repeat: no-repeat;
  background-position: left bottom;
  padding-top: 32.25vw;
}
.footer-wrapper {
  position: absolute;
  bottom: 9vw;
  right: 50%;
}
.footer-content {
  position: relative;
  right: -50%;
  text-align: center;
  min-width: 90vw;
}
.gondola {
  animation: gondola-move 5s ease-in-out 0s infinite alternate;
  margin-left: 31vw;
  width: 7vw;
}
.links {
  margin: 15px;
}
.links a {
  color: #3C5587;
  margin: 20px;
  text-decoration: underline;
  transition-duration: .2s;
}

a:hover {
  color: white;
}

svg {
  height: 30px;
  width: 90px;
}

.icon-animation:hover {
    animation: pop-up 2s linear 0s 1;
    animation-fill-mode: forwards;
}

@keyframes gondola-move {
    0% {
        margin-left: 31vw;
    }
    100% {
        margin-left: 63vw;
    }
}

@keyframes pop-up {
    0% {
        transform: translateY(0);
    }
    25% {
        transform: translateY(-6px);
    }
    50% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(-8px);
    }
}
//Mobile CSS:
@include until ($desktop) {
    .links {
      margin: 7px;
    }
    .footer-wrapper {
      bottom: 6vw;
    }
  }
@include until ($tablet) {
  .footer-content {
    font-size: 12px;
  }
  .links a {
    margin: 10px;
  }
  svg {
    height: 26px;
    width: 60px;
  }
  .footert {
    padding-top: 61.3vw;
    min-height: 130vw; // the bg image height is 80% its width
    background-image: url('~@/assets/mobile-footer.svg');
  }
  .footer-wrapper {
    bottom: 10vw;
  }
  @keyframes gondola-move {
      0% {
          margin-left: 16vw;
      }
      100% {
          margin-left: 81vw;
      }
  }
}
</style>
