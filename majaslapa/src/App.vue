<template>
 <div class="min-h-screen bg-gray-100 shadow-xl">
  <!-- navigācijas josla -->
  <nav class="flex justify-between items-center p-4 bg-white shadow">
    <div class="flex space-x-4">
      <button class="btn btn-outline">Marka</button>
      <button class="btn btn-outline">Mani favorīti</button>
      <button class="btn btn-outline">Par mums</button>
    </div>
    <div class="flex space-x-2">
      <button class="btn btn-outline">
        <img src="https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg" class="w-10 h-10 object-cover"></img>
      </button>
      <a href="login.vue" class="btn btn-primary">Pieslēgties</a>
    </div>
  </nav>

  <!-- galvenā sadaļa -->
  <main class="text-center py-8">
    <h1 class="text-2xl font-bold mb-6">Kādu mašīnu meklējat?</h1>
    <div class="grid grid-cols-3 gap-4 max-w-4xl mx-auto">
      <div class="rounded overflow-hidden shadow-lg">
        <img src="https://www.bmw-me.com/content/dam/bmw/common/all-models/m-series/series-overview/bmw-m-series-seo-overview-ms-02.jpg/jcr:content/renditions/cq5dam.resized.img.890.medium.time1628247931789.jpg" alt="Mašīna 1" class="w-64 h-48 object-cover" />
      </div>
      <div class="rounded overflow-hidden shadow-lg">
        <img src="https://hips.hearstapps.com/hmg-prod/images/2023-mercedes-amg-c63-s-e-performance-109-65d79697e865a.jpg?crop=0.587xw:0.659xh;0.119xw,0.261xh&resize=768:*" alt="Mašīna 2" class="w-64 h-48 object-cover" />
      </div>
      <div class="rounded overflow-hidden shadow-lg relative text-right">
        
        <img src="https://www.topgear.com/sites/default/files/2023/09/33136-RS7PERFORMANCEASCARIBLUEJORDANBUTTERS208.jpg?w=892&h=502" alt="Mašīna 3" class="w-64 h-48 object-cover" />
      </div>
          <button class="btn btn-info btn-primary">Show all</button>
      </div>
  </main>
</div>



</template>

