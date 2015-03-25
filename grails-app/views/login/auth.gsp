
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Alloratio - Financement des PME / startup </title>
                <meta name="description" content="Avec Alloratio, comparez plus de 80  solutions de Financement des PME et Startup et trouvez gratuitement le meilleur financement pour votre Entreprise." />
                <meta name="keywords" content="financement, crédit, levée de fonds, crowdfunding, PME, startup" />
                
                <meta name="robots" content="index">
                <g:javascript library="jquery" plugin="jquery" />
                
          <style type="text/css">
 body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}
.form-signin2 {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin2 .form-signin-heading2,
.form-signin2 .checkbox {
  margin-bottom: 10px;
}
.form-signin2 .checkbox {
  font-weight: normal;
  background-color: #ffffff;
}
.form-signin2 .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin2 .form-control:focus {
  z-index: 2;
}
.form-signin2 input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin2 input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
                
  </head>
	<body>
          
  
  
  
                                     <div class="col-lg-2 ">
                                     </div>
          <div class="col-lg-8">
<section id='login'  class="panel" >
                    <header class="panel-heading">
                        Se connecter                    </header>
	<div class='panel-body'>

		<form action='${postUrl}' method='POST' id='loginForm'>
                  <fieldset class="form">
                   
		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>
                    <div class="form-group col-lg-12">
                                     
                                     <label for="username" class="col-lg-4 control-label">
		<g:message code="user.username.label" default="Adresse email" />
		
	</label>
                                            <div class="col-lg-8">
                                                <input type='text' class='form-control' name='j_username' id='username' placeholder="Adresse mail"  autofocus >
                                            </div>
                                        </div>
                    <div class="form-group col-lg-12">
                                     
                                     <label for="password" class="col-lg-4 control-label">
		<g:message code="user.password.label" default="Mot de passe" />
		
	</label>
                                            <div class="col-lg-8">
                                                <input type='password' class='form-control' name='j_password' id='password' placeholder="Mot de passe">
                                            </div>
                                        </div>
                    
                    
                    <div class="form-group col-lg-12">
              <center>
                Se souvenir de moi <input type='checkbox' class='chk' name='${rememberMeParameter}' value="remember-me" id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
              </center>
                                        </div>
                  </fieldset>
                  

          <fieldset class="buttons"><center>
          <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="btn btn-danger"/>
            </center>
            </fieldset>
              <span class="pull-right">
                    Pas encore de compte?
                <a class="" href="${request.contextPath}/login/inscription">
                    S'inscrire
                </a> </br> 
                    <a data-toggle="modal" href="#myModal"> Mot de passe oublié?</a>
                </span>
		</form>   
	</div>
</section>
                            </div>         
                                     <div class="col-lg-2 "></div>
<script type='text/javascript'>
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
</script>



    <script src="${request.contextPath}/js/jquery.js"></script>
    <script src="${request.contextPath}/bs3/js/bootstrap.min.js"></script>


</body>
</html>
