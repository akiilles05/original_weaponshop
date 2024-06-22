import { defineConfig } from "vite";
import { svelte } from "@sveltejs/vite-plugin-svelte";

export default defineConfig({
  base: `./`,
  plugins: [svelte()],
  build: {
    outDir: "dist", // A build eredmények célkönyvtára
    rollupOptions: {
      output: {
        // Egyéni útvonalak beállítása
        entryFileNames: "assets/js/[name].js",
        chunkFileNames: "assets/js/[name]-[hash].js",
        assetFileNames: ({ name }) => {
          if (name.endsWith(".css")) {
            return "assets/css/[name]-[hash][extname]";
          }
          return "assets/[name]-[hash][extname]";
        },
      },
    },
  },
});
