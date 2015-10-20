
var
  gulp $ require :gulp
  script $ require :gulp-cirru-script
  clir $ require :./src/index

gulp.task :script $ \ ()
  ... gulp
    src :src/**/*.cirru
    pipe (script)
    pipe $ gulp.dest :lib/

gulp.task :clir $ \ ()
  ... gulp
    src :test/source/*.cirru
    pipe (clir)
    pipe $ gulp.dest :test/compiled/
