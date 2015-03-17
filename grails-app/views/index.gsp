<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Calipolis">

    <title>Alloratio - Le hub du financement de votre entreprise</title>

    <link rel="apple-touch-icon" href="${request.contextPath}/images/Iphone-57px.png" />
    <link rel="apple-touch-icon" href="${request.contextPath}/images/Iphone-Retina-114px.png" sizes="114x114" />
    <link rel="apple-touch-icon" href=media/Ipad-72px.png" sizes="72x72" />
    <link rel="shortcut icon" href="${request.contextPath}/images/favicon.png">

    <!-- Bootstrap Core CSS -->
    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${request.contextPath}/css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- FontAwesome CSS -->
    <link href="${request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
                        
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>  
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
               

                <a class="logo" href="${lien}">
                  <img src="${request.contextPath}/images/logo.png" alt="Alloratio">
                </a>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="${lien}">Notre offre</a></li>
                  <li><a href="#">Notre actualité</a></li>
                  <li><a href="http://www.alloratio.com/blog" title="blog alloratio">Blog</a></li>
                  <li>
              <a data-toggle="dropdown" class="btn btn-white" type="button">Compte <span class="caret"></span></a>
            <ul class="dropdown-menu extended logout">
                <sec:ifLoggedIn>
                <li><a href="${lien}/user/profilEntreprise"><i class=" fa fa-suitcase"></i>Page de profil</a></li>
                <li><a href="${lien}/user/editionCompte/${sec.loggedInUserInfo(field:"id")}"><i class="fa fa-cog"></i>Paramètres</a></li>
                <li><a href="${lien}/logout"><i class="fa fa-key"></i> Déconnexion </a></li>
                </sec:ifLoggedIn>
              <sec:ifNotLoggedIn>
                <li><a href="${lien}/login"><i class="fa fa-key"></i> Se connecter </a></li>
              </sec:ifNotLoggedIn>
            </ul></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Image Background Page Header -->
    <!-- Note: The background image is set within the custom.css file. -->
    <header class="business-header">
        <div class="container">
           <br>
           <div class="jumbotron">
             <h1 class="pink-color text-center">Le hub du financement des entreprises</h1>
             <p class="text-center">Alloratio permet aux entreprises de trouver leur financement</p>
             <br class="space">
             <p class="text-center"><a class="btn btn-danger btn-lg" href="${lien}/login" role="button">Accéder au service</a></p>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div id="product" class="container white-bg">

        <br class="space">

        <div class="row">
            <div class="col-sm-12">
                <h1>Alloratio, le hub du financement de votre entreprise</h1>
                <p class="large-font">Startup, PME ou ETI, avec Alloratio trouver un financement n'a jamais été aussi simple. Il suffit de <b>s'inscrire gratuitement</b> et définir votre besoin de financement, et le tour et joué. <b>En quelques cliques votre demande est transmise à nos différents partenaires financeurs, en fonction de votre besoin</b>. En plus, nous vous fournissons une analyse détaillée de la situation financière de votre entreprise, vous donnant les clefs pour mieux comprendre et <b>obtenir le meilleur financement</b>.</p>
            </div>
        </div>
        <!-- /.row -->

        <br class="space">

        <div class="row">
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="${request.contextPath}/images/mkt1.jpg" alt="">
                <h2 class="pink">Simple et rapide</h2>
                <p class="text-justify large-font">Plus besoin de perdre votre temps à remplir une multitude de dossiers à chaque besoin pour votre entreprise. <b>Avec alloratio, pour obtenir un financement il suffit de vous inscrire, et de demander.</b> C'est simple, rapide et gratuit.</p>
            </div>
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="${request.contextPath}/images/mkt2.jpg" alt="">
                <h2 class="pink">Analyse financière gratuite</h2>
                <p class="text-justify large-font">En vous inscrivant, vous bénéficier gratuitement d'une analyse financière de votre entreprise. <b>Nos experts examinent l'état financier de votre entreprise et vous conseillent</b>. Nos recommandations vous permettrons de dépôser en toute sérénité votre demande de financement.</p>
            </div>
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="${request.contextPath}/images/mkt3.jpg" alt="">
                <h2 class="pink">Maitrisez les négociations</h2>
                <p class="text-justify large-font">Notre service vous permet de reprendre le contrôle de votre demande de financement et obtenez la meilleur offre de financement. Confiez nous votre besoin de financement, la transmettrons à <b>nos partenaires financeurs</b> qui l'examineront et <b>vous feront une offre.</b></p>
            </div>
            <div class="col-sm-12 space">
                <br class="space">
                <p class="text-center">
                  <a class="btn btn-default btn-lg" href="${lien}/login">Accéder au service</a>
                </p>
            </div>
        </div>
        <!-- /.row -->

        <br>

        <!-- Footer -->
        <footer>
            <div class="row grey-footer">

                <div class="col-sm-4 text-left">
                  <h3 class="white">Contactez-nous</h3>
                  <address class="white large-font">
                      <strong>Alloratio</strong>
                      <br>26 rue Damrémont
                      <br>75018 - Paris
                      <br>
                  </address>
                  <address class="white large-font">
                    <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
                    <span> +33 (0)1 72 54 70 88</span>
                    <br>
                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    <span> <a href="mailto:#" class="white hover">contact@alloratio.com</a></span>
                 </address>
             </div>

              <div class="col-sm-4 text-left">
                <h3 class="white">Réseaux sociaux</h3>
                  <ul class="text-left large-font">
                   <li><a href="https://plus.google.com/+Alloratio" class="white hover"><i class="fa fa-google-plus-square"></i> Google+</a></li>
                   <li><a href="https://www.linkedin.com/company/9222370" class="white hover"><i class="fa fa-linkedin-square"></i> LinkedIn</a></li>
                   <li><a href="https://twitter.com/alloratio" class="white hover"><i class="fa fa-twitter-square"></i> Twitter</a></li>
                   <li><a href="/feed/" class="white hover"><i class="fa fa-rss-square"></i> RSS - Wordpress</a></li>
                  </ul>
              </div>

              <div class="col-sm-4">
                <form>
                  <h3 class="white">Newsletter</h3>
                  <p class="white large-font">Inscrivez-vous à notre newsletter pour recevoir toute notre actualité.</p>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Address e-mail :</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                  </div>
                  <button type="submit" class="btn btn-default">Inscrpition</button>
                </form>
              </div>

            </div>

            <div class="row">
                <br>
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Alloratio 2015 - <a href="#" class="pink hover">Mentions légales</a></p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${request.contextPath}/js/bootstrap.min.js"></script>

</body>

</html>
