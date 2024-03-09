<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Marrigold Plant Details</title>
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
                <h1 class="fw-bolder">Marrigold Plant Details</h1>
                <p class="lead">A flower which come from golden world.</p>
                <a class="btn btn-lg btn-light" href="#about">Start scrolling!</a>
            </div>
        </header>
        <!-- About section-->
        <section id="about">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <h2>About This plant</h2>
                        <p class="lead">Marigold, genus of about 50 species of annual herbs of the aster family (Asteraceae), native to southwestern North America, tropical America, and South America. The name marigold also refers to the pot marigold (genus Calendula) and unrelated plants of several families.Its dense heads of orange or yellow flowers are popularly planted in garden borders or as companion plants to deter pests in vegetable gardens. The Mexican marigold is also an important flower in Día de los Muertos observances in Mexico and other areas of Latin America.</p>
                        <ul>
                            <li>It is commonly cultivated in South Africa, where the species is also a useful pioneer plant in the reclamation of disturbed land.</li>
                            <li>South America, has been used as a source of essential oil for the perfume and industry known as tagette or "marigold oil", and as a flavourant in the food and tobacco industries.</li>
                            <li>Due to antibacterial thiophenes exuded by the roots, marrigold should not be planted near any legume crop.</li>
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
                        <img src="images/marrigold plant.jpg" alt="test Img" style="float: right;border-radius: 6px;object-fit: cover;border: 1px black;width: 300px;height: 100%;margin: 0px 0px 15px 20px;" />
                        <p class="lead">Marrigold species vary in size from 0.1 to 2.2 m tall. Most species have pinnate green leaves. Blooms naturally occur in golden, orange, yellow, and white colors, often with maroon highlights. Floral heads are typically 4-6 cm diameter, generally with both ray florets and disc florets. In horticulture, they tend to be planted as annuals, although the perennial species are gaining popularity. They have fibrous roots.Depending on the species, Marrigold species grow well in almost any sort of soil. Most horticultural selections grow best in soil with good drainage, and some cultivars are known to have good tolerance to drought.</p>
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
                        <p class="lead">Marigolds, both French and African, are indigenous to Mexico and Guatemala. They were discovered in the early 16th century and brought to Europe and Northern Africa in the late 16th century where they were quickly adopted into gardens. The family name, Tagetes, is derived from a mythical Etruscan deity.Queen Sophia is an older French Marigold with fully double flower in gold and maroon that was introduced in the early 1900's. Jolly Jester harkens back to the original wild French marigolds which had single, daisy-like flowers. Sparky was the result of an intensive breeding program initiated in the mid-20th century which produced several fine double French marigolds.</p>
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
