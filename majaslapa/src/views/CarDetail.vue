<template>
    <div class="min-h-screen bg-gradient-to-r from-indigo-100 via-purple-50 to-blue-100">
      <Navbar />
      <main class="max-w-screen-lg mx-auto py-12">
        <h1 class="text-5xl font-extrabold text-gray-800 mb-12 text-center">
          {{ marka }}
        </h1>
  
        <div
          v-if="carDetails"
          class="bg-white rounded-2xl shadow-lg p-8 flex flex-col lg:flex-row gap-8"
        >
          <div class="w-full lg:w-1/3">
            <img
              :src="getImageForMarka(marka)"
              :alt="marka"
              class="rounded-2xl w-full h-80 object-cover"
            />
          </div>
  
          <div class="w-full lg:w-2/3 text-gray-800">
            <p class="text-lg mb-4">
              <span class="font-bold">Description:</span> {{ carDetails.Apraksts }}
            </p>
            <p class="text-lg mb-4">
              <span class="font-bold">Founder(s):</span> {{ carDetails.Dibinatajs }}
            </p>
            <p class="text-lg mb-4">
              <span class="font-bold">Founded:</span> {{ carDetails.Dibinasanas_gads }}
            </p>
            <button
              class="mt-6 bg-gradient-to-l from-blue-600 to-indigo-600 text-white font-semibold px-8 py-3 rounded-full shadow-md hover:scale-105 hover:shadow-lg transition-transform"
              @click="goToMarks"
            >
              See Specific Marks
            </button>
          </div>
        </div>
  
        <div v-else class="text-center text-gray-600 mt-12">
          <p class="text-lg">Couldn't find car details...</p>
        </div>
      </main>
    </div>
  </template>
  
  <script>
  import Navbar from "../Components/Navbar.vue";
  
  export default {
    name: "CarDetail",
    components: {
      Navbar,
    },
    props: {
      marka: String,
    },
    data() {
      return {
        carDetails: null,
        markaImages: {
          BMW: "https://cdn.motor1.com/images/mgl/1ZQrxK/s3/2023-bmw-m3-cs-first-drive-review.jpg",
          AUDI: "https://www.topgear.com/sites/default/files/2023/09/33136-RS7PERFORMANCEASCARIBLUEJORDANBUTTERS208.jpg?w=892&h=502",
          "Mercedes-Benz":
            "https://hips.hearstapps.com/hmg-prod/images/2023-mercedes-amg-c63-s-e-performance-109-65d79697e865a.jpg?crop=0.587xw:0.659xh;0.119xw,0.261xh&resize=768:*",
        },
      };
    },
    methods: {
      async fetchCarDetails() {
        try {
          const response = await fetch("http://localhost:3000/api/apraksts");
          if (!response.ok) {
            throw new Error(`Error fetching data: ${response.statusText}`);
          }
          const data = await response.json();
          this.carDetails = data.find(
            (car) => car.Marka.toLowerCase() === this.marka.toLowerCase()
          );
        } catch (error) {
          console.error("Error fetching car details:", error.message);
        }
      },
      getImageForMarka(marka) {
        return this.markaImages[marka] || "https://via.placeholder.com/300";
      },
      goToMarks() {
        this.$router.push({ name: "CarMark", params: { marka: this.marka } });
      },
    },
    created() {
      this.fetchCarDetails();
    },
  };
  </script>
  
  <style scoped>
  .bg-gradient-to-r {
    background: linear-gradient(to right, #eef2f3, #8e9eab);
  }
  .bg-gradient-to-l {
    background: linear-gradient(to left, #cecfcf, #8e9eab);
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
  
  .hover\:shadow-lg:hover {
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
  }
  
  .transition-transform {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }
  </style>
  