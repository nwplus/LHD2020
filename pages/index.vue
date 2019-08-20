<template>
  <div style="position: relative; width: 100%;">
    <NavBar />
    <section class="mainSection">
      <div class="mainContent">
        <h1 id="nwtitle">
          <br>
          UBC nwPlus
          <h2 id="nwsubtitle">
            Connect, build, discover
          </h2>
        </h1>
        <Intro id="intro" :text="intro" :sub="introSub" />
        <WhyJoin id="whyJoin" />
        <Events id="events" :items="events" />
        <Outro id="contact" :text="outro" />
        <FAQ :items="FAQs" />
        <Sponsors v-if="sponsorFlag" :items="Sponsors" />
      </div>
    </section>
    <Footer :text="footer" />
    <div class="backgroundBottom" />
  </div>
</template>

<script>
import NavBar from '~/components/NavBar.vue'
import Sponsors from '~/components/Sponsors.vue'
import WhyJoin from '~/components/WhyJoin.vue'
import Outro from '~/components/Outro.vue'
import Footer from '~/components/Footer.vue'
import fireDb from '~/plugins/firebase.js'
import Events from '~/components/Events.vue'
import Intro from '~/components/Intro.vue'
import FAQ from '~/components/Faq.vue'
export default {
  components: {
    NavBar,
    WhyJoin,
    Outro,
    Footer,
    Sponsors,
    Events,
    Intro,
    FAQ
  },
  asyncData: async () => {
    const Sponsors = 'Sponsors'
    const Events = 'Events'
    const FAQ = 'Faq'
    // functions
    const getSponsorImage = async (sponsor) => {
      sponsor.imageURL = await fireDb.getImageUrl(sponsor.image)
      return sponsor
    }
    // data
    const data = await fireDb.get()
    const listOfSponsors = await fireDb.get(Sponsors)
    const listOfEvents = await fireDb.get(Events)
    const FaqQuestions = await fireDb.get(FAQ)
    // Populate sponsors with their image urls
    const populatedSponsors = await Promise.all(
      listOfSponsors.map(sponsor => getSponsorImage(sponsor))
    )
    return {
      info: data.WelcomeText,
      Sponsors: populatedSponsors,
      outro: data.OutroText,
      footer: data.FooterText,
      events: listOfEvents,
      intro: data.IntroText,
      introSub: data.IntroSubtext,
      FAQs: FaqQuestions,
      ...data.featureFlags
    }
  }
}
</script>

<style lang="scss">
@import "bulma/bulma.sass";
//Desktop CSS:
@font-face {
  font-family: "Apercu Pro";
  src: url("../assets/fonts/apercu_regular_pro.otf") format("opentype");
}
$sub_font: Apercu Pro, sans-serif;

//Mobile CSS:
@include until ($desktop) {

  }
</style>
