<!DOCTYPE html>
<html >
<head>
  <title>Yocheved's Gift: Request Supplies</title>
   
    @include head.incl
  <link rel="stylesheet" href="./css/formStyles.css">
</head>
<body>

    <div id="header" class="header2">
        @include header.incl
    </div>
    <div class="formContainer">
        <h2 class="pageTitle dancingScript">Request Supplies</h2>
        <div class="clearFix"></div>
        <div class="formContent openSans">
            <div class="card">
                <p class="">
                    This page is for current donors who wish to request supplies.
                    If you are interested in becoming a donor <a href="./donateNow.html"> click here!</a>
                </p>
            </div>

            <form id="applyForm" action="https://formspree.io/Eli@ceAhead.com" method="POST">
                <input type="hidden" name="_next" value="#thankyou" />
                <input type="hidden" name="_subject" value="I would like to request more supplies" />

                <div id="accord">     
                    <div class="item">
                        <h2><span>Contact Info</span></h2>
                        <div class="accordSlideContent">
                            <div class="form">
                                <h3>Contact Info</h3>
                                <div class="inputContainer">
                                    <input type="text" name="firstName" required data-page="0"/>
                                    <div class="floating-label">First Name</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="text" name="lastName" required  data-page="0"/>
                                    <div class="floating-label">Last Name</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="number" name="donorNumber" required  data-page="0"/>
                                    <div class="floating-label">Donor Number</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="number" name="phone" maxlength="20" required data-page="0"/>                        
                                    <div class="floating-label">Phone</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="email" name="_replyto" required data-page="0"/>
                                    <div class="floating-label">Email</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="text" name="address" required data-page="0"/>
                                    <div class="floating-label">Address</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="text" name="city" required data-page="0"/>
                                    <div class="floating-label">City</div>
                                </div>
                                <div class="inputContainer">
                                    <input type="text" name="state" required data-page="0"/>
                                    <div class="floating-label">State</div>
                                </div>
                                <div class="btnContainer nextButton">
                                        <div class="rplButton">Next ►</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item collapse">
                        <h2><span>Requested Supplies</span></h2>
                        <div class="accordSlideContent">
                            <div class="form">
                                <h3>Requested Supplies</h3>
                                
                                <div class="inputContainer">
                                    <input class="left" type="checkbox" name="wantsBox">
                                    <label>
                                        Insulated box with prepaid shipping labels and ice packs
                                    </label>
                                    <div class="inputContainer hiddenField">
                                        <div>
                                            <input type="radio" name="boxSize" value="small">
                                            <label>
                                                Small (about 100oz or less)
                                            </label>
                                        </div>
                                        <div>
                                            <input type="radio" name="boxSize" value="med">
                                            <label>
                                                Medium (100-200 oz)
                                            </label>
                                        </div>
                                        <div>
                                            <input type="radio" name="boxSize" value="large">
                                            <label>
                                                Large (200-400 oz)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="inputContainer">
                                    <input class="left" type="checkbox" name="bloodTest">
                                    <label>
                                        Milk Storage Bags
                                    </label>
                                </div>

                               

                                <div class="btnContainer submitBtn">
                                        <div type="Submit" class="rplButton">Submit</div>
                                </div>
                                <div class="clearFix"></div>
                                <a href="#formErrors">
                                    <div class="errorMessage error hidden">
                                        Seems that some information is missing.
                                        Please complete the missing fields and resubmit. Thanks!
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div> 

    @include footer.incl
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,400i|Raleway:400,700|Dancing+Script:400,700|Open+Sans:300" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"
            integrity="sha384-R4/ztc4ZlRqWjqIuvf6RX5yb/v90qNGx6fS48N0tRxiGkqveZETq72KgDVJCp2TC
                        sha256-8WqyJLuWKRBVhxXIL1jBDD7SDxU936oZkCnxQbWwJVw="
            crossorigin="anonymous">
    </script>
 
    <script  src="./js/animation.js"></script>
    <script  src="./js/forms.js"></script>
</body>
</html>
