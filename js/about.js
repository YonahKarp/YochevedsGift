//about and process
var pars = document.getElementsByTagName("p"),
lastTime = new Date().getTime();

for(var p of pars)
    p.classList.add("beforeAnimated")

setTimeout(checkForAnimation(pars),1)

// if(location.hash)
//     $(location.hash).parentNode.classList.remove('beforeAnimated');

window.onscroll = function(){
    var newTime = new Date().getTime()
    if(lastTime+150 < newTime){
        lastTime = newTime;
        checkForAnimation(pars)
    }
}

function checkForAnimation(els){
    for(var e of els)
        if(e.getBoundingClientRect().y - window.innerHeight < 0)
            e.classList.remove('beforeAnimated')   
}
