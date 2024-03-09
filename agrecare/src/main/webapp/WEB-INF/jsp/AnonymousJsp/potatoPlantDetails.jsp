<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Potato Plant Details</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/plantDetails.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand" href="#page-top">AgreCare</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="/Crop-Details">All Crops</a></li>
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Description</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">History</a></li>
                        <li class="nav-item"><a class="nav-link"><button onclick="generatePDF()">Download</button></li>
                    </ul>
                </div>
            </div>
        </nav> 
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
            <div class="container px-4 text-center">
                <h1 class="fw-bolder">Potato Plant Details</h1>
                <p class="lead">A annual vegetable that grow underground. </p>
                <a class="btn btn-lg btn-light" href="#about">Start scrolling!</a>
            </div>
        </header>
        <!-- About section-->
        <section id="about">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>About This plant</h2>
                        <p class="lead">Potato is one of the major non-cereal food crops and currently ranks 4th in production in the world after maize, wheat and rice. The productivity of potato in India is quite low (9.97 t/ha) during the period of inception of AICRP (1970-71). The ample scope of improving the productivity of potato in sub-tropical climates of India was felt AICRP on Potato was established to carry out region specific trials on evaluation of new hybrids, agronomic practices, potato based cropping systems, control measures for various diseases and pests, potato storage practices and identification of methods for reducing post-harvest losses.</p>
                        <ul>
                            <li>Both white potatoes and sweet potatoes are nutrient-dense vegetables</li>
                            <li>They are cholesterol-free and sodium-free, with only 110 calories per 5.3oz serving.</li>
                            <li>Potatoes are also fat-free, gluten-free, plant-based, affordable, and a quality carbohydrate. </li>
                            <li>Potatoes are a source of vitamin C, protein, thiamin, and niacin.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services section-->
        <section class="bg-light" id="services">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>Physical description and cultivation</h2>
                        <img src="images/potato plant.jpeg" alt="test Img" style="float: right;border-radius: 6px;object-fit: cover;border: 1px black;width: 300px;height: 100%;margin: 0px 0px 15px 20px;" />
                        <p class="lead">The potato is one of some 150 tuber-bearing species of the genus Solanum (a tuber is the swollen end of an underground stem). The compound leaves are spirally arranged; each leaf is 20-30 cm (about 8-12 inches) long and consists of a terminal leaflet and two to four pairs of leaflets. The white, lavender, or purple flowers have five fused petals and yellow stamens. The fruit is a small poisonous berry with numerous seeds.The ends of the stolons may enlarge greatly to form a few to more than 20 tubers, of variable shape and size, usually ranging in weight up to 300 grams (10 ounces) but occasionally to more than 1.5 kg (3.3 pounds).</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact section-->
        <section id="contact">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>History</h2>
                        <p class="lead"> The potato is native to the Peruvian-Bolivian Andes. It was cultivated in South America by the Incas as early as 1,800 years ago. The Spaniards who colonized South America introduced potatoes into Europe during the second half of the 16th century.It is an annual plant in the nightshade family (Solanaceae), grown for its starchy edible tubers. The potato is native to the Peruvian-Bolivian Andes and is one of the world's main food crops. </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- html2pdf js link-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
        <script src="js/myhtml2pdf.js"></script>
        <!-- Bootstrap core JS-->
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/plantDetails.js"></script>
        <jsp:include page="../AnonymousJsp/footer.jsp" />
    </body>
</html>
