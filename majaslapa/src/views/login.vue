<template>
  <div class="min-h-screen flex items-center justify-center bg-gray-200">
    <div class="bg-white p-8 rounded shadow-lg w-96">
      <h2 class="text-2xl font-bold mb-4 text-center">Login</h2>
      <form @submit.prevent="login">
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Email</label>
          <input
            v-model="email"
            type="email"
            class="mt-1 block w-full border border-gray-300 rounded p-2"
            placeholder="Enter your email"
          />
        </div>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Password</label>
          <input
            v-model="password"
            type="password"
            class="mt-1 block w-full border border-gray-300 rounded p-2"
            placeholder="Enter your password"
          />
        </div>
        <button
          type="submit"
          class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600"
        >
          Login
        </button>
      </form>
    </div>
  </div>
</template>

<script>
import { ref, reactive } from "vue";
import { useRouter } from "vue-router";

const state = reactive({
  email: sessionStorage.getItem("email") || null, // Load email from sessionStorage if it exists
});

export default {
  name: "Login",
  setup() {
    const router = useRouter();
    const email = ref("");
    const password = ref("");

    const login = () => {
      // Simulate login
      state.email = email.value;
      sessionStorage.setItem("email", email.value);
      alert("Login successful!");
      router.push("/");
    };

    return {
      email,
      password,
      login,
    };
  },
};

export { state };
</script>
