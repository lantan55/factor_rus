"use strict";

import { paths } from "../gulpfile.babel";
import { task, watch, parallel } from "gulp";
import browsersync from "browser-sync";

task("serveServer", () => {
  watch(paths.styles.watch, parallel("styles"));
  watch(paths.cssLibs.watch, parallel("cssLibs"));
  watch(paths.scripts.watch, parallel("scripts"));
});
