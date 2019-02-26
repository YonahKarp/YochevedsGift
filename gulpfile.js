var gulp = require('gulp'),
    exec = require('child_process').exec,
    scss = require("gulp-sass");

gulp.task('default', defaultTask);
gulp.task('tpl', buildTemplates);



function defaultTask(done) {
    // gulp.watch('scss/*.scss', ['scss']);
    gulp.watch('tpl/*', ['tpl']);
    watchScss();
}

function buildTemplates(done) {
    var command = "./tpl/builder.sh";
    exec(command, function(err, stdout, stderr){
        handleConsoleOutput(err, stdout, stderr, done)
    });   
}

function watchScss(){
    var command = "node-sass -w scss/ -o css/";
    var watcher = exec(command, function(err, stdout, stderr){
        handleConsoleOutput(err, stdout, stderr)
    });

    log("watching scss", "start")
    watcher.stdout.on('data', function(data){
        log(data.replace("\n",""), "success")
    })

    watcher.stderr.on('data', function(data){
        log(data,"error")
    })
}

function handleConsoleOutput(err, stdout, stderr, done){
    if(stdout)
        console.log(stdout);
    if(stderr)
        log(stderr,"error");
    if(done)
        done(err);
}


function log(msg, color) {
    switch (color) {
        case "success":  color = "\x1b[32m";   break;
        case "info":     color = "\x1b[34m"; break;
        case "error":    color = "\x1b[31m";   break;
        case "start":    color = "\x1b[36m";  break;
        case "warning":  color = "\x1b[33m";   break;
        case "end":      color = "\x1b[35m";   break;
        default: color = "\x1b[30m";
    }

    console.log(color+'%s\x1b[0m', msg);  //cyan
}