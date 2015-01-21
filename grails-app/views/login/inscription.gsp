<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Login</title>

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

    <div class="container">

      <div class="form-signin">
        <h2 class="form-signin-heading">Inscription</h2>
        <div class="login-wrap form-group">
            <p> Informations personnelles : </p>
            <input id="username" type="text" class="form-control" placeholder="Nom">
            <input id="prenom" type="text" class="form-control" placeholder="Prenom">
            <p> Informations de connection : </p>
            <input id="mail" type="text" class="form-control" placeholder="Email">
            <input id="mdp" type="password" class="form-control" placeholder="Mot de passe">
            <input type="password" class="form-control" placeholder="Re-saisie du mot de passe">
            
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> J'accepte les conditions générales
            </label>
            <a class="btn btn-lg btn-login btn-block"  onclick="javascript:inscrire(this);return false;" >Envoyer</a> 
            
            <div class="registration">
                Déjà inscrit ?
                <a class="" href="${request.contextPath}/login">
                    Se connecter
                </a>
            </div>

        </div>

      </div>
      
      

    </div>


    <!-- Placed js at the end of the document so the pages load faster -->
    
      
        <script>
      function inscrire() {
        var nom = this.username.value;
        var prenom = this.prenom.value;
        var mail = this.mail.value;
        var mdp = this.mdp.value;
    <g:remoteFunction controller="login" action="inscrire" params="\'nom=\'+nom+ '&prenom=\' + prenom+ '&mail=\' + mail+ '&mdp=\' + mdp"/>
                              }
    </script>
    <!--Core js-->
    <script src="${request.contextPath}/js/jquery.js"></script>
    <script src="${request.contextPath}/bs3/js/bootstrap.min.js"></script>

  </body>
</html>