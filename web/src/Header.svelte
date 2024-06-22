<script>
  import line from "./assets/line.svg";
  import logo from "./assets/logo.png";
  import line1 from "./assets/line1.svg";
  import cash from "./assets/cash.png";
  import card from "./assets/card.png";

  import { onMount } from "svelte";

  let shopid = null;
  let weaponCategories = [];

  onMount(() => {
    window.addEventListener("message", handleMessage);
  });

  function handleMessage(event) {
    const v = event.data


    switch (v.action){
      case 'openShop':
        shopid = v.shop
        showShop(v.label, v.name)
    }
</script>

<header class="pb-4 mb-8">
  <div class="flex items-center justify-center gap-28">
    <img src={logo} alt="Logo" class="w-16 h-auto py-4" />
    <!-- Adjust width as needed -->
    <nav class="ml-4">
      <!-- Add margin-left for spacing between logo and nav -->
      <ul class="flex">
        <button class="px-4">Cold</button>
        <button class="px-4">Pisztoly</button>
        <button class="px-4">Gépfegyver</button>
        <button class="px-4">Puskák</button>
        <button class="px-4">Heavy</button>
        <button class="px-4">Lőszerek</button>
        <button class="px-4">Kiegészítők</button>
      </ul>
    </nav>
    <img src={line1} alt="Line" class="h-[124px]" />
    <div class="money flex flex-row gap-[48px]">
      <div class="cash flex flex-col items-center">
        <p class="text-sm font-normal ml-6">Cash</p>
        <div class="flex flex-row gap-3">
          <img src={cash} alt="Cash" class="w-4 h-auto" />
          <p class="text-sm font-normal text-[#ffa83d]">100.000.000$</p>
        </div>
      </div>
      <div class="cash flex flex-col items-center">
        <p class="text-sm font-normal ml-6">Credit Card</p>
        <div class="flex flex-row gap-3">
          <img src={card} alt="card" class="w-4 h-auto" />
          <p class="text-sm font-normal text-[#ffa83d]">100.000.000$</p>
        </div>
      </div>
    </div>
  </div>

  <img src={line} alt="Line" class="w-full h-auto" />
</header>

<style>
  /* Tailwind classes can be used directly in Svelte styles */
  header {
    @apply text-[#fff] font-bold;
  }

  header li {
    @apply uppercase;
  }

  button {
    position: relative;
    display: inline-block;
    text-align: center;
    font-size: 18px;
    letter-spacing: 1px;
    text-decoration: none;
    color: #fff;
    background: transparent;
    cursor: pointer;
    transition: ease-out 0.5s;
    box-shadow: inset 0 0 0 0 #ffa83d;
  }

  button:hover {
    color: #ffa83d;
  }

  button:active {
    color: #ffa83d;
    transform: scale(0.9);
  }
</style>
