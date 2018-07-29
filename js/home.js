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
});