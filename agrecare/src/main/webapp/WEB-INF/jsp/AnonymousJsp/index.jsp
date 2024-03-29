<!-- 
<script type="text/javascript" src="js/jqcdnlink.js"></script>

<script type="text/javascript">
  $(document).ready(function(){
    alert("hello cdn");
  })
</script>


<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jstest.js"></script>
<link rel="stylesheet" type="text/css" href="css/csstest.css">

<img src="images/Poo.jpg" wigth="500" height="200" />
<input type="button" value="Ok" class="btn btn-warning" onclick="show()" />

 -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Arialogic</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded" style="background-image:url('images/01.png');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper overlay">
    <header id="header" class="hoc clear">
      <nav id="mainav" class="clear"> 
        <!-- ################################################################################################ -->
        <ul class="clear">
          <li class="active"><a href="/index">Home</a></li>
          <li><a class="drop" href="#">Pages</a>
            <ul>
              <li><a href="pages/gallery.html">Gallery</a></li>
              <li><a href="pages/full-width.html">Full Width</a></li>
              <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
              <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
              <li><a href="pages/basic-grid.html">Basic Grid</a></li>
            </ul>
          </li>
          <li><a class="drop" href="#">Dropdown</a>
            <ul>
              <li><a href="#">Level 2</a></li>
              <li><a class="drop" href="#">Level 2 + Drop</a>
                <ul>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                </ul>
              </li>
              <li><a href="#">Level 2</a></li>
            </ul>
          </li>
          <li><a href="/login">Login</a></li>
          <li><a href="#">Link Text</a></li>
          <li><a href="#">Link Text</a></li>
          <li><a href="#">Long Link Text</a></li>
        </ul>
        <!-- ################################################################################################ -->
      </nav>
      <div id="logo"> 
        <!-- ################################################################################################ -->
        <h1><a href="/index">Arialogic</a></h1>
        <p>phasellus suscipit ultricies</p>
        <!-- ################################################################################################ -->
      </div>
    </header>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <div class="introtxt">
        <p class="font-xs nospace">Laoreet tellus quis finibus metus</p>
        <h2 class="heading">Mauris integer finibus</h2>
        <p>Nunc quis arcu congue congue nulla sed nisl libero quis mollis eros bibendum efficitur praesent placerat dui eu sem sollicitudin fermentum in lobortis urna vitae dui convallis sed pulvinar ipsum.</p>
      </div>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn inverse" href="#">Porttitor</a></li>
          <li><a class="btn" href="#">Fringilla</a></li>
        </ul>
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading">Consectetur suspendisse</h2>
      <p>Potenti nam aliquet varius dolor ut lobortis morbi sit amet rutrum nunc cras imperdiet consequat eros nec efficitur sed placerat lacus orci sed eleifend odio aliquam vitae etiam imperdiet feugiat nisl non accumsan ante eleifend.</p>
    </div>
    <ul class="nospace group blocks">
      <li class="one_quarter first bgded overlay" style="background-image:url('images/320x320.png');"><a class="btn medium" href="#">Fermentum</a><br>
        Ultrices</li>
      <li class="one_quarter bgded overlay" style="background-image:url('images/320x320.png');"><a class="btn medium" href="#">Hendrerit</a><br>
        Posuere</li>
      <li class="one_quarter bgded overlay" style="background-image:url('images/320x320.png');"><a class="btn medium" href="#">Gravida</a><br>
        Cubilia</li>
      <li class="one_quarter bgded overlay" style="background-image:url('images/320x320.png');"><a class="btn medium" href="#">Porttitor</a><br>
        Convallis</li>
    </ul>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="bgded overlay" style="background-image:url('images/01.png');">
  <section id="testimonials" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading">Etiam proin porta interdum</h2>
      <p>Purus vestibulum ante ipsum primis in faucibus orci luctus turpis ullamcorper dolor gravida ut laoreet arcu finibus praesent tincidunt nulla id augue hendrerit ac eleifend turpis tempor suspendisse fringilla massa nec laoreet.</p>
    </div>
    <ul class="nospace group">
      <li class="one_half first">
        <div class="clear"><img src="images/80x80.png" alt=""> <span class="block"><strong>A.Doe</strong> / <em>Position, Company Name</em></span>
          <blockquote>Ornare sed nec sagittis nisi nulla nec aliquam mi interdum et malesuada fames&hellip;</blockquote>
        </div>
      </li>
      <li class="one_half">
        <div class="clear"><img src="images/80x80.png" alt=""> <span class="block"><strong>B.Doe</strong> / <em>Position, Company Name</em></span>
          <blockquote>Ac ante ipsum primis in faucibus curabitur cursus est nec turpis posuere aliquet&hellip;</blockquote>
        </div>
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading">Proin a felis tellus donec</h2>
      <p>Fringilla nisi ut arcu facilisis gravida nullam bibendum nisi risus id viverra felis pharetra eu donec ut lorem risus nullam iaculis lacinia massa et accumsan urna laoreet fermentum etiam ipsum enim bibendum id varius.</p>
    </div>
    <ul class="nospace elements">
      <li class="one_third first">
        <article><a href="#"><img src="images/320x220.png" alt=""></a>
          <div class="txtwrap">
            <h6 class="heading">Malesuada posuere</h6>
            <time datetime="2045-04-06">6<sup>th</sup> April 2045</time>
            <p>Ante pulvinar hendrerit ipsum ut scelerisque sapien purus sit amet&hellip;</p>
            <footer><a href="#">Read More &raquo;</a></footer>
          </div>
        </article>
      </li>
      <li class="one_third">
        <article><a href="#"><img src="images/320x220.png" alt=""></a>
          <div class="txtwrap">
            <h6 class="heading">Vivamus sit amet</h6>
            <time datetime="2045-04-05">5<sup>th</sup> April 2045</time>
            <p>Sagittis in aenean porta semper tortor vel blandit magna integer ac&hellip;</p>
            <footer><a href="#">Read More &raquo;</a></footer>
          </div>
        </article>
      </li>
      <li class="one_third">
        <article><a href="#"><img src="images/320x220.png" alt=""></a>
          <div class="txtwrap">
            <h6 class="heading">Pulvinar nisl non</h6>
            <time datetime="2045-04-04">4<sup>th</sup> April 2045</time>
            <p>Neque malesuada euismod proin sit amet nisl velit mauris orci nisl&hellip;</p>
            <footer><a href="#">Read More &raquo;</a></footer>
          </div>
        </article>
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper coloured">
  <div class="hoc clear"> 
    <!-- ################################################################################################ -->
    <figure id="logos">
      <ul class="nospace group">
        <li><a href="#"><img src="images/logo.png" alt=""></a></li>
        <li><a href="#"><img src="images/logo.png" alt=""></a></li>
        <li><a href="#"><img src="images/logo.png" alt=""></a></li>
        <li><a href="#"><img src="images/logo.png" alt=""></a></li>
        <li><a href="#"><img src="images/logo.png" alt=""></a></li>
      </ul>
      <figcaption class="hidden"><a class="btn small" href="#">More &raquo;</a></figcaption>
    </figure>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_quarter first">
      <h6 class="title">Elementum aliquet</h6>
      <ul class="nospace linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          Street Name &amp; Number, Town, Postcode/Zip
          </address>
        </li>
        <li><i class="fa fa-phone"></i> +00 (123) 456 7890<br>
          +00 (123) 456 7890</li>
        <li><i class="fa fa-fax"></i> +00 (123) 456 7890</li>
        <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="title">Nibh aenean lacinia</h6>
      <ul class="nospace linklist">
        <li><a href="#">Mattis est suscipit posuere</a></li>
        <li><a href="#">Nunc lacus sodales urna nec</a></li>
        <li><a href="#">Fermentum ipsum augue id</a></li>
        <li><a href="#">Ex laoreet urna sollicitudin</a></li>
        <li><a href="#">Luctus nulla vitae tincidunt</a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="title">Suscipit magna sed</h6>
      <p class="btmspace-30">Varius libero molestie habitasse sed platea dictumst proin.</p>
      <form method="post" action="#">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit">Submit</button>
        </fieldset>
      </form>
    </div>
    <div class="one_quarter">
      <h6 class="title">Sed elit nullam</h6>
      <ul class="nospace linklist">
        <li>
          <article>
            <h2 class="nospace font-x1"><a href="#">Scelerisque lacus </a></h2>
            <time class="font-xs block btmspace-10" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
            <p class="nospace">A metus luctus quis hendrerit sed vel elit ac mauris facilisis&hellip;</p>
          </article>
        </li>
        <li>
          <article>
            <h2 class="nospace font-x1"><a href="#">Vehicula tortor</a></h2>
            <time class="font-xs block btmspace-10" datetime="2045-04-05">Thirsday, 5<sup>th</sup> April 2045</time>
            <p class="nospace">Ornare elit sed quam ultricies non rhoncus mauris ornare&hellip;</p>
          </article>
        </li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.backtotop.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<!-- IE9 Placeholder Support -->
<script src="js/jquery.placeholder.min.js"></script>
<!-- / IE9 Placeholder Support -->
</body>
</html>
