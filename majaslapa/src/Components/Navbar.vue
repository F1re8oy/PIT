<template>
    <nav class="flex justify-between items-center p-4 bg-white shadow-lg">
      <div class="flex space-x-4">
        <button
          class="bg-gray-300 text-gray-800 px-5 py-2 rounded-lg hover:bg-gray-500 transition"
          @click="goToHome"
        >
          Marka
        </button>
        <button
          class="bg-gray-300 text-gray-800 px-5 py-2 rounded-lg hover:bg-gray-500 transition"
          @click="goToFavorites"
        >
          Mani favorīti
        </button>
        <button
          class="bg-gray-300 text-gray-800 px-5 py-2 rounded-lg hover:bg-gray-500 transition"
          @click="goToAboutUs"
        >
          Par mums
        </button>
      </div>
      <div class="flex items-center space-x-4">
        <button class="btn btn-outline btn-circle object-cover">
          <img
            src="../styles/user.svg"
            alt="User Icon"
            class="w-6 h-6 hover-effect"
          />
        </button>
        <button
          class="bg-gray-300 text-gray-800 px-5 py-2 rounded-lg hover:bg-gray-500 transition"
          @click="goToLogin"
        >
          Pieslēgties
        </button>
      </div>
    </nav>
  </template>
  
  <script>
  export default {
    name: "Navbar",
    methods: {
      goToHome() {
        this.$router.push("/");
      },
      goToFavorites() {
        this.$router.push("/views/favorites");
      },
      goToAboutUs() {
        this.$router.push("/views/AboutUsPage");
      },
      goToLogin() {
        this.$router.push("/views/login");
      },
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
  