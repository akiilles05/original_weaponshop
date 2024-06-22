<script>
  import { Button } from "flowbite-svelte";

  import scope from "./assets/scope.svg";
  import bullet from "./assets/bullet.svg";
  import suppressor from "./assets/suppressor.png";
  import lock from "./assets/lock.svg";

  import cash from "./assets/coin.svg";
  import card from "./assets/card.svg";

  let accessories = [
    { icon: scope, locked: false },
    { icon: bullet, locked: false },
    { icon: suppressor, locked: true },
    { icon: lock, locked: true },
    { icon: lock, locked: true },
  ];
</script>

<main class=" grid grid-cols-3 justify-start items-center gap-40 text-center">
  <!-- weapon details -->
  <div class="weapon flex flex-col justify-center ml-40 text-left">
    <h1 class="weaponname">MI34 MINIGUN</h1>
    <div class="ammo">7.62x51mm NATO</div>
    <div class="description">
      A fegyver leiras. A fegyver leiras. A fegyver leiras. A fegyver leiras. A
      fegyver leiras. A fegyver leiras. A fegyver leiras. A fegyver leiras.
    </div>
  </div>
  <div class="mt-32 accessories flex space-x-4 items-center justify-center">
    {#each accessories as accessory}
      <div class="accessory {accessory.locked ? 'locked' : ''}">
        <div class="icon-container">
          <img
            src={accessory.icon}
            class="w-[32px] text-white"
            alt="accessory"
          />
        </div>
      </div>
    {/each}
  </div>

  <!-- basket -->
  <div class="flex flex-col items-center justify-center mt-5">
    <div class="flex">
      <div class="bank">
        <button class="payment">
          <img src={cash} alt="Cash" class="w-11 h-6" />
        </button>
      </div>
      <div class="cash">
        <button class="payment">
          <img src={card} alt="Card" class="w-11 h-6" />
        </button>
      </div>
    </div>
    <button class="mt-2 bg-[#ffa83d] text-white py-2 px-4 hover:[#ffa83d] w-56"
      >BUY</button
    >
  </div>
</main>

<style>
  .accessory {
    @apply flex items-center justify-center w-[48px] h-[48px] bg-black rounded border border-orange-500;
  }
  .locked {
    @apply flex items-center justify-center w-[48px] h-[48px] bg-black rounded border border-orange-500;
  }
  .icon-container {
    @apply flex items-center justify-center w-8 h-8; /* Adjust the size of the icon container */
  }

  .buy {
    position: relative;
    margin: 15px;
    background: #ffa83d;
    display: inline-block;
    padding: 15px 30px;
    text-align: center;
    font-size: 18px;
  }

  .payment {
    position: relative;
    display: inline-block;
    margin: 4px;
    padding: 15px 30px;
    text-align: center;
    font-size: 18px;
    letter-spacing: 1px;
    text-decoration: none;
    color: #ffa83d;
    background: transparent;
    cursor: pointer;
    transition: ease-out 0.5s;
    border: 2px solid #ffa83d;
    box-shadow: inset 0 0 0 0 #ffa83d;
  }

  .payment:active {
    transform: scale(0.9);
  }
</style>
