/// <reference types="vitest" />

import path from "path";
import { defineConfig } from "vite";

// https://vitejs.dev/config/
export default defineConfig({
  base: "/",
  resolve: {
    alias: {
      // Add your aliases here
      // Don't forget to add them to tsconfig.json too
      "@": path.join(__dirname, "src"),
      "@cypress": path.join(__dirname, "cypress"),
    },
  },
  test: {
    globals: true,
    environment: "jsdom",
    setupFiles: "./src/setupTests.ts",
  },
});
