"use strict";

import { paths } from "../gulpfile.babel";
import { task, watch, parallel } from "gulp";
import browsersync from "browser-sync";

task("serve", () => {
  browsersync.init({
    server: "./dev/dist/",
    port: 4000,
    notify: true,
  });

  watch(paths.styles.watch, parallel("styles"));
  watch(paths.cssLibs.watch, parallel("cssLibs"));
  watch(paths.scripts.watch, parallel("scripts"));
  watch(paths.views.watch, parallel("views"));
  watch(paths.images.watch, parallel("images"));
});
