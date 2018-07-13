$(document).ready(function(){
    
    var selectButtons = $('.select');
    var slideContent = $('.slideContent');

    //slideshow
    //var blurInterval = setInterval(runBlurAnimation, 8000);
    var index = 1;
    var flag = true;
    var blur1 = $("#blur1");
    var blur2 = $("#blur2");

    function runBlurAnimation(){
        index = (index % 4) + 1 ; // 1-4

        selectButtons.removeClass('active');
        $(selectButtons[(index-1)]).addClass("active");
        slideContent.removeClass('active');
        $(slideContent[(index-1)]).addClass("active");

        if(flag){
            blur2.css("opacity", 1);
            blur2.css({"background": "url(./img/slide"+index+".jpg) center center no-repeat", "background-size" : "cover", "position":"absolute"});
        }else{
            blur2.css("opacity", 0);
            blur1.css({"background": "url(./img/slide"+index+".jpg) center center no-repeat", "background-size" : "cover", "position":"absolute"});
        }
        flag = !flag;
    } 

    selectButtons.click(function(){
        index = $(this).index();
        //clearInterval(blurInterval);
        runBlurAnimation();
        //blurInterval = setInterval(runBlurAnimation, 8000);
    });

    //collapsed links
    var menu = $('.menu');
    var links = $('.links ul');
    var shortcuts = $('.links li');

    menu.click(function(){
        if($(this).hasClass('open')){
            menu.removeClass('open');
            links.css({'right': '-550px'});
        }else{
            menu.addClass('open');
            links.css({'right': '0'});
        }
    });

    shortcuts.click(function(e){
        var link = $(this).find("a");
        window.location = link[0].href;

        e.preventDefault();
        e.stopPropagation();

        menu.removeClass('open');
        links.css({'right': '-550px'});

        $('html, body').animate({
            scrollTop: $(e.currentTarget.hash).offset().top
        });  
    })


    //about and process
    var pars = $(".aboutContent p"),
        cards = $(".processContent .card"),
        lastTime = new Date().getTime();
    pars.addClass("beforeAnimated")
    cards.addClass("beforeAnimated");

    if(pars.length || cards.length){
        checkForAnimation(pars)
        checkForAnimation(cards)


        $(window).scroll(function(){
            var newTime = new Date().getTime()
            if(lastTime+150 < newTime){
                lastTime = newTime;
                console.log("test")
                checkForAnimation(pars)

                checkForAnimation(cards)
            }
       })
    }

    function checkForAnimation(els){
        els.each(function(i, e){
            var position = e.getBoundingClientRect();
            if(position.y > 0 && Math.abs(position.y) < window.innerHeight){
                e.classList.remove('beforeAnimated')
            }
        });
    }
    
    //faqs
    var questions = $(".faqContent .card");
    questions.click(function(){
        if(!$(this).hasClass("shown")){
            questions.removeClass("shown")
            $(this).addClass("shown")
        }else{
            $(this).removeClass("shown");
        }
    })


    //contact us//

    $('.slideOutBtn').click(function(){
        $(this).parent().toggleClass("open");
    })

    $("[href=#contact]").click(function(e){
        $("#contactUs").addClass("open");


    })
    $("#contactUs .rplButton").click(function(e){
    
        var _this = $(this)
            
        var form = document.forms[0];
        
        if(form.checkValidity())
            form.submit();
        else{
            $('input:invalid, textarea:invalid').addClass("attention");
        }
    });

    // $('#accord').liteAccordion({theme : 'Light'});


});