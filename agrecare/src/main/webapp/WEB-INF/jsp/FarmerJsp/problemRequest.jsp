<%@ page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Request to doctor for plant problem</title>
	<link rel="stylesheet" href="css/registerUser.css" />
</head>
<body>
	<section class="container">
      <header>Request For Advice</header><br>
      <h4 style="color: red;">${sms}</h4>
      <form action="/requestForAdvice" method="post" enctype="multipart/form-data" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" name="user_name" placeholder="Enter full name" required />
        </div>
        <div class="input-box">
          <label>Email Address</label>
          <input type="email" name="user_id" value="<% out.print(session.getAttribute("email")); %>" readonly required />
        </div>
        <div class="input-box">
          <label>Address with PIN code</label>
          <input type="text" name="user_address" placeholder="Enter street address" required />
        </div>
        

        <div class="input-box address">
          	<label>First select file type and then upload photo</label>
         	<div class="column">
            	<div class="select-box">
	              	<select name="user_pics_type">
	                	<option hidden>Choose</option>
	                	<option>.jpeg</option>
	                	<option>.jpg</option>
	              	</select>
	            </div>
        		<input type="file" name="user_pics"/>
	        </div>
        </div>
        <div class="input-box">
	        <label>Write your Plant Problem</label>
		    <textarea name="farmer_problem" style="width: 100%; height: 100px; border: 2px solid #ccc; border-radius: 5px;"></textarea>
		</div>

        <button>Submit</button>
      </form>
    </section>
</body>
</html>