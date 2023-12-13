"use strict";

/* eslint-disable @typescript-eslint/no-var-requires */
const gulp = require("gulp");
const { dest, series, watch } = require("gulp");
const clean = require("gulp-clean");
const rename = require("gulp-rename");
const sass = require("gulp-sass")(require("sass"));
const uglify = require("gulp-uglify");

const allSrc = "src/**/*.*";

/*  ---------------------------------------------------------------------------------------------------------------   */

const coreStyleSrc = "src/**/*.scss";
const coreStyleDist = "dist";

function cleanCoreStyle() {
    return gulp
        .src(coreStyleDist, { allowEmpty: true, read: false })
        .pipe(clean());
}

function coreStyle() {
    return gulp
        .src(coreStyleSrc, { allowEmpty: true })
        .pipe(sass({ outputStyle: "expanded" }, "").on("error", sass.logError))
        .pipe(dest(coreStyleDist))
        .pipe(sass({ outputStyle: "compressed" }, "").on("error", sass.logError))
        .pipe(rename({ extname: ".min.css" }))
        .pipe(dest(coreStyleDist));
}

exports.core = series(cleanCoreStyle, coreStyle);


/*  ---------------------------------------------------------------------------------------------------------------   */

function copyBootstrap() {
    return gulp.src('vendors/twbs/bootstrap/5.3.2/dist/**/*')
        .pipe(gulp.dest('dist/vendors/twbs/bootstrap/5.3.2'));
}

/*  ---------------------------------------------------------------------------------------------------------------   */

exports.default = function () {
    watch(allSrc, series(cleanCoreStyle, coreStyle, copyBootstrap));
};

exports.dist = series(cleanCoreStyle, coreStyle, copyBootstrap);