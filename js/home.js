var selectButtons = document.getElementsByClassName("select");
var slideContent = document.getElementsByClassName('slideContent');

//slideshow
var blurInterval = setInterval(runBlurAnimation, 8000);
var index = 1;
var flag = true;
var blur1 = document.getElementById("blur1");
var blur2 = document.getElementById("blur2");

function runBlurAnimation(){
    index = (index % 4) + 1 ; // 1-4

    for(var e of selectButtons)
        e.classList.remove('active');
    selectButtons[(index-1)].classList.add("active");

    for(var e of slideContent)
        e.classList.remove('active');
    slideContent[(index-1)].classList.add("active");

    if(flag){
        blur2.style.opacity = "1";
        blur2.style.background = "url(./img/slide"+index+".jpg) center center/cover no-repeat", 
        blur2.style.position = "absolute";
    }else{
        blur2.style.opacity = "0";
        blur1.style.background = "url(./img/slide"+index+".jpg) center center/cover no-repeat"
        blur1.style.position = "absolute";
    }
    flag = !flag;
} 

for(var i = 0; i < selectButtons.length; i++)
    selectButtons[i].onclick = function(j){
        return function(){
            linkClicked(j)
        }
    }(i); //closure

    function linkClicked(i){
        index = i;
        clearInterval(blurInterval);
        runBlurAnimation();
        blurInterval = setInterval(runBlurAnimation, 8000);
    }