<%----%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
	<head>
		<meta charset="UTF-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
	    <link rel="stylesheet" href="css/registerUser.css" />
		<title>Adding Farming equipment on AgreCare</title>
	</head>
	<body>
		<section class="container">
	      	<header>Add Farming Equipment</header><br>
	     	<h4 style="color: red;">${sms}</h4>
	      	<form action="/addFarmingEquipment" method="post" class="form">
		        <div class="input-box">
		          	<label>Email Address</label>
		          	<input type="email" name="user_id" value="<% out.print(session.getAttribute("email")); %>" readonly required />
		        </div>
		        <div class="input-box">
		          	<label>Store Address</label>
		          	<input type="text" name="store_address" placeholder="Enter store Address" required />
		        </div>
		        <div class="input-box">
	            	<label>Phone Number</label>
	            	<input type="number" name="phone_no" placeholder="Enter phone number" required />
	         	</div>
	         	<div class="column">
		         	<div class="input-box">
		            	<label>Plant-Care Equipment</label>
		            	<input type="number" name="caring_equipment" placeholder="Enter available equipment no" required />
		         	</div>
		         	<div class="input-box">
		            	<label>Per Equipment Price</label>
		            	<input type="number" name="ce_price" placeholder="Enter price" required />
		         	</div>
	        	</div>
	        	<div class="column">
		         	<div class="input-box">
		            	<label>Planting-Harvesting Equipment</label>
		            	<input type="number" name="planting_harvesting_equipment" placeholder="Enter available equipment no" required />
		         	</div>
		         	<div class="input-box">
		            	<label>Per Equipment Price</label>
		            	<input type="number" name="phe_price" placeholder="Enter price" required />
		         	</div>
	        	</div>
	        	<div class="column">
		         	<div class="input-box">
		            	<label>Irrigation Equipment</label>
		            	<input type="number" name="irrigation_equipment" placeholder="Enter available equipment no" required />
		         	</div>
		         	<div class="input-box">
		            	<label>Per Equipment Price</label>
		            	<input type="number" name="ie_price" placeholder="Enter price" required />
		         	</div>
	        	</div>
	        	<button>Submit</button>
	      	</form>
    	</section>
	</body>
</html>

