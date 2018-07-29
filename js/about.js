$(document).ready(function(){

    //about and process
    var pars = $("p"),
    lastTime = new Date().getTime();

    pars.addClass("beforeAnimated")

    setTimeout(checkForAnimation(pars),1)

    $(window).scroll(function(){
        var newTime = new Date().getTime()
        if(lastTime+150 < newTime){
            lastTime = newTime;
            checkForAnimation(pars)
        }
   })

   function checkForAnimation(els){
        els.each(function(i, e){
            var position = e.getBoundingClientRect();
            if(position.y - window.innerHeight < 0){
                e.classList.remove('beforeAnimated')
            }
        });
    }
});