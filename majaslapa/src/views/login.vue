<template>
  <div class="min-h-screen bg-gray-100 flex items-center justify-center">
  <div class="bg-white p-6 rounded shadow-md max-w-sm w-full">
    <h2 class="text-xl font-bold mb-4">Pieslēgties</h2>
    <form>
      <div class="form-control mb-4">
        <label class="label">
          <span class="label-text">E-pasts</span>
        </label>
        <input
          type="email"
          placeholder="Ievadi savu e-pastu"
          class="input input-bordered"
        />
      </div>
      <div class="form-control mb-4">
        <label class="label">
          <span class="label-text">Parole</span>
        </label>
        <input
          type="password"
          placeholder="Ievadi savu paroli"
          class="input input-bordered"
        />
      </div>
      <button type="submit" class="btn btn-block btn-primary">Ienākt</button>
    </form>
    <a href="#" class="link mt-4 inline-block text-sm">Aizmirsu paroli?</a>
  </div>
</div>

</template>