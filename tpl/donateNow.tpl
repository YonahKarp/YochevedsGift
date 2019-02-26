<!DOCTYPE html>
<html >
<head>
=  <title>Yocheved's Gift: Donate Now</title>
  @include head.incl
  <link rel="stylesheet" href="./css/formStyles.css">


</head>
<body>

    <div id="header" class="header2">
       @include header.incl
    </div>
    <div class="formContainer">
        <h2 class="pageTitle dancingScript">Donate Now</h2>
        <div class="clearFix"></div>
        <div class="formContent openSans">
            <div class="card">
                <p class="">
                    If you believe you might be eligible to become a milk donor, please fill out this short form.
                    We will contact you within a few days
                    with information on the next steps in the donor screening process.  
                </p>
                
                <p class="small">
                    If you would like to learn more about the donation process go to our 
                    <a href="./donate.html#donorProcess">Donate</a> and <a href="./about.html">About Us</a> pages.
                </p>
            </div>

            <form id="applyForm" action="https://formspree.io/Eli@ceAhead.com" method="POST">
                <input type="hidden" name="_next" value="#thankyou" />
                <input type="hidden" name="_subject" value="I would like to donate milk to Yocheved's Gift" />

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
                                    <input type="text" name="lastName" required data-page="0"/>
                                    <div class="floating-label">Last Name</div>
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
                        <h2><span>Milk Info</span></h2>
                        <div class="accordSlideContent">
                            <div class="form">
                                <h3>Milk Info</h3>
                                <div class="inputContainer">
                                    <input type="date" name="babyBirthDate" required data-page="1"/>
                                    <div class="floating-label">Date of Baby’s Birth</div>
                                </div>
                                <div class="inputContainer">
                                        <p>
                                            Do you have milk already collected that you would like to donate?
                                        </p>
                                        <div>
                                            <input type="radio" name="hasMilk" value = "yes" required data-page="1">
                                            <label for="hasMilk">Yes</label>
                                            <div class="inputContainer hiddenField">
                                                <input type="number" name="quantity" placeholder="quantity">
                                                <div class="floating-label">quantity (oz)</div>
                                            </div>
                                        </div>
                                        
                                    <div>
                                        <input type="radio" name="hasMilk" id="noMilk" required>
                                        <label>
                                            No
                                        </label>
                                    </div>
                                </div>
                                <div class="inputContainer">
                                    <p>
                                        Which medications, if any, were you taking while pumping the milk that you currently have?
                                        (none, if not applicable)
                                    </p>
                                    <div>
                                        <div class="inputContainer shownField">
                                            <input type="text" name="meds">
                                            <div class="floating-label">medications</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="btnContainer nextButton">
                                        <div class="rplButton">Next ►</div>
                                </div>
                                
                            </div> 
                        </div>

                    </div>
                    
                    <div class="item collapse">
                        <h2><span>Agreements</span></h2>
                        <div class="accordSlideContent shortMargins">
                            <div class="form">
                                <h3>Agreements</h3>
                                
                                <div class="inputContainer">
                                    <input class="left" type="checkbox" name="min200" required data-page="2">
                                    <label>
                                        I understand that Yocheved’s Gift asks for a minimum of 200oz 
                                        of approved milk while I am a donor
                                    </label>
                                </div>
                                <div class="inputContainer">
                                    <input class="left" type="checkbox" name="bloodTest" required data-page="2">
                                    <label>
                                        I understand that to become a donor I may need to complete a blood test 
                                    </label>
                                </div>

                                <p>
                                    I am interested in becoming a donor for:
                                </p>
                                <div>
                                    <input type="radio" name="donorType" value="donorComp" required data-page="2">
                                    <label>
                                        Providing milk to be sold for which I would like to be compensated
                                    </label>
                                </div>
                                <div class="table">
                                    <input class="table-cell" type="radio" name="donorType" value="donorHMBNA">
                                    <label class="table-cell padleftTop">
                                        Sick infants, for which I cannot be compensated as per HMBANA regulations
                                        <i class="fontFine">For more information on compensation, please <a href="./donate.html#compensation">click here</a></i>

                                    </label>
                                </div>

                                <div>
                                    <p>How did you hear about Yocheved’s Gift?</p>
                                    <select id="referer" required>
                                        <option>Hospital</option>
                                        <option>Primary Health Care Provider</option>
                                        <option>Lactation Consultant at a hospital</option>
                                        <option>Lactation Consultant – Independent</option>
                                        <option>Internet Search</option>
                                        <option>Social Media</option>
                                        <option class="specify">Saw an ad (please specify – where?)</option>
                                        <option>Referred by milk recipient</option>
                                        <option>Referred by milk donor</option>
                                        <option>Referred by friend/family</option>
                                        <option>Event</option>
                                        <option>Referred by another milk bank</option>
                                        <option>My child was a recipient</option>
                                        <option class="specify">Other (please specify)</option>
                                        <div> hello</div>
                                    </select>
                                </div>
                                 
                                <textarea id="specify" class="hide" type="text" name="specify" placeholder="please specify"></textarea>

                                <p>Additional Comments:</p>
                                <textarea type="text" name="comment" placeholder="Additional Comments"></textarea>

                                <div class="btnContainer submitBtn">
                                        <div type="Submit" class="rplButton">Submit</div>
                                </div>
                                <div class="clearFix"></div>
                                <a href="#errors">
                                    <div class="errorMessage error hidden">
                                        It seems that some information is missing.
                                        Once you've completed the missing fields, resubmit. Thanks!
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
