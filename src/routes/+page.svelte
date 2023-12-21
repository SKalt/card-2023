<script lang="ts">
  import panorama from '$lib/assets/roof_panorama.jpg?enhanced'; 
</script>
<!-- <img src="{img}" alt="Panorama of a sunset from our roof in Philadelphia"> -->
<enhanced:img src="{panorama}" class="panorama" alt="Panorama of a sunset from our roof in Philadelphia"/>
<style>
  .panorama {
    height: 100%;
    max-height: 100vh;
  }
  :global(body) {
    margin: 0;
  }
</style>

<!-- TODO: click-and-drag -->
<!-- TODO: eliminate downward space in mobile -->
