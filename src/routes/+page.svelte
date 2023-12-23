<script lang="ts">
  import panorama from "$lib/assets/roof_panorama.jpg?enhanced";
  import cats from "$lib/assets/cats-3.jpg?enhanced";
  import wedding from "$lib/assets/wedding-2.jpg?enhanced";
</script>

<section id="intro-1" class="page">
  <h1>Happy holidays!</h1>
  <a class="next" href="#intro-2">↓</a>
</section>
<section id="intro-2" class="page">
  <h1>2023 was an eventful year.</h1>
  <a class="next" href="#wedding">↓</a>
</section>
<section id="wedding">
  <h2>We got married</h2>
  <enhanced:img
    src={wedding}
    class="wedding"
    alt="A photo of us at our wedding"
    sizes="(min-width: 600px) 1200px, (min-width: 960px) 1920px, (min-width: 1280px) 2560px, (min-width: 1920px) 100wv"
  />
  <a class="next" href="#move">↓</a>
</section>
<section id="move">
  <h2>We moved to Philadelphia →</h2>
  <enhanced:img
    src={panorama}
    class="panorama"
    alt="Panorama of a sunset from our roof in Philadelphia"
  />
  <a class="next" href="#conclusion">↓</a>
</section>
<section id="conclusion" class="page">
  <h1>But most importantly...</h1>
  <a class="next" href="#cats">↓</a>
</section>
<section id="cats">
  <h2>We took over 2 gigabytes of cat photos and videos!</h2>
  <h3>
    <a href="https://photos.app.goo.gl/ZqmLBvfQyHMgNqvg8" target="cats"
      >(Here's an album of the better ones)</a
    >
  </h3>
  <enhanced:img
    src={cats}
    class="cats"
    alt="Our cats sitting in our new library"
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
  .page {
    justify-content: center;
    align-items: center;
  }
  section > a.next {
    position: absolute;
    font-size: xx-large;
    bottom: 5rem;
    left: calc(50% - 1rem);
    text-decoration: none;
    background-color: rgba(255, 255, 255, 0.5);
    height: 3rem;
    width: 3rem;
    display: inline-block;
    border-radius: 100%;
    padding-top: 0.5rem;
    padding-left: 0.5rem;
    padding-right: 0.5rem;
    text-align: center;
    vertical-align: bottom;
    /* padding: 0.25rem 1.1rem; */
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
  #move {
    overflow-x: scroll;
    height: 100vh;
    width: 100vw;
  }
  .panorama {
    height: 100vh;
    width: auto;
    object-fit: fill;
  }
  #cats {
    overflow-y: scroll;
  }
  @media (max-width: 780px) {
    .cats {
      width: auto;
      height: 100vh;
      object-fit: cover;
      margin-left: -200px;
    }
  }
  @media (min-width: 780px) and (max-width: 1280px) {
    .cats {
      width: 100vw;
      height: auto;
      object-fit: contain;
    }
  }
  @media (min-width: 1280px) {
    .cats {
      margin-top: -20%;
      width: 100%;
      height: auto;
      object-fit: contain;
    }
  }
  :global(body) {
    margin: 0;
  }
</style>
