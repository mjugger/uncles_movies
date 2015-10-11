gulp   = require 'gulp'
util   = require 'gulp-util'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'

gulp.task 'coffee', ->
	gulp.src 'src/client/*.coffee'
	.pipe coffee bare:true
	.pipe concat 'unclesMovies.js'
	.pipe gulp.dest 'public/javascripts'
	.on 'error', (e) ->
		util.beep('*_*_*_*_*')
		util.log(e)

gulp.task 'watch', ->
	gulp.watch 'src/**/*.coffee', ['coffee']

gulp.task 'default', ['coffee','watch']