<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AgreCare Crop Details.</title>
  <style type="text/css">
    body {
      margin: 0;
    }
    .wrap {
      max-width: 980px;
      margin: auto;
    }

    /*.nav-logo {
      width: 24px;
      height: 24px;
      border-radius: 50%;
    }*/

    nav {
      align-items: center;
      justify-content: center;
      display: flex;
      padding: 0.5rem;
      background-color: green;
    }

    .heading-text {
      padding: 10px;
      margin: 0;
      color: white;
      font-size: 1.4rem;
      font-family: "Arial Rounded MT Bold";
    }

    .picture-cards {
      display: flex;
      padding: 2rem;
      border-bottom: 2px solid red;
    }

    .destination-pictures {
      width: 125px;
      height: 168px;
      padding-top: 2rem;
      object-fit: cover;
    }

    .destination-title {
      color: blueviolet;
      font-size: 1rem;
    }

    .picture-content {
      padding: 0 1rem;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <nav>
      <h4 class="heading-text">All Crops Details</h4>
    </nav>
    <div class="picture-cards">
      <img src="images/tomato plant.jpeg" alt="test Img" class="destination-pictures">
      <div class="picture-content">
        <h5 class="destination-title"><a href="/Tomato-plant-details">Tomato Plant</a></h5>
        <p>The tomato is the edible berry of the plant Solanum lycopersicum, commonly known as the tomato plant. The species originated in western South America, Mexico, and Central America. The Nahuatl word tomatl gave rise to the Spanish word tomate, from which the English word tomato derives.</p>
      </div>
    </div>

    <div class="picture-cards">
      <img src="images/potato plant.jpeg" alt="test Img" class="destination-pictures">
      <div class="picture-content">
        <h5 class="destination-title"><a href="/Potato-plant-details">Potato Plant</a></h5>
        <p>Potato is a vegetable. It grows underground basically a root which is swollen. The outer part is brown in color and the inner part is white.It is one of the most famous vegetables in the world. It is consumed in almost every country. There are many of types of potatoes. Each has their own color and taste. </p>
      </div>
    </div>

    <div class="picture-cards">
      <img src="images/onion plant.jpeg" alt="test Img" class="destination-pictures">
      <div class="picture-content">
        <h5 class="destination-title"><a href="/Onion-plant-details">Onion Plant</a></h5>
        <p>It is a biennial plant but is usually grown as an annual. Modern varieties typically grow to a height of 15 to 45 cm (6 to 18 in). The leaves are yellowish- to bluish green and grow alternately in a flattened, fan-shaped swathe. They are fleshy, hollow, and cylindrical, with one flattened side.</p>
      </div>
    </div>

    <div class="picture-cards">
      <img src="images/cabbage plant.jpeg" alt="test Img" class="destination-pictures">
      <div class="picture-content">
        <h5 class="destination-title"><a href="/Cabbage-plant-details">Cabbage Plant</a></h5>
        <p>Cabbage (Brassica oleracea) is a cruciferous vegetable. It is a leafy green or purple biennial plant, grown as an annual vegetable crop for its dense-leaved heads. Very firm, small heads are used for canning. The outer coarse leaves and the core are removed. </p>
      </div>
    </div>

    <div class="picture-cards">
      <img src="images/marrigold plant.jpg" alt="test Img" class="destination-pictures">
      <div class="picture-content">
        <h5 class="destination-title"><a href="/Marrigolds-plant-details">Marigolds Plant</a></h5>
        <p>Marigolds are annual plants. They are said to be annual because they are present only for one year.They commonly bloom in summer. Marigolds are edible flowers, which means we can eat them. It is a small and bushy plant. Sow the seed between March and May.</p>
      </div>
    </div>  
  </div>
  <jsp:include page="../AnonymousJsp/footer.jsp" />
</body>
</html>