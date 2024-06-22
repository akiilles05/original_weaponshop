<script>
  import { visible } from "./store.js";
  import Header from "./Header.svelte";
  import WeaponList from "./WeaponList.svelte";
  import WeaponDetail from "./WeaponDetail.svelte";

  function onKeyDown(e) {
    if (e.keyCode == 27) {
      fetch(`https://${GetParentResourceName()}/close`, {
        mode: "no-cors",
      });
      visible.set(false);
    }
  }

  // window.addEventListener("message", (event) => {
  //   if (event.data.visible !== undefined) {
  //     visible.set(event.data.visible);
  //   }
  // });
</script>

{#if $visible}
  <main class="flex flex-col bg-[#0000003a]">
    <Header />
    <WeaponDetail class="flex-1" />
    <WeaponList class="flex-2" />
  </main>
{/if}

<svelte:window on:keydown={onKeyDown} />
