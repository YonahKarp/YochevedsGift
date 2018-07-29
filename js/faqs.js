$(document).ready(function(){
    var questions = $(".card");
    questions.click(function(){
        if(!$(this).hasClass("shown")){
            questions.removeClass("shown")
            $(this).addClass("shown")
        }else{
            $(this).removeClass("shown");
        }
    })
});