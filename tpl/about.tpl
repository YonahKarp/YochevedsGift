<!DOCTYPE html>
<html >
<head>
  <title>Yocheved's Gift: something here</title>
  @include head.incl
  <link rel="stylesheet" href="./css/homeStyles.css">
  <link rel="stylesheet" href="./css/aboutStyles.css">

</head>
<body>
    <div id="header" class="header2">
        @include header.incl
    </div>
    <div class="aboutContainer">
        <h2 class="pageTitle dancingScript">ABOUT US</h2>
        <div class="clearFix"></div>
        <div class="aboutContent openSans">
            <div class="card">

                <div class="imgFull" style="background: url('./img/logoSmall.png') center center/contain no-repeat;"></div>
                <span id="OurStory" class="anchor"></span>
                <h2 class="dancingScript">OUR STORY</h2> 


                <div class="">
                    <p>
                        <span class="large">W</span>e began with a plan to provide kosher breast milk for observant parents of preemies.
                        Although by strict Jewish law these babies can use pasteurized human milk from any milk bank,
                        if possible milk from a Jewish woman should be used (<i>Shulchan Aruch Yoreh Deah 81:7</i>).
                        Some will recall the story in the beginning of Shemos/Exodus: When Pharaoh’s daughter found Moshe in the river,
                        she passed him to numerous Egyptian wet nurses, but Moshe refused to latch (<i>see Rashi 2:7</i>).
                        Miriam, Moshe’s sister, ultimately brought a Jewish wet nurse – Yocheved, Moshe’s mother.
                    </p>
                    <p>
                        With good intentions, some observant parents will use kosher unpasteurized milk from a relative or family friend.
                        Unfortunately, using milk from an unscreened donor can lead to disastrous results,
                        including a case that left the infant with cytomegalovirus (CMV).
                    </p>
                    <div class="left montserrat snippet">“Using milk from an unscreened donor can lead to disastrous results”</div>


                    <p>
                        <span class="large">W</span>hile we still support kosher, we’ve expanded our vision.
                        The push toward all-natural and better-for-you foods over the past few years hasn’t stopped.
                        More recently, people began looking to provide their kids with the absolute best nutrition possible from the outset – breast milk.
                        Even the formula companies agree - that’s why their products are full of claims that emphasize how they’re “now closer than ever to breast milk!”
                        But you can’t beat the real thing.
                    </p>
                    <div class="imgFull" style="background: url('./img/breast-milk.jpg') center 20%/cover;"></div>


                    <p>
                        <span class="large">W</span>hat happens when mother wants to nurse, but for some reason she can’t?
                        There are milk banks around the US that provide safe human milk.
                        Understandably, they prioritize fragile over healthy babies.
                        So moms are forced to look elsewhere for milk.
                        Some turn to informal milk sharing groups, and others to online marketplaces where milk is bought and sold.
                        The donors aren’t screened, and the milk isn’t tested and pasteurized.
                        Studies have shown that milk purchased from these sites can contain water,
                        cow’s milk and even dangerous bacteria.
                    </p>
                    <div class="right montserrat snippet">“Milk purchased from alternative sources can contain water, cow’s milk and even dangerous bacteria.”</div>


                    <p>
                        <span class="large">T</span>he 
                        <a class="colorLink" href="https://www.fda.gov/ScienceResearch/SpecialTopics/PediatricTherapeuticsResearch/ucm235203.htm">
                            FDA
                        </a> 
                        and 
                        <a class="colorLink" href="http://pediatrics.aappublications.org/content/139/1/e20163440">
                            American Academy of Pediatrics
                        </a>
                        have advised against informal sharing since pathogens such as HIV and T-cell leukemia
                        can pass through breast milk. Prescription and recreational drugs are also passed through milk.
                        And without following strict protocols, even safe milk can pick up harmful bacteria in the handling and storage process.
                    </p>

                    <img class="left imgHalf" src="./img/cuteBabyGirl.jpg"/>

                    <p>
                        The bottom line is that even with the best of intentions, without proper protocols,
                        sharing milk can be life-threatening to a baby. Yet milk sharing is growing.
                    </p>

                    <!-- <div class="left imgHalf" style="background: url('./img/cuteBabyGirl.jpg') center center/cover;"></div> -->
                    <p>
                        <span class="large">T</span>o combat this, Yocheved’s Gift was established to collect, test,
                        pasteurize and disburse donor breast milk to babies across the country.
                        We are in touch with the 
                        <a class="colorLink" href="https://www.hmbana.org/">
                            Human Milk Banking Association of North America 
                        </a>(HMBANA)
                        and it is our intention to work with them on developing standards for the for-profit breast milk market. 
                    </p>

                </div>
                <div class="clearFix"></div>
            </div>
            <div class="card">
                <span id="WhoWeAre" class="anchor"></span>

                <h2 class="dancingScript marginTop">WHO WE ARE</h2> 
                <div class="imgFull" style=" background: url('./img/sleepingPreemie.jpeg') center center/cover"></div>           
                <p>
                    <span class="large">S</span>ury Weinstock MS, Ed. – As a Special Education therapist working in Early Childhood
                    (Birth -3 years), Sury is in a unique position to understand the effects of
                    developmental delays and the lengths parents will go to minimize any condition.
                    Breastmilk, the best preventive “medicine” that Hashem created,
                    is an intervention that would only have beneficial impact on cognitive functioning
                    as well as other short- and long-term medical and neurodevelopmental advantages.
                    Sury is passionate about providing anything that will give kids a leg up –
                    the earlier good things are introduced the more impact it will have on their lives.
                </p>
            </div>
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
    <script src="./js/about.js"></script>

</body>
</html>
