<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		body {
		  font-family: "Lato", sans-serif;
		}

		.sidenav {
		  height: 100%;
		  width: 0;
		  position: fixed;
		  z-index: 1;
		  top: 0;
		  right: 0;
		  background-color: #111;
		  overflow-x: hidden;
		  transition: 0.5s;
		  padding-top: 60px;
		}

		.sidenav a {
		  padding: 8px 8px 8px 32px;
		  text-decoration: none;
		  font-size: 20px;
		  color: #818181;
		  display: block;
		  transition: 0.3s;
		}

		.sidenav a:hover {
		  color: #f1f1f1;
		}

		.sidenav .closebtn {
		  position: absolute;
		  top: 0;
		  right: 25px;
		  font-size: 36px;
		  margin-left: 50px;
		}

		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
	</style>
</head>
<body>

	<div id="mySidenav" class="sidenav">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	  <a href="#">View all farmer</a>
	  <a href="/addEquipment">Add Farming Equipment</a>
	  <a href="/Farmer-Request-Notification">Farmer Notification</a>
	  <a href="/Crop-Details">Crop details</a>
	  <a href="/Change-Pass">Change Password</a>
	  <a href="/logout">Logout</a>
	</div>
	<div align="right">
		<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
	</div>
	<h2>WellCome Seller to AgreCare</h2>
	<h3>Your User Id = ${email}</h3>
	<p>Organic farming is agriculture that makes healthy food, healthy soils, healthy plants, and healthy environments a priority, along with crop productivity.<br> Farmers use biological fertilizer inputs and management practices such as cover cropping and crop rotation to improve soil quality and build organic <br>soil matter. By increasing the amount of organic matter in the soil, farmers enhance the soil's ability to absorb water, reducing the impacts of <br>drought and flooding. Improving soil also helps it to absorb and store carbon and other nutrients need to grow healthy crops, which, in turn, are better <br>able to resist insects and diseases.</p>

	<script>
	function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
	}

	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	}
	</script>

</body>
</html> 
