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
			margin-left: 600px;
		}
		label{
			font-family: Arial;
		}
		button{
			margin-left: 75%;
			border-radius: 6px;
			height: 50px;
			background-color: yellowgreen;
		}
	</style>
</head>
<body>
	<br>
		<h1 align="center">Allow Farmer Request For Seller</h1>
		<hr />
		<c:forEach var="eqpt_reqt" items="${equipment_request_master}">
			<div class="view-box">
				<label>Farmer ID :- ${eqpt_reqt.farmer_id}</label><br>
				<label>Farmer Mob no :- ${eqpt_reqt.farmer_mob_no}</label><br>
				<label>Seller ID :- ${eqpt_reqt.requested_seller_id}</label><br>
				<label>Plant-Care Equipment Needed :- ${eqpt_reqt.need_caring_equipment}</label><br>
				<label>Equip Days :- ${eqpt_reqt.ce_equip_days}</label><br>
				<label>Planting-Harvesting Equipment Needed :- ${eqpt_reqt.need_planting_harvesting_equipment}</label><br>
				<label>Equip Days :- ${eqpt_reqt.phe_equip_days}</label><br>
				<label>Irrigation Equipment Needed :- ${eqpt_reqt.need_irrigation_equipment}</label><br>
				<label>Equip Days :- ${eqpt_reqt.ie_equip_days}</label><br>
				<br>
				<input type="hidden" id="request_id" value="${eqpt_reqt.sl_no}" />
				<button class="btn_verify">Allow request</button>
			</div><br><br>
		</c:forEach>

		<script type="text/javascript" src="js/jqcdnlink.js"></script>
		<script type="text/javascript">
			$(".btn_verify").on('click',function(){
					txt_request_id = $(this).parents('div').find('#request_id');
					//alert(txt_request_id.val());
					$.ajax({
						url:"/verify_farmer_request",
						method:"POST",
						data:{sl_no:txt_request_id.val()},
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