<script lang="ts">
  import panorama from "$lib/assets/roof_panorama.jpg?enhanced";
  import cats from "$lib/assets/cats.jpg?enhanced";
  import wedding from "$lib/assets/wedding-2.jpg?enhanced";
</script>

<section id="intro">
  <h1>Happy holidays! 2023 was an eventful year.</h1>
  <a href="#wedding">↓</a>
</section>
<section id="wedding">
  <h2>We got married</h2>
  <enhanced:img
    src={wedding}
    class="wedding"
    alt="A photo of us at our wedding"
    sizes="(min-width: 600px) 1200px, (min-width: 960px) 1920px, (min-width: 1280px) 2560px, (min-width: 1920px) 100wv"
  />
</section>
<section id="move">
  <h2>We moved to Philadelphia →</h2>
  <enhanced:img
    src={panorama}
    class="panorama"
    alt="Panorama of a sunset from our roof in Philadelphia"
  />
</section>
<section id="cats">
  <h2>But most importantly, we took over 2 gigabytes of cat photos and videos!</h2>
  <h3>
    <a href="https://photos.app.goo.gl/ZqmLBvfQyHMgNqvg8" target="cats"
      >(Here's an album of the better ones)</a
    >
  </h3>
  <enhanced:img
    src={cats}
    class="cats"
    alt="A collage of cat photos"
    sizes="(min-width: 600px) 1200px, (min-width: 960px) 1920px, (min-width: 1280px) 2560px, (min-width: 1920px) 100wv"
  />
</section>

<style>
  section {
    position: relative;
    height: 100vh;
    display: flex;
    overflow: hidden;
  }
  #intro {
    height: 100vh;
    margin: 1rem;
    justify-content: center;
    align-items: center;
  }
  #intro a {
    position: absolute;
    font-size: xx-large;
    bottom: 5rem;
    text-decoration: none;
  }
  section h1 {
    font-size: xx-large;
    text-align: center;
  }
  section h2,
  section h3 {
    position: absolute;
    top: 0;
    background: #fff;
    padding: 1rem;
  }
  section h3 {
    top: 5rem;
  }

  .wedding {
    max-width: 100vw;
    min-height: 100vh;
    object-fit: cover;
    object-position: 50% 50%;
    width: auto;
    height: 100vh;
  }
  @media (min-width: 1080px) {
    .wedding {
      width: 100%;
      height: auto;
    }
  }
  @media (min-width: 1600px) {
    .wedding {
      object-position: bottom;
      object-fit: none;
    }
  }

  .cats {
    width: 100vw;
    height: auto;
    object-fit: scale-down;
    object-position: bottom;
    overflow: hidden;
  }
  @media (max-width: 960px) {
    .cats {
      width: auto;
      height: 100vh;
      object-fit: cover;
    }
  }
  /* @media (min-width: 1280px) {
    .cats {
      width: calc(100vw + 25%);
      margin-top: -25%;
    }
  } */
  #move {
    /* div.panorama-container { */
    height: 100vh;
    width: 100vw;
    overflow-x: scroll;
    overflow-y: hidden;
    object-fit: none;
    /* always display the scrollbar */
    scrollbar-width: auto;
  }
  .panorama {
    height: 100vh;
    width: auto;
    object-fit: fill;
  }
  :global(body) {
    margin: 0;
  }
</style>
