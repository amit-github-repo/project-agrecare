<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tomato Plant Details</title>
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
                <h1 class="fw-bolder">Tomato Plant Details</h1>
                <p class="lead">A vegetable that look red. </p>
                <a class="btn btn-lg btn-light" href="#about">Start scrolling!</a>
            </div>
        </header>
        <!-- About section-->
        <section id="about">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>About This plant</h2>
                        <p class="lead">Tomato, (Solanum lycopersicum), flowering plant of the nightshade family (Solanaceae), cultivated extensively for its edible fruits. Labelled as a vegetable for nutritional purposes, tomatoes are a good source of vitamin C and the phytochemical lycopene. The fruits are commonly eaten raw in salads, served as a cooked vegetable, used as an ingredient of various prepared dishes, and pickled. Additionally, a large percentage of the world's tomato crop is used for processing; products include canned tomatoes, tomato juice, ketchup, puree, paste, and "sun-dried" tomatoes or dehydrated pulp.</p>
                        <ul>
                            <li>The water content of tomatoes is around 95%. </li>
                            <li>The other 5% consists mainly of carbohydrates and fiber.</li>
                            <li>Fresh tomatoes are low in carbs. The carb content consists mainly of simple sugars and insoluble fibers.</li>
                            <li>They are a great source of vitamin C, potassium, folate, and vitamin K.</li>
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
                        <img src="images/tomato plant.jpeg" alt="test Img" style="float: right;border-radius: 6px;object-fit: cover;border: 1px black;width: 300px;height: 100%;margin: 0px 0px 15px 20px;" />
                        <p class="lead">Tomato plants are generally much branched, spreading 60-180 cm (24-72 inches) and somewhat trailing when fruiting, but a few forms are compact and upright. Leaves are more or less hairy, strongly odorous, pinnately compound, and up to 45 cm (18 inches) long. The five-petaled flowers are yellow, 2 cm (0.8 inch) across, pendant, and clustered. Fruits are berries that vary in diameter from 1.5 to 7.5 cm (0.6 to 3 inches) or more. They are usually red, scarlet, or yellow, though green and purple varieties do exist, and they vary in shape from almost spherical to oval and elongate to pear-shaped. Each fruit contains at least two cells of small seeds surrounded by jellylike pulp. tomatoes are a warm-weather crop, hothouses permit their cultivation in the winter or in cool climates.</p>
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
                        <p class="lead"> The tomato was introduced to Europe by the Spanish in the early 16th century, and the Spanish and Italians seem to have been the first Europeans to adopt it as a food.Tomatoes were introduced to North America from Europe. Thomas Jefferson is known to have raised them at Monticello in 1781. The tomato was used for food in Louisiana as early as 1812, but not in the northeastern states until about 1835. It did not attain widespread popularity in the United States until the early 20th century. The plant is now grown commercially throughout the world.</p>
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
