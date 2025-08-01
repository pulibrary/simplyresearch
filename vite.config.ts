import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";
import react from "@vitejs/plugin-react";

export default defineConfig({
  plugins: [
    RubyPlugin(),
    react(), // ← Add the React plugin
  ],
  build: {
    rollupOptions: {
      input: {
        application: "./app/javascript/entrypoints/application.jsx",
      },
    },
  },
});
