<template>
  <div class="relative bg-dirty-white-pattern shadow-lg">
    <nav class="flex justify-between items-center px-6 py-4 relative z-10">
      <div class="flex space-x-6">
        <button
          class="flex items-center px-5 py-2 rounded-full bg-white text-red-600 font-bold shadow-md hover:bg-red-100 hover:scale-105 transition-transform"
          @click="goToHome"
        >
          🎄 <span>Marka</span>
        </button>
        <button
          class="flex items-center px-5 py-2 rounded-full bg-white text-green-600 font-bold shadow-md hover:bg-green-100 hover:scale-105 transition-transform"
          @click="goToFavorites"
        >
          ⭐ Mani favorīti
        </button>
        <button
          class="flex items-center px-5 py-2 rounded-full bg-white text-yellow-600 font-bold shadow-md hover:bg-yellow-100 hover:scale-105 transition-transform"
          @click="goToAboutUs"
        >
          🎁 Par mums
        </button>
      </div>

      <div class="flex items-center space-x-6">
        <span v-if="state.email" class="text-red-600 font-medium text-lg hoho-text">
          Ho Ho Ho, {{ state.email }}!
        </span>
        <button
          class="w-10 h-10 flex items-center justify-center rounded-full bg-white hover:scale-110 transition-transform"
        >
          <img
            src="../styles/santa-hat.png"
            alt="Santa Hat Icon"
            class="w-6 h-6"
          />
        </button>
        <button
          v-if="!state.email"
          class="flex items-center px-5 py-2 rounded-full bg-white text-red-600 font-bold shadow-md hover:bg-red-100 hover:scale-105 transition-transform"
          @click="goToLogin"
        >
          🎅 Pieslēgties
        </button>
      </div>
    </nav>
  </div>
</template>

<script>
import { state } from "../views/Login.vue";
console.log(state.email)
export default {
  name: "Navbar",
  computed: {
    state() {
      return state;
    },
  },
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
<style>
.bg-dirty-white-pattern {
  background: #f5f5f5;
  background-size: cover;
}

.hoho-text {
  color: #ff0000;
  font-weight: bold;
}

.bg-ice-blue-pattern {
  background: #f5f5f5;
  background-size: cover;
}
</style>