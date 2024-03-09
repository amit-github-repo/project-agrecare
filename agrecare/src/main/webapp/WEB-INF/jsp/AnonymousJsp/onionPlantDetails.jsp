<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Onion Plant Details</title>
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
                <h1 class="fw-bolder">Onion Plant Details</h1>
                <p class="lead">Onions are among the world’s oldest cultivated plants.</p>
                <a class="btn btn-lg btn-light" href="#about">Start scrolling!</a>
            </div>
        </header>
        <!-- About section-->
        <section id="about">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>About This plant</h2>
                        <p class="lead">Most whole onions are slightly dried before marketing, making their skins dry and paper-thin. Onions are also available in various processed forms. Boiled and pickled onions are packed in cans or jars. Frozen onions are available chopped or whole, and bottled onion juice is sold for use as a flavouring. Dehydrated onion products have been available since the 1930s; such products include granulated, ground, minced, chopped, and sliced forms. Onion powder is made by grinding dehydrated onions and is sometimes packaged in combination with salt. Dried onion products are used in a variety of prepared foods and are also sold directly to the consumer for use as condiments.</p>
                        <ul>
                            <li>Researchers have examined allium vegetables extensively in relation to cancer, especially stomach and colorectal cancers.</li>
                            <li>This is a good source of vitamin C.Collagen provides structure to skin and hair.</li>
                            <li>Quercetin, a compound in onion skin, had links to lower blood pressure</li>
                            <li>One cup of chopped onion provides:64 calories,2.72g of fiber,6.78g of sugar</li>
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
                        <img src="images/onion plant.jpeg" alt="test Img" style="float: right;border-radius: 6px;object-fit: cover;border: 1px black;width: 300px;height: 100%;margin: 0px 0px 15px 20px;" />
                        <p class="lead">The common onion has one or more leafless flower stalks that reach a height of 75-180 cm (2.5-6 feet), terminating in a spherical cluster of small greenish white flowers. Some flower clusters produce bulbils, tiny secondary bulbs that can be used to asexually propagate new plants. The concentric leaf bases of the developing plant swell to form the underground edible bulb. Most commercially cultivated onions are grown from the plant's small black seeds, which are sown directly in the field, but onions may also be grown from small bulbs or from transplants. Onions are very hardy and can survive in a wide range of growing conditions. The bulbs vary in size, shape, colour, and pungency, though warmer climates generally produce onions with a milder, sweeter flavour than do other climates. The onion's characteristic pungency results from the sulfur-rich volatile oil it contains; the release of this oil during peeling or chopping brings tears to the eyes.</p>
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
                        <p class="lead">They were probably known in India, China, and the Middle East before recorded history. Ancient Egyptians regarded the spherical bulb as a symbol of the universe, and the concentric spheres of the Aristotelian cosmos were also likened to an onion.Curative powers have been attributed to onions throughout the centuries; they have been used in folk medicine for such varied ailments as colds, earaches, laryngitis, animal bites, burns, and warts.</p>
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
