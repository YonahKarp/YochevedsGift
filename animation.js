$(document).ready(function(){
    
    var selectButtons = $('.select');
    var slideContent = $('.slideContent');

    //slideshow
    var blurInterval = setInterval(runBlurAnimation, 8000);
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
        clearInterval(blurInterval);
        runBlurAnimation();
        blurInterval = setInterval(runBlurAnimation, 8000);
    });

    //collapsed links
    var menu = $('.menu');
    var links = $('.links ul');
    var shortcuts = $('.links li a');

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

        if(e.currentTarget.hash == "#contact"){
            e.preventDefault();
            e.stopPropagation();

            $('html, body').animate({
                scrollTop: $(e.currentTarget.hash).offset().top
            },500)
             $("#contactUs").addClass("open");
             menu.removeClass('open');
             links.css({'right': '-550px'});
        }
        
        return true;
    })


    //about and process
    var pars = $(".aboutContent p"),
        cards = $(".donateContent .card"),
        donateNow = $("#donateNow"),
        lastTime = new Date().getTime();
    pars.addClass("beforeAnimated")
    cards.addClass("beforeAnimated");

    if(pars.length || cards.length){
        setTimeout(checkForAnimation(pars),1)
        setTimeout(checkForAnimation(cards),1)

        if(location.hash)
            $(location.hash).parent().removeClass('beforeAnimated')


        $(window).scroll(function(){
            var newTime = new Date().getTime()
            if(lastTime+150 < newTime){
                lastTime = newTime;
                console.log("test")
                checkForAnimation(pars)

                checkForAnimation(cards)
            }

            donateNow.toggleClass("hidden", shouldHideContactUs())

       })
    }

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



    $("#contactUs .rplButton").click(function(e){
    
        var _this = $(this)
            
        var form = document.forms[0]; //fix form
        
        if(form.checkValidity())
            form.submit();
        else{
            $('input:invalid, textarea:invalid').addClass("attention");
        }
    });

    //$('#accord').liteAccordion();
    var item =  $(".item"),
        header = item.find("h2");
    header.click(function() {

        var removeTransitionEls = $(".item:not(.collapse)")
        removeTransitionEls.addClass('notransition'); // Disable transitions
        removeTransitionEls[0].offsetHeight; // Trigger a reflow, flushing the CSS changes
        removeTransitionEls.removeClass('notransition'); // Re-enable transitions

        header.parent().addClass("collapse");
        $(this).parent().removeClass("collapse");    
    });

    $(".nextButton").click(function(){
        var index = $(this).parents(".item").index() + 1 % 3;
        
        item.addClass("collapse");
        item[index].classList.remove("collapse");
    })

    //form
    var tabs = $(".items")
    var errors = $("#errors")
    $(".submitBtn").click(function(){
        var form = $("#applyForm")[0];

        errors.html('')
        
        if(form.checkValidity()){
            $(".item .errorMessage").addClass("hidden");
            errors.addClass("hidden")
            //form.submit();
        }else{

            $(".item .errorMessage").removeClass("hidden");
            errors.removeClass("hidden")


            $('#applyForm input:invalid, #applyForm textarea:invalid').addClass("attention");
            
            errors.append('<h3 class="montserrat centerTxt">Errors</h3>')

            $("#applyForm :invalid").each(function(i,e){
                if(e.dataset.msg )
                    errors.append('<div class="error" data-page="'+e.dataset.page+'">' + e.dataset.msg + '</div>')
            })
        }
    })

    errors.on("click", ".error", function(e){
        var index = e.target.dataset.page;
        item.addClass("collapse");
        item[index].classList.remove("collapse");

        $('html, body').animate({
            scrollTop: $("#applyForm").offset().top -150
        },500)
    });


});