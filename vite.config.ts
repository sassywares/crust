import { resolve } from "path";
import { defineConfig } from "vite";

export default defineConfig({
  build: {
    lib: {
      name: "Crust",
      entry: resolve(__dirname, "src/index.ts"),
      fileName: "index",
    },
  },
});
