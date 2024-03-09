<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    <link rel="stylesheet" href="css/registerUser.css" />
  </head>
  <body>
    <section class="container">
      <header>Registration Form</header><br>
      <h4 style="color: red;">${sms}</h4>
      <form action="/registerUserData" method="post" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" name="user_name" placeholder="Enter full name" required />
        </div>
        <div class="input-box">
          <label>Email Address</label>
          <input type="email" name="user_id" placeholder="Enter email address" required />
        </div>
        <div class="input-box">
          <label>Password</label>
          <input type="password" name="user_password" placeholder="Enter login Password" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="number" name="user_phone_no" placeholder="Enter phone number" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="user_dob" placeholder="Enter birth date" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-male" name="gender" value="male" checked />
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-female" name="gender" value="female" />
              <label for="check-female">Female</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-other" name="gender" value="other" />
              <label for="check-other">prefer not to say</label>
            </div>
          </div>
        </div>

        <div class="gender-box">
          <h3>Role</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-farmer" name="role" value="farmer" checked />
              <label for="check-farmer">Farmer</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-doctor" name="role" value="doctor" />
              <label for="check-doctor">Doctor</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-seller" name="role" value="seller" />
              <label for="check-seller">Seller</label>
            </div>
          </div>
        </div>

        <div class="input-box address">
          <label>Address</label>
          <input type="text" name="user_address" placeholder="Enter street address" required />
          <div class="column">
            <div class="select-box">
              <select name="user_country">
                <option hidden>Country</option>
                <option>America</option>
                <option>Japan</option>
                <option>India</option>
                <option>Nepal</option>
              </select>
            </div>
            <input type="number" name="user_pin_code" placeholder="Enter postal code" required />
          </div>
          <div class="column">
            <input type="text" placeholder="Enter your region" required />
            <input type="text" placeholder="Enter your city" required />
          </div>
        </div>
        <button>Submit</button>
      </form>
    </section>
    <jsp:include page="footer.jsp" />
  </body>
</html>