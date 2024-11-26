<template>
    <div class="min-h-screen bg-gradient-to-r from-indigo-100 via-purple-50 to-blue-100">
      <Navbar />
      <main class="max-w-screen-lg mx-auto py-12">
        <h1 class="text-5xl font-extrabold text-gray-800 mb-12 text-center">
          {{ marka }} Models
        </h1>
  
        <div v-if="models.length" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          <div
            v-for="model in models"
            :key="model.Nosaukums"
            class="bg-white rounded-2xl shadow-lg overflow-hidden transform hover:scale-105 hover:shadow-xl transition duration-300"
          >
            <div class="p-6">
              <h2 class="text-2xl font-bold text-gray-800 mb-2">{{ model.Modelis }}</h2>
              <p class="text-lg text-gray-600">{{ model.Nosaukums }}</p>
            </div>
          </div>
        </div>
  
        <p v-else class="text-gray-600 text-center text-lg mt-12 animate-pulse">
          Couldn't find car details...
        </p>
      </main>
    </div>
  </template>
  
  <script>
  import Navbar from "../Components/Navbar.vue";
  
  export default {
    name: "CarMark",
    components: {
      Navbar,
    },
    props: {
      marka: String,
    },
    data() {
      return {
        models: [],
        markaMap: {
          BMW: 1,
          AUDI: 2,
          "Mercedes-Benz": 3,
        },
      };
    },
    methods: {
      async fetchMarks() {
        try {
          const markaId = this.markaMap[this.marka];
          if (!markaId) {
            console.error("Invalid marka ID");
            return;
          }
          const response = await fetch("http://localhost:3000/api/modelis");
          if (!response.ok) {
            throw new Error(`Error fetching data: ${response.statusText}`);
          }
          const data = await response.json();
          this.models = data.filter((model) => model.ID_markas === markaId);
        } catch (error) {
          console.error("Error fetching marks:", error.message);
        }
      },
    },
    created() {
      this.fetchMarks();
    },
  };
  </script>
  
  <style scoped>
  .bg-gradient-to-r {
    background: linear-gradient(to right, #eef2f3, #8e9eab);
  }
  
  .rounded-2xl {
    border-radius: 1.5rem;
  }
  
  .shadow-lg {
    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
  }
  
  .hover\:scale-105:hover {
    transform: scale(1.05);
  }
  
  .hover\:shadow-xl:hover {
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
  }
  
  .transition {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }
  
  .animate-pulse {
    animation: pulse 1.5s infinite;
  }
  
  @keyframes pulse {
    0%, 100% {
      opacity: 1;
    }
    50% {
      opacity: 0.5;
    }
  }
  </style>
  