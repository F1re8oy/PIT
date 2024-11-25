<template>
        <div class="min-h-screen bg-gray-50">
    <Navbar />
  
      <main class="py-12 px-6">
        <h1 class="text-4xl font-extrabold text-gray-800 text-center mb-10">Par mums</h1>
        <div class="max-w-4xl mx-auto">
          <section class="text-gray-700 text-lg mb-12">
            <p class="mb-6">
              Mēs esam veltījuši savu darbu, lai piedāvātu modernāko un interesantāko informāciju par mašīnām. Automobiļi ir
              daudz vairāk nekā tikai transportlīdzekļi – tie ir inovācijas, dizains un tehnoloģiju attīstības simbols.
            </p>
            <p class="mb-6">
              Šī mājaslapa ir izveidota, lai palīdzētu auto entuziastiem atrast informāciju par dažādiem zīmoliem, modeļiem un
              jaunākajiem atklājumiem automobiļu pasaulē. No klasikas līdz futūristiskiem elektromobiļiem – šeit ir kaut kas
              ikvienam.
            </p>
          </section>
  
          <section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
            <div class="rounded-lg overflow-hidden shadow-lg">
              <img
                src="https://media.ed.edmunds-media.com/bmw/x5/2023/oem/2023_bmw_x5_4dr-suv_m50i_fq_oem_2_1600.jpg"
                alt="Modern SUV"
                class="w-full h-48 object-cover"
              />
              <div class="p-4">
                <h3 class="text-xl font-semibold text-gray-800">Inovācija</h3>
                <p class="text-sm text-gray-600">
                  Tehnoloģiju attīstība, kas padara auto drošākus un gudrākus.
                </p>
              </div>
            </div>
            <div class="rounded-lg overflow-hidden shadow-lg">
              <img
                src="https://cdn.motor1.com/images/mgl/qWyz9/s1/bmw-m8-competition-coupe.jpg"
                alt="Luxury Sports Car"
                class="w-full h-48 object-cover"
              />
              <div class="p-4">
                <h3 class="text-xl font-semibold text-gray-800">Dizains</h3>
                <p class="text-sm text-gray-600">
                  Skaistums, ko var atrast katrā līnijā un katrā detaļā.
                </p>
              </div>
            </div>
            <div class="rounded-lg overflow-hidden shadow-lg">
              <img
                src="https://hips.hearstapps.com/hmg-prod/images/2024-tesla-model-y-1678378871.jpg"
                alt="Electric Vehicle"
                class="w-full h-48 object-cover"
              />
              <div class="p-4">
                <h3 class="text-xl font-semibold text-gray-800">Ilgtspēja</h3>
                <p class="text-sm text-gray-600">
                  Elektromobiļi un nākotnes ilgtspējīgas tehnoloģijas.
                </p>
              </div>
            </div>
          </section>
  
          <section class="text-center">
            <p class="text-lg text-gray-700 mb-6">
              Ienirstiet auto pasaulē un atrodiet to, kas jūs iedvesmo. Kopā mēs varam atklāt nākotni!
            </p>
            <button
              class="bg-blue-600 text-white font-semibold px-8 py-3 rounded-lg shadow-md hover:bg-blue-700 transition"
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