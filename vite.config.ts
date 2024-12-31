import { resolve } from "path";
import { defineConfig } from "vite";
import dts from "vite-plugin-dts";

export default defineConfig({
  build: {
    lib: {
      name: "Crust",
      entry: resolve(__dirname, "src/index.ts"),
      fileName: "index",
    },
  },
  plugins: [dts()],
});
