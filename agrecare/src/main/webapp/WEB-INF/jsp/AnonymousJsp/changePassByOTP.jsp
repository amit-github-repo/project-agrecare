<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>OTP in JS</title>
	<style type="text/css">
		* {
			box-sizing: border-box;
			font-family: 'poppins', sans-serif;
		}
		body {
			text-align: center;
			display: flex;
			align-items: center;
			justify-content: center;
			margin: 0;
			padding: 0;
			height: 100vh;
		}
		.form {
			width: 500px;
			background-color: #eeeeee;
			padding: 0 30px;
			display: grid;
			gap: 20px;
			padding-bottom: 30px;
		}
		input {
			width: 100%;
			padding: 10px;
		}
		.otpverify {
			width: 100%;
			display: flex;
			gap: 20px;
		}
		.btn {
			padding: 10px;
			background-color: #82eec1;
			outline: none;
			border: none;
			cursor: pointer;
			border-radius: 5px;
			width: 150px;
		}
		.otpverify{
			display: none;
		}
	</style>
</head>
<body>
	<div class="form">
		<h1>OTP Using JavaScript</h1>
		<input type="hidden" id="email" value="<% out.print(session.getAttribute("email")); %>">
		<input type="password" id="password" placeholder="Enter new password...">
		<div class="otpverify">
			<input type="text" id="otp_inp" placeholder="Enter the OTP sent to your Email...">
			<button class="btn" id="otp-btn">Verify</button>
		</div>
		<button class="btn" onclick="sendOTP()">Send OTP</button>
	</div>

	<script src="js/changePassByOTP.js"></script>
	<script src="https://smtpjs.com/v3/smtp.js"></script>
	<script type="text/javascript" src="js/jqcdnlink.js"></script>
</body>
</html>
