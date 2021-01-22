import { paths } from "../gulpfile.babel";
import gulp from "gulp";
import gulpif from "gulp-if";
import rename from "gulp-rename";
import concatCss from "gulp-concat-css";
import mincss from "gulp-clean-css";
import debug from "gulp-debug";

import yargs from "yargs";

const argv = yargs.argv;
const production = !!argv.production;

gulp.task("cssLibs", () => {
  return gulp
    .src(paths.cssLibs.src)
    .pipe(concatCss("libs.css"))
    .pipe(
      gulpif(
        production,
        mincss({
          compatibility: "ie8",
          level: {
            1: {
              specialComments: 0,
              removeEmpty: true,
              removeWhitespace: true,
            },
            2: {
              mergeMedia: true,
              removeEmpty: true,
              removeDuplicateFontRules: true,
              removeDuplicateMediaBlocks: true,
              removeDuplicateRules: true,
              removeUnusedAtRules: false,
            },
          },
        })
      )
    )
    .pipe(
      gulpif(
        production,
        rename({
          suffix: ".min",
        })
      )
    )
    .pipe(gulp.dest(paths.cssLibs.dist))
    .pipe(
      debug({
        title: "CSS files",
      })
    );
});
