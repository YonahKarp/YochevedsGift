var questions = document.getElementsByClassName("card");
for(var q of questions)
    q.onclick = function(el){
        return function(){
            if(!el.classList.contains("shown")){
                for(var e of questions)
                    e.classList.remove("shown")
                el.classList.add("shown")
            }else{
               el.classList.remove("shown");
            }
        }   
    }(q)