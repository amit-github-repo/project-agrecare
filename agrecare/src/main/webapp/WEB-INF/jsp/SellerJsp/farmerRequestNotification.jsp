<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Allow Farming Equipment For Farmer</title>
	<jsp:include page="sellerHeader.jsp" />
	<style type="text/css">
		.view-box{
			width: 30%;
			height: 250px;
			background-color: lightgreen;
			padding-top: 15px;
			padding-left: 15px;
			padding-right: 15px;
			padding-bottom: 15px;
			border-radius: 6px;
			margin-left: 600px;
		}
		label{
			font-family: Arial;
		}
	</style>
</head>
<body>
	<br>
		<h1 align="center">Notification List</h1>
		<hr />
		<c:forEach var="eqpt_reqt" items="${seller_notification}">
			<div class="view-box">
				<label>Farmer ID :- ${eqpt_reqt.farmer_id}</label><br>
				<label>Farmer Mob no :- ${eqpt_reqt.farmer_mob_no}</label><br>
				<label>Plant-Care Equipment Needed :- ${eqpt_reqt.need_caring_equipment}</label><br>
				<label>Equip Days :- ${eqpt_reqt.ce_equip_days}</label><br>
				<label>Planting-Harvesting Equipment Needed :- ${eqpt_reqt.need_planting_harvesting_equipment}</label><br>
				<label>Equip Days :- ${eqpt_reqt.phe_equip_days}</label><br>
				<label>Irrigation Equipment Needed :- ${eqpt_reqt.need_irrigation_equipment}</label><br>
				<label>Equip Days :- ${eqpt_reqt.ie_equip_days}</label><br>
			</div><br><br>
		</c:forEach>
		<jsp:include page="../AnonymousJsp/footer.jsp" />
</body>
</html>