<template>
  <div class="min-h-screen flex items-center justify-center bg-gray-200">
    <div class="bg-white p-8 rounded shadow-lg w-96">
      <h2 class="text-2xl font-bold mb-4 text-center">Login</h2>
      <form>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Email</label>
          <input
            type="email"
            class="mt-1 block w-full border border-gray-300 rounded p-2"
            placeholder="Enter your email"
          />
        </div>
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700">Password</label>
          <input
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
export default {
  name: "Login",
};
</script>
