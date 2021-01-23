"use strict";
import { series, parallel } from "gulp";

const requireDir = require("require-dir");
const paths = {
  views: {
    src: ["./dev/src/views/index.pug", "./dev/src/views/pages/**/*.pug"],
    dist: "./dev/dist/",
    watch: ["./dev/src/views/**/*.pug"],
  },
  styles: {
    src: "./dev/src/styles/main.{scss,sass}",
    dist: "./dev/dist/assets/css/",
    watch: ["./dev/src/styles/**/*.{scss,sass}"],
  },
  cssLibs: {
    src: [
      "node_modules/bootstrap/dist/css/bootstrap.css",
      "node_modules/owl.carousel/dist/assets/owl.carousel.css",
      "./dev/src/styles/libs/build.css",
    ],
    dist: "./dev/dist/assets/css/",
    watch: ["./dev/src/styles/libs/*.{css}"],
  },
  scripts: {
    src: "./dev/src/js/app.js",
    dist: "./dev/dist/assets/js/",
    watch: ["./dev/src/js/**/*.js"],
  },
  images: {
    src: [
      "./dev/src/img/**/*.{jpg,jpeg,png,gif,tiff,svg}",
      "!./dev/src/img/favicon/*.{jpg,jpeg,png,gif,tiff}",
    ],
    dist: "./dev/dist/assets/img/",
    watch: "./dev/src/img/**/*.{jpg,jpeg,png,gif,svg}",
  },
  fonts: {
    src: "./dev/src/fonts/**/*.{woff,woff2}",
    dist: "./dev/dist/assets/fonts/",
    watch: "./dev/src/fonts/**/*.{woff,woff2}",
  },
};

requireDir("./gulp-tasks/");

export { paths };
export const scripts = series("scripts");
export const styles = series(parallel(["styles"]));

export const serverDev = series(
  "clean",
  parallel(["styles", "scripts"]),
  "serveServer"
);

export const development = series(
  "clean",
  parallel(["styles", "scripts", "views", "images", "fonts"]),
  "serve"
);

export const prod = series(
  "clean",
  series(["styles", "scripts", "views", "images", "fonts"])
);

export default development;
