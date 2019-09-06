<template>
  <nav>
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <a href="https://localhackday.mlh.io/">
        <img
          id="MLH-badge"
          class="navbar-item"
          src="~@/assets/MLHbadge.svg"
          alt="mlh badge"
        >
      </a>
      <div id="navbar" class="navbar-menu">
        <div class="navbar-start" />
        <div class="navbar-end">
          <div class="buttons">
            <a v-scroll-to="'#about'" href="#" class="navbar-item">About</a>
            <a v-scroll-to="'#faq'" href="#" class="navbar-item">FAQ</a>
            <a v-scroll-to="'#sponsors'" href="#" class="navbar-item">Sponsors</a>
            <a href="http://lhd2019.nwplus.io/" class="navbar-item">2018</a>
          </div>
          <a v-scroll-to="'#navbar'" href="#">
            <img
              id="navbar-logo"
              class="navbar-item"
              src="~@/assets/NwPluslogo.svg"
              alt="nwPlus logo"
            >
          </a>
        </div>
      </div>
    </nav>
  </nav>
</template>

<script>
export default {}
</script>

<style lang="scss" scoped>
@import "bulma/bulma.sass";

.navbar {
  background: none;
  position:absolute;
  top: 0%;
  width: 100%;
  padding: 0;
}
.navbar-item {
    display: inline-block;
    text-decoration: none;
    font-size: 18px;
    padding: 0px 32px;
    color: #425E96
}
.navbar-item::after {
    content: '';
    display: block;
    width: 0;
    height: 2px;
    background: #425E96;
    transition: width .3s;
}
.navbar-item:hover::after {
    width: 100%;
}
a.navbar-item:hover,
a.navbar-item:focus,
a.navbar-item:focus-within {
  background: none;
}
.buttons {
  margin-right: 78px;
}
#MLH-badge {
  max-height: none;
  height: 120px;
  width: auto;
  top: 0%;
}
#navbar-logo {
  max-height: none;
  height: 35px;
  width: auto;
  box-sizing: border-box;
  padding: 2px 0 0 0;
  right: 100%;
  top: 20%;
}
.a {
  font-size: 24px;
}
.is-active .buttons {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-right: 0;
}
.is-active .buttons .navbar-item {
  color: #4d5682;
}

@include until ($desktop) {
  #MLH-badge {
    height: 100px;
  }
  #navbar-logo {
    height: 30px;
  }
}
</style>
