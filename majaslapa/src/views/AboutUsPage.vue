<template>
  <div class="min-h-screen bg-gradient-to-r from-indigo-100 via-purple-50 to-blue-100">
    <Navbar />
    <main class="py-12 px-6">
      <h1 class="text-5xl font-extrabold text-gray-800 text-center mb-12">
        Par Mums
      </h1>

      <div class="max-w-5xl mx-auto">
        <section class="bg-white rounded-2xl shadow-xl p-8 mb-12">
          <p class="text-lg text-gray-700 mb-6 leading-relaxed">
            Mēs esam veltījuši savu darbu, lai piedāvātu modernāko un
            interesantāko informāciju par mašīnām. Automobiļi ir daudz vairāk
            nekā tikai transportlīdzekļi – tie ir inovācijas, dizains un
            tehnoloģiju attīstības simbols.
          </p>
          <p class="text-lg text-gray-700 leading-relaxed">
            Šī mājaslapa ir izveidota, lai palīdzētu auto entuziastiem atrast
            informāciju par dažādiem zīmoliem, modeļiem un jaunākajiem
            atklājumiem automobiļu pasaulē. No klasikas līdz futūristiskiem
            elektromobiļiem – šeit ir kaut kas ikvienam.
          </p>
        </section>

        <section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
          <div
            class="bg-gradient-to-br from-indigo-500 to-purple-500 text-white rounded-2xl shadow-lg overflow-hidden hover:scale-105 transition-transform"
          >
            <img
              src="../styles/suv.png"
              alt="Modern SUV"
              class="w-full h-60 object-cover"
            />
            <div class="p-6">
              <h3 class="text-xl font-bold mb-2">Inovācija</h3>
              <p class="text-sm opacity-80">
                Tehnoloģiju attīstība, kas padara auto drošākus un gudrākus.
              </p>
            </div>
          </div>
          <div
            class="bg-gradient-to-br from-purple-500 to-pink-500 text-white rounded-2xl shadow-lg overflow-hidden hover:scale-105 transition-transform"
          >
            <img
              src="../styles/luxury.jpg"
              alt="Luxury Sports Car"
              class="w-full h-48 object-cover"
            />
            <div class="p-6">
              <h3 class="text-xl font-bold mb-2">Dizains</h3>
              <p class="text-sm opacity-80">
                Skaistums, ko var atrast katrā līnijā un katrā detaļā.
              </p>
            </div>
          </div>
          <div
            class="bg-gradient-to-br from-blue-500 to-green-500 text-white rounded-2xl shadow-lg overflow-hidden hover:scale-105 transition-transform"
          >
            <img
              src="../styles/electric.png"
              alt="Electric Vehicle"
              class="w-full h-48 object-cover"
            />
            <div class="p-6">
              <h3 class="text-xl font-bold mb-2">Ilgtspēja</h3>
              <p class="text-sm opacity-80">
                Elektromobiļi un nākotnes ilgtspējīgas tehnoloģijas.
              </p>
            </div>
          </div>
        </section>

        <section class="bg-white rounded-2xl shadow-xl p-8 text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800 mb-6">
            Šie cilvēki izstrādāja šo projektu
          </h2>
          <ul class="space-y-4 text-lg text-gray-700">
            <li>
              <span class="font-semibold">Kristians Lauva</span> - 221RDB507
            </li>
            <li>
              <span class="font-semibold">Kristaps Adamovičs</span> - 221RDB013
            </li>
            <li>
              <span class="font-semibold">Markuss Ukstiņš</span> - 221RDB046
            </li>
            <li>
              <span class="font-semibold">Rinalds Upmalis</span> - 221RDB116
            </li>
          </ul>
        </section>

        <section class="text-center">
          <p class="text-lg text-gray-700 mb-6">
            Ienirstiet auto pasaulē un atrodiet to, kas jūs iedvesmo. Kopā mēs
            varam atklāt nākotni!
          </p>
          <button
            class="bg-gradient-to-r from-blue-600 to-indigo-600 text-white font-semibold px-8 py-3 rounded-full shadow-md hover:scale-105 hover:shadow-lg transition-transform"
            @click="goToHome"
          >
            Sākt Pētīt
          </button>
        </section>
      </div>
    </main>
  </div>
</template>

<script>
import Navbar from "../Components/Navbar.vue";

export default {
  name: "AboutUsPage",
  components: {
    Navbar,
  },
  methods: {
    goToHome() {
      this.$router.push({ path: "/" });
    },
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

.transition-transform {
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.bg-gradient-to-br {
  background: linear-gradient(to bottom right, var(--tw-gradient-from), var(--tw-gradient-to));
}
</style>
