<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Enregistrement</title>

    <!--Core CSS -->
    <link href="${request.contextPath}/bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/bootstrap-reset.css" rel="stylesheet">
    <link href="${request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${request.contextPath}/css/style-responsive.css" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">
<div id='login'  class="container" >
	<div class='inner'>

		<form action='${postUrl}' method='POST' id='loginForm' class='form-signin'>
        <h2 class="form-signin-heading">Enregistrement</h2>
        <div class="login-wrap">

            <div class="user-login-info">
              
		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>
              <input type='text' class='form-control' name='j_username' id='username' placeholder="Adresse mail"  autofocus>
              <input type='password' class='form-control' name='j_password' id='password' placeholder="Mot de passe">
            </div>
          
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Se souvenir de moi
                <input type='checkbox' class='chk' name='${rememberMeParameter}' value="remember-me" id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Mot de passe oublié?</a>
                </span>
            </label>
          <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="btn btn-lg btn-login btn-block"/>
		
                        
            <div class="registration">
                Pas encore de compte?
                <a class="" href="${request.contextPath}/login/inscription">
                    S'inscrire
                </a>
            </div>

        </div>
		</form>
	</div>
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>


    <script src="${request.contextPath}/js/jquery.js"></script>
    <script src="${request.contextPath}/bs3/js/bootstrap.min.js"></script>


</body>
</html>
