<script>
  import line from "./assets/line2.svg";
  import bullet from "./assets/bullet.svg";
  import weight from "./assets/weight.svg";
  import pistol from "./assets/weapon/pistol.png";

  function formatCurrency(amount) {
    return amount + "$";
  }
</script>

<main class="flex flex-col">
  <div class="ml-40 mb-[8.5rem] flex">
    <!-- Progress bar -->
    <div class="BuyContainer">
      <h1>Statisztika</h1>
      <h2>Sebzés:</h2>
      <div class="Damage">
        <div class="damageBar"></div>
      </div>
      <br />
      <h2>Pontosság:</h2>
      <div class="Damage">
        <div class="AccuracyBar"></div>
      </div>
      <br />
      <h2>Tűzgyakoriság:</h2>
      <div class="Damage">
        <div class="SpeedBar"></div>
      </div>
      <br />
      <h2>Távolság:</h2>
      <div class="Damage">
        <div class="RangeBar"></div>
      </div>
    </div>

    <!-- Image container -->
    <div class="flex-1 flex items-center justify-center ml-[-10%]">
      <img src={pistol} alt="Pistol" class="w-80 h-auto mt-4 object-contain" />
    </div>
  </div>

  <img src={line} alt="Line" class="w-full h-auto" />

  <!-- {#each weapons as weapon}
    <div class="weapon-card">
      <img src={weapon.image} alt={weapon.name} />
      <div class="weapon-details">
        <h3>{weapon.name}</h3>
        <p>Weight: {weapon.weight} kg</p>
        <p>Cost: {formatCurrency(weapon.cost)}</p>
      </div>
    </div>
  {/each} -->

  <div class="weaponlist ml-[9.5rem]">
    <div class="card">
      <div class="top-left flex items-center">
        <img src={bullet} alt="Bullet" class="w-5 h-5" />
        <p class="text-sm mt-1">7.62x51mm</p>
      </div>

      <div class="top-right flex items-center">
        <img src={weight} alt="weight" class="w-5 h-5 mr-1" />
        <p>30kg</p>
      </div>
      <div class="bottom-left">MI34 MINIGUN</div>
      <div class="bottom-right">{formatCurrency(500)}</div>
      <img src={pistol} alt="Kép" class="weaponimg" />
    </div>
    <div class="card">
      <div class="top-left flex items-center">
        <img src={bullet} alt="Bullet" class="w-5 h-5" />
        <p class="text-sm mt-1">7.62x51mm</p>
      </div>

      <div class="top-right flex items-center">
        <img src={weight} alt="weight" class="w-5 h-5 mr-1" />
        <p>30kg</p>
      </div>
      <div class="bottom-left">MI34 MINIGUN</div>
      <div class="bottom-right">{formatCurrency(500)}</div>
      <img src={pistol} alt="Kép" class="weaponimg" />
    </div>
    <div class="card">
      <div class="top-left flex items-center">
        <img src={bullet} alt="Bullet" class="w-5 h-5" />
        <p class="text-sm mt-1">7.62x51mm</p>
      </div>

      <div class="top-right flex items-center">
        <img src={weight} alt="weight" class="w-5 h-5 mr-1" />
        <p>30kg</p>
      </div>
      <div class="bottom-left">MI34 MINIGUN</div>
      <div class="bottom-right">{formatCurrency(500)}</div>
      <img src={pistol} alt="Kép" class="weaponimg" />
    </div>
    <div class="card">
      <div class="top-left flex items-center">
        <img src={bullet} alt="Bullet" class="w-5 h-5" />
        <p class="text-sm mt-1">7.62x51mm</p>
      </div>

      <div class="top-right flex items-center">
        <img src={weight} alt="weight" class="w-5 h-5 mr-1" />
        <p>30kg</p>
      </div>
      <div class="bottom-left">MI34 MINIGUN</div>
      <div class="bottom-right">{formatCurrency(500)}</div>
      <img src={pistol} alt="Kép" class="weaponimg" />
    </div>
  </div>
</main>

<style>
  .weaponlist {
    overflow-x: scroll;
    overflow-y: hidden;
    white-space: nowrap;
    width: 80%;
  }

  .BuyContainer {
    position: absolute;
    top: 55%;
    right: 82%;
    transform: translate(50%, -50%);
    width: 20vw;
    height: 15vw;
    box-shadow: 0vw 0vw 0.5vw rgba(0, 0, 0, 0.251);
  }

  .BuyContainer h1 {
    text-align: center;
    padding: 0.2vw 0vw 0vw 0vw;
    color: white;
    font-size: 1.2vw;
  }

  .Damage {
    left: 0.5vw;
    position: absolute;
    width: 18vw;
    height: 0.8vw;
    border-radius: 0.1vw;
    background-color: rgba(0, 0, 0, 0.174);
  }

  .BuyContainer h2 {
    text-align: left;
    margin-left: 0.5vw;
    padding: 0.2vw 0.2vw 0.2vw 0vw;
    color: white;
    font-size: 0.8vw;
  }

  .damageBar {
    transition: 0.5s;
    border-radius: 0.2vw;
    position: relative;
    width: 80%;
    height: 100%;
    filter: blur(0.02vw);
    background-color: rgb(255, 168, 61);
  }

  .AccuracyBar {
    transition: 0.5s;
    border-radius: 0.2vw;
    position: relative;
    width: 20%;
    height: 100%;
    filter: blur(0.02vw);
    background-color: rgb(255, 168, 61);
  }

  .SpeedBar {
    transition: 0.5s;
    border-radius: 0.2vw;
    position: relative;
    width: 50%;
    height: 100%;
    filter: blur(0.02vw);
    background-color: rgb(255, 168, 61);
  }

  .RangeBar {
    transition: 0.5s;
    border-radius: 0.2vw;
    position: relative;
    width: 10%;
    height: 100%;
    filter: blur(0.02vw);
    background-color: rgb(255, 168, 61);
  }

  .RealBuyContainer {
    position: absolute;
    top: 40%;
    right: 20%;
    transform: translate(50%, -50%);
    width: 20vw;
    height: 11vw;
    box-shadow: 0vw 0vw 0.5vw rgba(0, 0, 0, 0.251);
  }

  .RealBuyContainer h1 {
    text-align: center;
    font-size: 1.2vw;
    padding: 0.2vw 0vw 0vw 0vw;
    color: white;
  }

  .card {
    display: inline-table;
    position: relative;
    width: 15vw;
    height: 200px;
    background-color: rgba(0, 0, 0, 0.1);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    margin-right: 3vw;
  }

  .card .weaponimg {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    max-width: 100%;
    max-height: 100%;
  }

  .card .top-left,
  .card .top-right,
  .card .bottom-left,
  .card .bottom-right {
    position: absolute;
    color: #ffffff;
    font-size: 14px;
    font-weight: bold;
    padding: 5px;
  }

  .card .top-left {
    display: flex;
    top: 0;
    left: 0;
  }

  .card .top-right {
    top: 0;
    right: 0;
  }

  .card .bottom-left {
    bottom: 0;
    left: 0;
  }

  .card .bottom-right {
    bottom: 0;
    right: 0;
  }

  .card:hover {
    filter: blur(0.02vw);
    border: 1px solid;
    background-color: rgba(0, 0, 0, 0.3);
  }
</style>
