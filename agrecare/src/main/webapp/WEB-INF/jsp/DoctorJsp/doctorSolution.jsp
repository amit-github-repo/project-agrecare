<%--
	<% byte[] s=(byte[])${problem.get(0).get("user_pics")}; %>
				<img src="data:image/jpg;base64,<%= Base64.getEncoder().encodeToString(s) %>" alt="img test">
	--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Doctor solution for farmer</title>
		<jsp:include page="doctorHeader.jsp" />
		<style type="text/css">
			.view-box{
				width: 50%;
				height: 400px;
				background-color: #ccc;
				padding-top: 15px;
				padding-left: 15px;
				padding-right: 15px;
				padding-bottom: 15px;
				border-radius: 6px;
				margin-left: 375px;
			}
			img {
				float: right;
				border: 1px dotted black;
				margin: 0px 0px 15px 20px;
				width: 250px;
				height: 100%;
				border-radius: 6px;
				object-fit: cover;
			}
			textarea {
				width: 450px; 
				height: 150px; 
				border: 2px solid #ccc; 
				border-radius: 6px;

			}
		</style>
	</head>
	<body><br>
		<h1 align="center">All Question from Farmer.</h1>
		<hr />
		<c:forEach var="problem" items="${problem_master}">
			<div class="view-box">
				<img src="images/${problem.user_pic_name}" alt="No-Image"/>
				<label>Name :- ${problem.user_name}</label><br>
				<label>Id :- ${problem.user_id}</label><br>
				<label>Address :- ${problem.user_address}</label><br>
				<label>Problem :- ${problem.farmer_problem}</label><br><br><br>
				<input type="hidden" id="problem_id" value="${problem.sl_no}" />
				<input type="hidden" id="doctor_id" value="<% out.print(session.getAttribute("email")); %>" />

				<textarea id="doctor_solution" placeholder="Doctor.. What your solution ?"></textarea>
				<button class="btn_add_sol">Add sol</button>
			</div><br><br>
		</c:forEach>

		<%--	Java Script code	--%>
		<script type="text/javascript" src="js/jqcdnlink.js"></script>
		<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript">
			$(".btn_add_sol").on('click',function(){
				txt_doctor_solution = $(this).parents('div').find('#doctor_solution');
				txt_doctor_id = $(this).parents('div').find('#doctor_id');
				txt_sl_no = $(this).parents('div').find('#problem_id');
				//alert(txt_sl_no.val()+" "+txt_doctor_id.val()+" "+txt_doctor_solution.val());
				$.ajax({
					url:"/add-doctor-solution",
					method:"POST",
					data:{doctor_solution:txt_doctor_solution.val() , doctor_id:txt_doctor_id.val() , sl_no:txt_sl_no.val()},
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

