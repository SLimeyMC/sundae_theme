import { defineConfig } from '@farmfe/core';
import gleam from "vite-gleam";

export default defineConfig({
  compilation: {
    presetEnv: false
  },
  vitePlugins: [gleam()]
});
