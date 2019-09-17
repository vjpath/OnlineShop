
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration Page</title>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" type="text/css" href="https://colorlib.com/etc/regform/colorlib-regform-32/css/nunito-font.css">

<link rel="stylesheet" type="text/css" href="r.css">
</head>
<body class="form-v6">
<div class="page-content">
<div class="form-v6-content">
<!--  <div class="form-left">
<img src="https://colorlib.com/etc/regform/colorlib-regform-32/images/form-v6.jpg" alt="form">
</div>-->
<form class="form-detail" action="UserServlet" method="post">
<h2>Register Form</h2>
<div class="form-row">
<input type="text" name="name" id="full-name" class="input-text" placeholder="Your Name" required>
</div>
<div class="form-row">
<input type="text" name="contact" id="full-name" class="input-text" placeholder="contact" required>
</div>
<div class="form-row">
<input type="text" name="emailid" id="your-email" class="input-text" placeholder="Email Address" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
</div>
<div class="form-row">
<input type="password" name="pass" id="password" class="input-text" placeholder="Password" required>
</div>
<div class="form-row">
<input type="password" name="cpass" id="comfirm-password" class="input-text" placeholder="Comfirm Password" required>
</div>
<div class="form-row-last">
<input type="submit" name="register" class="register" value="Register">
</div>
</form>
</div>
</div>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="420187cf421055a3f88ba881-text/javascript"></script>
<script type="420187cf421055a3f88ba881-text/javascript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/95c75768/cloudflare-static/rocket-loader.min.js" data-cf-settings="420187cf421055a3f88ba881-|49" defer=""></script></body>
</html>