

//collapsed links
var menu = document.getElementById('menu'),
    links = document.querySelector('.links ul');

menu.onclick = function(){
    if($(this).hasClass('open')){
        menu.classList.remove('open');
        links.classList.remove('open')
    }else{
        menu.classList.add('open');
        links.classList.add('open')
    }
};

var shortcuts = links.getElementsByTagName('a'),
    contactUs = document.getElementById('contactUs');



for(var el of shortcuts)
    el.onclick = function(e){

        if(e.currentTarget.hash == "#contact"){
            e.preventDefault();
            e.stopPropagation();

            window.scrollTo({
                top: contactUs.getBoundingClientRect().y,
                behavior: "smooth"
            })

            contactUs.classList.add("open");
            menu.classList.remove('open');
            links.classList.remove('open')
        }
        return true;
    }

//faqs


//contact us//
document.querySelector(".slideOutBtn").onclick = function(e){
    contactUs.classList.toggle("open");
};

//$("#contactUs .rplButton").click(function(e){
contactUs.querySelector("#contactUs .rplButton").onclick = function(e){        
    var form = contactUs.querySelector("form");
    
    if(form.checkValidity()){
        form.submit();
        showAlertLayer("Thank you, we will get back to you soon", 5000)
    }else{
        var attn = contactUs.querySelectorAll('input:invalid, textarea:invalid')
        for(var e of attn)
            e.classList.add("attention")
    }
}


//alertLayer
var alertLayer = document.getElementById("alertLayer")
function showAlertLayer(message, timeout){
    
    alertLayer.innerText = message;
    alertLayer.classList.add("show")
    setTimeout(function(){
        alertLayer.classList.remove("show");
    },timeout)
}

if(location.hash == "#thankyou"){
    showAlertLayer("Thank you, we will get back to you soon", 5000)
    location.hash = "";

}
