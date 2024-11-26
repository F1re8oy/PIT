<template>
  <div class="min-h-screen flex items-center justify-center bg-gradient-to-b from-green-200 to-red-200 overflow-hidden relative">

    <div class="snowflakes">
      <div class="snowflake">❄️</div>
      <div class="snowflake">❅</div>
      <div class="snowflake">❆</div>
      <div class="snowflake">❄️</div>
      <div class="snowflake">❅</div>
      <div class="snowflake">❆</div>
      <div class="snowflake">❄️</div>
      <div class="snowflake">❅</div>
      <div class="snowflake">❆</div>
    </div>

    <div class="bg-white p-8 rounded shadow-lg w-96 border border-green-400 relative z-10">
      <div class="absolute -top-8 -left-8 w-20 h-20 bg-red-400 rounded-full flex items-center justify-center">
        🎄
      </div>
      <div class="absolute -top-8 -right-8 w-20 h-20 bg-green-400 rounded-full flex items-center justify-center">
        🎁
      </div>

      <h2 class="text-3xl font-bold mb-4 text-center text-green-700 font-christmas">🎅 Login 🎁</h2>

      <form @submit.prevent="login">
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Email</label>
          <input
            v-model="email"
            type="email"
            class="mt-1 block w-full border border-red-300 rounded p-2 focus:ring-red-400"
            placeholder="e.g., santa@northpole.com"
            required
          />
        </div>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Password</label>
          <input
            v-model="password"
            type="password"
            class="mt-1 block w-full border border-green-300 rounded p-2 focus:ring-green-400"
            placeholder="Enter your password"
            required
          />
        </div>
        <button
          type="submit"
          class="w-full bg-red-500 text-white py-2 rounded hover:bg-red-600 transition duration-300 font-bold shadow-md"
        >
          🎁 Login 🎄
        </button>
      </form>
    </div>

    <div v-if="showModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-20">
      <div class="bg-white p-6 rounded shadow-lg text-center w-80">
        <h3 class="text-2xl font-bold text-green-600 mb-4">🎉 Login Successful! 🎉</h3>
        <p class="text-gray-700 mb-6">Welcome, <span class="text-red-500 font-semibold">{{ email }}</span>!</p>
        <button
          @click="closeModal"
          class="bg-green-500 text-white py-2 px-4 rounded hover:bg-green-600 transition duration-300"
        >
          Close
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import { ref, reactive } from "vue";
import { useRouter } from "vue-router";

const state = reactive({
  email: sessionStorage.getItem("email") || null,
});

export default {
  name: "Login",
  setup() {
    const router = useRouter();
    const email = ref("");
    const password = ref("");
    const showModal = ref(false);

    const login = () => {
      state.email = email.value;
      sessionStorage.setItem("email", email.value);
      showModal.value = true;
    };

    const closeModal = () => {
      showModal.value = false;
      router.push("/");
    };

    return {
      email,
      password,
      showModal,
      login,
      closeModal,
    };
  },
};

export { state };
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Mountains+of+Christmas:wght@400;700&display=swap');

.font-christmas {
  font-family: 'Mountains of Christmas', cursive;
}

.snowflakes {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
  pointer-events: none;
}

.snowflake {
  position: absolute;
  top: -10%;
  left: 0;
  font-size: 1.5rem;
  opacity: 0.8;
  animation: snowfall 8s linear infinite;
}

.snowflake:nth-child(2) {
  left: 10%;
  animation-duration: 6s;
  font-size: 2rem;
}

.snowflake:nth-child(3) {
  left: 20%;
  animation-duration: 7s;
  font-size: 1.2rem;
}

.snowflake:nth-child(4) {
  left: 30%;
  animation-duration: 5s;
  font-size: 1.8rem;
}

.snowflake:nth-child(5) {
  left: 40%;
  animation-duration: 9s;
  font-size: 1.6rem;
}

.snowflake:nth-child(6) {
  left: 50%;
  animation-duration: 8s;
  font-size: 2.2rem;
}

.snowflake:nth-child(7) {
  left: 60%;
  animation-duration: 7.5s;
  font-size: 1.4rem;
}

.snowflake:nth-child(8) {
  left: 70%;
  animation-duration: 6.5s;
  font-size: 1.9rem;
}

.snowflake:nth-child(9) {
  left: 80%;
  animation-duration: 10s;
  font-size: 1.3rem;
}

@keyframes snowfall {
  0% {
    transform: translateY(0) rotate(0deg);
  }
  100% {
    transform: translateY(100vh) rotate(360deg);
  }
}
</style>
