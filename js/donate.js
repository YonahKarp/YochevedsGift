$(document).ready(function(){

    var cards = $(".donateContent .card"),
        donateNow = $("#donateNow"),
        lastTime = new Date().getTime();

    cards.addClass("beforeAnimated");

    setTimeout(checkForAnimation(cards),1)

    if(location.hash)
        $(location.hash).parent().removeClass('beforeAnimated')
        
    $(window).scroll(function(){
        var newTime = new Date().getTime()
        if(lastTime+150 < newTime){
            lastTime = newTime;    
            checkForAnimation(cards)
        }
    
        donateNow.toggleClass("hidden", shouldHideContactUs())
        donateNow.toggleClass("fixed", window.scrollY > 130)
    })

  
    function checkForAnimation(els){
        els.each(function(i, e){
            var position = e.getBoundingClientRect();
            if(position.y - window.innerHeight < 0){
                e.classList.remove('beforeAnimated')
            }
        });
    }
    
    function shouldHideContactUs(){
        return $(window).scrollTop() + window.innerHeight + 100 >= $(document).height();
    }
});