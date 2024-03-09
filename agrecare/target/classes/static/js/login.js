(function(){
    const fonts = ["cursive"];
    let captchaValue = "";
    function gencaptcha()
    {
        let value = btoa(Math.random()*1000000);
        value = value.substr(0,5 + Math.random()*5);
        captchaValue = value;
        document.querySelector(".login_form #captcha .preview").innerHTML = captchaValue;
        document.getElementById('org_captcha').value = captchaValue;
    }

    function initCaptcha()
    {
        document.querySelector(".login_form #captcha .captcha_refersh").addEventListener("click",function(){
            gencaptcha();
            //setcaptcha();
        });

        gencaptcha();
        //setcaptcha();
    }
    initCaptcha();
  
})();



