 
 $(document).ready(function(){


    //collapsed links
    var menu = $('#menu');
    var links = $('.links ul');

    menu.click(function(){
        if($(this).hasClass('open')){
            menu.removeClass('open');
            links.removeClass('open');
        }else{
            menu.addClass('open');
            links.addClass('open')
        }
    });

    var shortcuts = $('.links li a');
    shortcuts.click(function(e){

        if(e.currentTarget.hash == "#contact"){
            e.preventDefault();
            e.stopPropagation();

            $('html, body').animate({
                scrollTop: $(e.currentTarget.hash).offset().top
            },500)
             $("#contactUs").addClass("open");
             menu.removeClass('open');
             links.removeClass('open');
        }
        
        return true;
    })


    $('.slideOutBtn').click(function(){
        $("#contactUs").toggleClass("open");
    })

    $("#contactUs .rplButton").click(function(e){

        var _this = $(this)
            
        var form = document.forms[0]; //fix form
        
        if(form.checkValidity()){
            form.submit();
            showAlertLayer("Thank you, we will get back to you soon", 5000)
        }else{
            $('input:invalid, textarea:invalid').addClass("attention");
        }
    });

    //alertLayer
    var alertLayer = $("#alertLayer");
    function showAlertLayer(message, timeout){
        
        alertLayer.text(message).show();
        setTimeout(function(){
            alertLayer.fadeOut()
        },timeout)
    }

    if(location.hash == "#thankyou"){
        showAlertLayer("Thank you, we will get back to you soon", 5000)
        location.hash = "";
    }

});
