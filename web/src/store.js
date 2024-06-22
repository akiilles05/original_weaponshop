import { writable } from "svelte/store";

export const weapons = writable([]);
export const categories = writable([]);
export const translate = writable([]);

export const visible = writable(false);

window.addEventListener("message", function (event) {
  let data = event.data;
  if (data.visible !== undefined) {
    visible.set(data.visible);
  }
});

//
