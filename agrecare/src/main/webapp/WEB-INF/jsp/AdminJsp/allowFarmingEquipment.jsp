<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Allow Farming Equipment For Farmer</title>
	<jsp:include page="adminHeader.jsp" />
	<style type="text/css">
		.view-box{
			width: 30%;
			height: 325px;
			background-color: lightgreen;
			padding-top: 15px;
			padding-left: 15px;
			padding-right: 15px;
			padding-bottom: 15px;
			border-radius: 6px;
			margin-left: 575px;
		}
		label{
			font-family: Arial;
		}
		button{
			margin-left: 75%;
			border-radius: 6px;
			background-color: lightsteelblue;
		}
	</style>
</head>
<body>
	<br>
		<h1 align="center">Allow Farming Equipment For Farmer</h1>
		<hr />
		<c:forEach var="equipment" items="${equipment_master}">
			<div class="view-box">
				<label>Email ID :- ${equipment.user_id}</label><br>
				<label>Store Address :- ${equipment.store_address}</label><br>
				<label>Store Address :- ${equipment.phone_no}</label><br>
				<label>Plant-Care Equipment :- ${equipment.caring_equipment}</label><br>
				<label>Per Equipment Price :- ${equipment.ce_price}</label><br>
				<label>Planting-Harvesting Equipment :- ${equipment.planting_harvesting_equipment}</label><br>
				<label>Per Equipment Price :- ${equipment.phe_price}</label><br>
				<label>Irrigation Equipment :- ${equipment.irrigation_equipment}</label><br>
				<label>Per Equipment Price :- ${equipment.ie_price}</label><br>
				<br>
				<input type="hidden" id="shop_id" value="${equipment.sl_no}" />
				<button class="btn_verify">Allow for service</button>
			</div><br><br>
		</c:forEach>

		<script type="text/javascript" src="js/jqcdnlink.js"></script>
		<script type="text/javascript">
			$(".btn_verify").on('click',function(){
					txt_shop_id = $(this).parents('div').find('#shop_id');
					//alert(txt_sl_no.val());
					$.ajax({
						url:"/verify_shop_equipments",
						method:"POST",
						data:{sl_no:txt_shop_id.val()},
						success:function(res){
							//alert(res);
							location.reload(true);
						}
					})
				})
		</script>
		<jsp:include page="../AnonymousJsp/footer.jsp" />
</body>
</html>