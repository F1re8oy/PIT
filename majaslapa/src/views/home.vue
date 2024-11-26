  <template>
    <div class="min-h-screen bg-gray-50">
      <Navbar />

      <main class="text-center py-12">
        <h1 class="text-4xl font-extrabold text-gray-800 mb-10">Kādu mašīnu meklējat?</h1>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 max-w-screen-lg mx-auto w-full">
          <div
            v-for="marka in markas"
            :key="marka.Marka"
            class="rounded-xl shadow-xl p-6 bg-white transform hover:scale-105 transition"
          >
            <h2 class="text-2xl font-bold text-gray-800">{{ marka.Marka }}</h2>
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
    data() {
      return {
        markas: [], // Array to store Marka data
      };
    },
    methods: {
      async fetchMarkas() {
        try {
          const response = await fetch("http://localhost:3000/api/markas");
          if (!response.ok) {
            throw new Error(`Error fetching data: ${response.statusText}`);
          }
          const data = await response.json();
          this.markas = data;
        } catch (error) {
          console.error("Error fetching markas:", error.message);
        }
      },
    },
    created() {
      this.fetchMarkas(); // Fetch data when the component is created
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
  