<!DOCTYPE html>
<html >
<head>
  <title>Yocheved's Gift: Every Drop Counts</title>
  @include head.incl
  <link rel="stylesheet" href="./css/homeStyles.css">
</head>
<body>

    <div id="header">
            <div id="blur1" class="blur"></div>
            <div id="blur2" class="blur" style='background: url("./img/slide2.jpg") center 10% no-repeat;
            background-size: cover; position: absolute;'></div>

        <div id="page-select">
            <div class = "select active"></div>
            <div class = "select"></div>
            <div class = "select"></div>
            <div class = "select"></div>
        </div>

        <div class="headerContent">
           @include header.incl

            <div class="slideContent active">
                <div class="tagLine">
                    <h2>
                        Share your <span class="emphasis">gift</span>
                    </h2>
                    <h2>
                        with others
                    </h2>
                </div><div class="question">
                    Pasteurized donor breast milk is the best option for 
                    those without a sufficient milk supply.
                    <a class="button cta" href="./donate.html">Learn More   ►</a>
                </div>
            </div>

            <div class="slideContent">
                <div class="tagLine">
                    <h2>
                        Every precious <span class="emphasis">drop</span> counts
                    </h2>
                </div><div class="question">
                    Every ounce will enable families to provide their
                    children with the best nutrition available.
                    <a class="button cta" href="./donate.html">Learn More   ►</a>
                </div>
            </div>

            <div class="slideContent">
                <div class="tagLine">
                    <h2>
                        Mother's milk can <span class="emphasis">save lives</span>
                    </h2>
                </div><div class="question">
                    Human milk gives all babies the best start in life, 
                    but for premature or medically fragile infants, breast milk is life-saving.
                    <a class="button cta" href="./donate.html">Learn More  ►</a>
                </div>
            </div>

            <div class="slideContent">
                <div class="tagLine">
                    <h2>
                        Safe <span class="emphasis">kosher</span> milk
                    </h2>
                    <h2>
                        for our community
                    </h2>
                </div><div class="question">
                    Helping parents safely provide milk from a kosher source when they cannot.
                    <a class="button cta" href="./donate.html">Learn More   ►</a>
                </div>
            </div>
        </div>
    </div>

    <div class="homeContent row">
        <div class="text col">
            <div class="innerText">
                Your extra milk could help our littlest people
                while giving their parents the peace of mind of knowing
                they’re providing their baby with the best nutrition possible. 
            </div>
        </div><div class="callout col">
            <div class="pink">
                Receive up to $1.10 for every qualified ounce of breast milk received.*
                <a class="button cta right" href="./donate.html#compensation">Learn More   ►</a>
                <ul class="clearFix"></ul>
            </div>
            <div class="blue">
                <div class="finePrint" >
                    *Compensation is for time and effort and starts with your first donation of qualified milk.
                    Milk volume is used as an indirect measure of time and effort for milk donation.
                    Milk volume will be as determined by Yocheved’s Gift (YG), in its sole discretion.
                    YG will weigh the milk, at the time and in the condition that it is received,
                    and calculate the volume based on measured weight, excluding any packaging materials.
                </div>
            </div>
        </div>
    </div>

    @include footer.incl
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,400i|Raleway:400,700" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-2.1.4.min.js"
        integrity="sha384-R4/ztc4ZlRqWjqIuvf6RX5yb/v90qNGx6fS48N0tRxiGkqveZETq72KgDVJCp2TC
                    sha256-8WqyJLuWKRBVhxXIL1jBDD7SDxU936oZkCnxQbWwJVw="
        crossorigin="anonymous">
    </script>
    <script  src="./js/animation.js"></script>
    <script  src="./js/home.js"></script>


</body>
</html>
