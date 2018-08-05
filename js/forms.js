$(document).ready(function(){

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

 

    var specify = document.getElementById("specify"),
        referer = document.getElementById("referer");

    if(referer)
        referer.onchange = function(e){
            specify.classList.toggle("hide", !e.target.selectedOptions[0].classList.contains("specify"));
        }

    //form
    var tabs = $(".items")
    var errors = $(".errors")
    $(".submitBtn").click(function(){
        var form = $("#applyForm")[0];
        
        if(form.checkValidity()){
            $(".item .errorMessage").addClass("hidden");
            errors.addClass("hidden")
            showAlertLayer("Thank you, we will get back to you soon", 5000)
            form.submit();
            $(this).text("Thank You");
            $("#applyForm").html("<div class='card'>Form Submitted</div>").addClass("success")
            window.scrollTo(0,0);
        }else{

            $(".item .errorMessage").removeClass("hidden");


            $('#applyForm input:invalid, #applyForm textarea:invalid, #applyForm select:invalid').addClass("attention");
            
            var firstErrorPage = 2;
            $("#applyForm :invalid").each(function(i,e){
                if(e.dataset.page && e.dataset.page < firstErrorPage){
                    firstErrorPage = e.dataset.page;
                }   
            })

            turnToPage(firstErrorPage);
        }
    })

    function turnToPage(index){
        item.addClass("collapse");
        item[index].classList.remove("collapse");
    }

    //alertLayer
    var alertLayer = $("#alertLayer");
    function showAlertLayer(message, timeout){
        
        alertLayer.text(message).show();
        setTimeout(function(){
            alertLayer.fadeOut()
        },timeout)
    }


});