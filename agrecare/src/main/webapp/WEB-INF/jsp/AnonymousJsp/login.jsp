<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>AgreCare Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
  </head>
  <body>
    <div class="login_form">
      <form action="/login_user" method="POST" class="form" >
          <h1 class="form_title"> Log In </h1>
          <h4 align="right"><a href="/Register-User">Register New User</a></h4>
          <h3>${sms}</h3>

          <div class="form_div">
              <input type="text" class="form_input" name="login_user_id" placeholder=" ">
              <label class="form_label">Email</label>
          </div>

          <div class="form_div">
              <input type="password" class="form_input" name="login_user_password" placeholder=" ">
              <label class="form_label">Password</label>
          </div>
          <input type="hidden" id="org_captcha" name="org_captcha" value="" />
          <input type="text" id="user_captcha" name="user_captcha"class="form_input_captcha" placeholder="Enter Captcha" value=""/>
          

          <input type="submit" class="form_button" value="Log In">
      </form>
      
      <div id="captcha" class="form_div">
        <div class="preview"></div>
        <div class="captcha_form"> 
            <input type="text" id="captcha_form" class="form_input_captcha" placeholder=" ">
            <label class="form_label_captcha">Enter Captcha</label>
            <button class="captcha_refersh">
              <i class="fa fa-refresh"></i>
            </button>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="js/login.js"></script>
    <jsp:include page="footer.jsp" />
  </body>
</html>
