"use strict";

import { paths, prod } from "../gulpfile.babel";
import gulp from "gulp";
import gulpif from "gulp-if";
import rename from "gulp-rename";
import debug from "gulp-debug";
import yargs from "yargs";
import webpack from "webpack";
import webpackStream from "webpack-stream";
import browsersync from "browser-sync";

const webpackConfig = require("../webpack.config.js");
const argv = yargs.argv;
const production = !!argv.production;

webpackConfig.mode = production ? "production" : "development";
webpackConfig.devtool = production ? false : "source-map";

gulp.task("scripts", () => {
  return gulp
    .src(paths.scripts.src)
    .pipe(webpackStream(webpackConfig), webpack)
    .pipe(
      gulpif(
        production,
        rename({
          suffix: ".min",
        })
      )
    )
    .pipe(gulp.dest(paths.scripts.dist))
    .pipe(
      debug({
        title: "JS files",
      })
    )
    .pipe(browsersync.stream());
});
