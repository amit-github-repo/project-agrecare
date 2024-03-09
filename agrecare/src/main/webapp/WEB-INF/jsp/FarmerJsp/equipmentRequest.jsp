<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Farmer equipment request to seller.</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<jsp:include page="farmerHeader.jsp" />
		<style type="text/css">
			.view-box{
				width: 50%;
				height: 400px;
				background-color: lightgreen;
				padding-top: 15px;
				padding-left: 15px;
				padding-right: 15px;
				padding-bottom: 15px;
				border-radius: 6px;
				margin-left: 475px;
			}

			.view-seller-box{
				width: 85%;
				height: auto;
				padding-top: 15px;
				padding-left: 15px;
				padding-right: 15px;
				padding-bottom: 15px;
				border-radius: 6px;
				margin-left: 100px;

			}
			.input-box {
				width: 100%;
			}
			.input-box label {
			  color: #333;
			  font-size: 17px;
			  padding-left: 5px;
			}
			.input-box input {
			  position: relative;
			  height: 40px;
			  width: 100%;
			  outline: none;
			  font-size: 17px;
			  color: #707070;
			  margin-top: 8px;
			  border: 1px solid #ddd;
			  border-radius: 6px;
			  padding: 0 15px;
			}

			label{
				font-family: Arial;
				font-size: 20px;
			}

			.column {
			  display: flex;
			  column-gap: 15px;
			}
			.view-box button{
				margin-left: 25%;
				width: 50%;
				border-radius: 6px;
				background-color: sandybrown;
				outline: none;
			}
		</style>
	</head>
	<body>
		<br>
		<h1 align="center">Request for Equipment to Seller</h1>
		<hr /><br /><h4 style="color: red;">${sms}</h4><br />
			<div class="view-box">
				<form action="/equipment_request_to_seller" method="post">
					<input type="hidden" name="farmer_id" value="<% out.print(session.getAttribute("email")); %>" />
					<div class="column">
						<div class="input-box">
				          <label>Your Mob. No :-</label><br />
				          <input type="text" name="farmer_mob_no" placeholder="Enter Mob. no" required />
				        </div>
				        <div class="input-box">
				          <label>Enter Seller Id :-</label><br />
				          <input type="text" name="requested_seller_id" placeholder="Enter Seller Id" required />
				        </div>
				    </div>
				    <div class="column">
						<div class="input-box">
				          <label>How many caring equipment needed :-</label><br />
				          <input type="text" name="need_caring_equipment" required />
				        </div>
				        <div class="input-box">
				          <label>For how many days :-</label><br />
				          <input type="text" name="ce_equip_days" required />
				        </div>
				    </div>
				    <div class="column">
						<div class="input-box">
				          <label>How many planting harvesting equipment needed :-</label><br />
				          <input type="text" name="need_planting_harvesting_equipment" required />
				        </div>
				        <div class="input-box">
				          <label>For how many days :-</label><br />
				          <input type="text" name="phe_equip_days" required />
				        </div>
				    </div>
				    <div class="column">
						<div class="input-box">
				          <label>How many irrigation equipment needed :-</label><br />
				          <input type="text" name="need_irrigation_equipment" required />
				        </div>
				        <div class="input-box">
				          <label>For how many days :-</label><br />
				          <input type="text" name="ie_equip_days" required />
				        </div>
				    </div>
				    <br />
				    <button>Create request</button>
				</form>
			</div>
		<br /><br /><hr />
		<div class="view-seller-box">
			<h2 align="center" style=" color: darkblue;">Available equipment and its price</h1>
			<table class="table">
			<tr>
				<th>Email ID</th>
				<th>Store Address</th>
				<th>Mob. No</th>
				<th>Plant-Care Eqpt.</th>
				<th>Per Price</th>
				<th>Planting-Harvesting Eqpt.</th>
				<th>Per Price</th>
				<th>Irrigation Eqpt.</th>
				<th>Per Price</th>
			</tr>
			<c:forEach var="equipment" items="${equipment_master}">
				<tr>
					<td><label>${equipment.user_id}</label></td>
					<td><label>${equipment.store_address}</label></td>
					<td><label>${equipment.phone_no}</label></td>
					<td><label>${equipment.caring_equipment}</label></td>
					<td><label>${equipment.ce_price}</label></td>
					<td><label>${equipment.planting_harvesting_equipment}</label></td>
					<td><label>${equipment.phe_price}</label></td>
					<td><label>${equipment.irrigation_equipment}</label></td>
					<td><label>${equipment.ie_price}</label></td>
				</tr>
			</c:forEach>
		</table>
		</div>
		<jsp:include page="../AnonymousJsp/footer.jsp" />
	</body>
</html>

