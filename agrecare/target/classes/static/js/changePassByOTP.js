function sendOTP() {
			const email = document.getElementById('email');
			const new_pass = document.getElementById('password');
			const otpverify = document.getElementsByClassName('otpverify')[0];

			let otp_val = Math.floor(Math.random() * 10000);
			let emailbody = `<h2>Your OTP is </h2>${otp_val}`;
			Email.send({
				Host : "smtp.elasticemail.com",
			    Username : "dynamicmovie724@gmail.com",
			    Password : "9A725937A16F173AED6C84973DD768FFE219",
			    To : email.value,
			    From : "dynamicmovie724@gmail.com",
			    Subject : "Email OTP using JavaScript",
			    Body : emailbody,
			}).then(
				message => {
					// console.log("call..  "+message);
					if (message === "OK") {
						alert("OTP sent to your email " + email.value);

						otpverify.style.display = "flex";
						const otp_inp = document.getElementById('otp_inp');
						const otp_btn = document.getElementById('otp-btn');

						otp_btn.addEventListener('click', () => {
							if (otp_inp.value == otp_val) {
								$.ajax({
									url:"/change_password",
									method:"POST",
									data:{email:email.val(), new_pass:new_pass.val()},
									success:function(res){
										alert("Your password has changed...");	
									}
								})
							}
							else {
								alert("Invalid OTP");
							}
						})
					}
				}
			);
		}