<template>
  <div class="min-h-screen bg-gray-50">
    <Navbar />
  <main class="text-center py-12">
    <h1 class="text-4xl font-extrabold text-gray-800 mb-10">Page is under construction...</h1>
    <img 
        src="https://media.giphy.com/media/MbsisgQQy2GX9y1cdU/giphy.gif" 
        alt="Under Construction" 
        class="mx-auto"
      />
  </main>
</div>
</template>

<script>
import Navbar from "../Components/Navbar.vue";

export default {
  name: "favorites",
  components: {
    Navbar,
  },
};
</script>

<style scoped>
.hover-effect {
  transition: filter 0.3s ease;
}

.hover-effect:hover {
  filter: brightness(0) invert(1);
}
</style>