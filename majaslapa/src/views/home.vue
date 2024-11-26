<template>
  <div class="min-h-screen bg-gradient-to-r from-indigo-100 via-purple-50 to-blue-100">
    <Navbar />

    <main class="text-center py-12">
      <h1 class="text-5xl font-extrabold text-gray-800 mb-12">
        Kādu mašīnu meklējat?
      </h1>

      <div
        class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8 max-w-screen-lg mx-auto w-full"
      >
        <div
          v-for="marka in markas"
          :key="marka.Marka"
          class="bg-white rounded-2xl shadow-lg overflow-hidden transform hover:scale-105 hover:shadow-xl transition duration-300 cursor-pointer"
          @click="goToDetail(marka.Marka)"
        >
          <img
            :src="getImageForMarka(marka.Marka)"
            :alt="marka.Marka"
            class="w-full h-60 object-cover"
          />
          <div class="p-6 text-center">
            <h2 class="text-2xl font-bold text-gray-800">
              {{ marka.Marka }}
            </h2>
          </div>
        </div>
      </div>

      <div class="mt-12">
        <button
          class="bg-gradient-to-l from-blue-600 to-indigo-600 text-white font-semibold px-8 py-3 rounded-full shadow-md hover:scale-105 hover:shadow-lg transition-transform"
        >
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
      markas: [],
      markaImages: {
        BMW: "https://cdn.motor1.com/images/mgl/1ZQrxK/s3/2023-bmw-m3-cs-first-drive-review.jpg",
        "Mercedes-Benz":
          "https://hips.hearstapps.com/hmg-prod/images/2023-mercedes-amg-c63-s-e-performance-109-65d79697e865a.jpg?crop=0.587xw:0.659xh;0.119xw,0.261xh&resize=768:*",
        AUDI: "https://www.topgear.com/sites/default/files/2023/09/33136-RS7PERFORMANCEASCARIBLUEJORDANBUTTERS208.jpg?w=892&h=502",
      },
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
    getImageForMarka(marka) {
      return this.markaImages[marka] || "https://via.placeholder.com/300";
    },
    goToDetail(marka) {
      this.$router.push({ name: "CarDetail", params: { marka } });
    },
  },
  created() {
    this.fetchMarkas();
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

.hover\:shadow-xl:hover {
  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
}

.transition-transform {
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}
</style>
