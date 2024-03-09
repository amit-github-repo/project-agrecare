<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cabbage Plant Details</title>
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
                <h1 class="fw-bolder">Cabbage Plant Details</h1>
                <p class="lead">A leaf vegetable plant gown in winter.</p>
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
                            <li>Raw cabbage is 92% water, 6% carbohydrates, 1% protein, and contains negligible fat.</li>
                            <li>raw cabbage is a rich source of vitamin C and vitamin K, containing 44% and 72%, respectively, of the Daily Value</li>
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
                        <img src="images/cabbage plant.jpeg" alt="test Img" style="float: right;border-radius: 6px;object-fit: cover;border: 1px black;width: 300px;height: 100%;margin: 0px 0px 15px 20px;" />
                        <p class="lead">Cabbage seedlings have a thin taproot and cordate (heart-shaped) cotyledons. The first leaves produced are ovate (egg-shaped) with a lobed petiole. Plants are 40-60 centimetres tall in their first year at the mature vegetative stage, and 1.5-2 metres  tall when flowering in the second year.Heads average between 0.5 and 4 kilograms (1 and 8 pounds), with fast-growing, earlier-maturing varieties producing smaller heads.Most cabbages have thick, alternating leaves, with margins that range from wavy or lobed to highly dissected; some varieties have a waxy bloom on the leaves.About 90% of the root mass is in the upper 20-30 cm (8-12 in) of soil; some lateral roots can penetrate up to 2 m deep.</p>
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
                        <p class="lead">Although cabbage has an extensive history, originally found in Britain and continental Europe.  According to the triangle of U theory of the evolution and relationships between Brassica species, B. oleracea and other closely related kale vegetables (cabbages, kale, broccoli, Brussels sprouts, and cauliflower) represent one of three ancestral lines from which all other brassicas originated. Jacques Cartier first brought cabbage to the Americas in 1541-42. By the 18th century, it was commonly planted by both colonists and native American Indians.</p>
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
