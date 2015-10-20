
Gulp Clir converter
----

```bash
npm i --save-dev gulp-clir
```

```coffee
clir = require 'gulp-clir'

gulp.task 'clir', ->
  gulp.src('src/**/*.cirru')
  .pipe clir()
  .pipe gulp.dest('lib/')
```

### License

MIT
