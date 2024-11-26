<template>
    <div class="min-h-screen bg-gray-50">
      <Navbar />
      
      <main class="text-center py-12">
        <h1 class="text-4xl font-extrabold text-gray-800 mb-10">Kādu mašīnu meklējat?</h1>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 max-w-screen-lg mx-auto w-full">
          <div class="rounded-xl overflow-hidden shadow-xl transform hover:scale-105 transition">
            <img
              src="https://www.bmw-me.com/content/dam/bmw/common/all-models/m-series/series-overview/bmw-m-series-seo-overview-ms-02.jpg/jcr:content/renditions/cq5dam.resized.img.890.medium.time1628247931789.jpg"
              alt="BMW"
              class="w-full h-[300px] object-cover"
            />
          </div>
          <div class="rounded-xl overflow-hidden shadow-xl transform hover:scale-105 transition">
            <img
              src="https://hips.hearstapps.com/hmg-prod/images/2023-mercedes-amg-c63-s-e-performance-109-65d79697e865a.jpg?crop=0.587xw:0.659xh;0.119xw,0.261xh&resize=768:*"
              alt="Mercedes"
              class="w-full h-[300px] object-cover"
            />
          </div>
          <div class="rounded-xl overflow-hidden shadow-xl transform hover:scale-105 transition">
            <img
              src="https://www.topgear.com/sites/default/files/2023/09/33136-RS7PERFORMANCEASCARIBLUEJORDANBUTTERS208.jpg?w=892&h=502"
              alt="Audi"
              class="w-full h-[300px] object-cover"
            />
          </div>
        </div>
        <div class="mt-10">
          <button class="bg-blue-600 text-white font-semibold px-8 py-3 rounded-lg shadow-md hover:bg-blue-700 transition">
            Show All
          </button>
        </div>
      </main>
    </div>
  </template>
  
  <script>
  import Navbar from "../Components/Navbar.vue";
  
  export default {
    name: "Home",
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
  
  .hover\:opacity-70:hover {
    opacity: 0.7;
  }
  </style>
  