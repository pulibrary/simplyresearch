// eslint.config.js

import { defineConfig } from "eslint/config";
import reactPlugin from "eslint-plugin-react";
import eslintPluginPrettier from "eslint-config-prettier/flat";
import eslintPluginPrettierRecommended from "eslint-plugin-prettier/recommended";

export default defineConfig([
  {
    files: [
      "app/assets/**/*.js",
      "app/assets/**/*.jsx",
      "app/assets/**/*.ts",
      "app/assets/**/*.tsx",
      "app/javascript/**/*.js",
      "app/javascript/**/*.jsx",
      "app/javascript/**/*.ts",
      "app/javascript/**/*.tsx",
    ],
    ignores: ["dist", "node_modules", ".git", "*.json"],
  },
  reactPlugin.configs.flat.recommended,
  eslintPluginPrettier,
  eslintPluginPrettierRecommended,
]);
