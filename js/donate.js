var cards = document.getElementsByClassName("card"),
    donateNow = document.getElementById("donateNow"),
    lastTime = new Date().getTime();

for(var e of cards)
    e.classList.add("beforeAnimated")

setTimeout(checkForAnimation(cards),1)

if(location.hash)
    document.getElementById(location.hash.substring(1)).parentNode.classList.remove('beforeAnimated');

window.onscroll = function(){

    var newTime = new Date().getTime()
    if(lastTime+50 < newTime){
        lastTime = newTime;
        console.log("test")

        checkForAnimation(cards)

        if(shouldHideContactUs())
            donateNow.classList.add("hidden")
        else
            donateNow.classList.remove("hidden")
        
        if(window.scrollY > 130)
            donateNow.classList.add("fixed")
        else
            donateNow.classList.remove("fixed")
    }
}

function checkForAnimation(els){
    for(var e of els)
        if(e.getBoundingClientRect().y - window.innerHeight < 0)
            e.classList.remove('beforeAnimated')   
}

function shouldHideContactUs(){
    return window.scrollY + window.innerHeight + 100 >= document.body.clientHeight;
}