
var
  clir $ require :clir
  through $ require :through2
  gutil $ require :gulp-util

var
  replaceExtension gutil.replaceExtension
  PluginError gutil.PluginError

= module.exports $ \ ()
  var compile $ \ (file enc cb)

    = file.path $ replaceExtension file.path :.c

    if (file.isStream) $ do
      cb $ new PluginError :gulp-clir ":Streaming not supported"

    if (file.isBuffer) $ do
      try
        do
          var
            contents $ String file.contents
            compiled $ clir.transform contents
          = file.contents $ new Buffer compiled
        error
          cb $ new PluginError :gulp-jade error

    cb null file

  through.obj compile