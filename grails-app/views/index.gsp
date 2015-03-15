<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Alloratio - Le hub pour le financement de votre entreprise</title>

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
              
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
   
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                

                <a class="logo2" href="#">
                  <img src="${request.contextPath}/images/logo.png" alt="Alloratio">
                </a>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="#">Notre offre</a></li>
                  <li><a href="#">Notre actualité</a></li>
               
     <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle btn btn-white" href="#">
                <span class="username">Compte</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <sec:ifLoggedIn>
                <li><a href="${lien}/user/show/${sec.loggedInUserInfo(field:"id")}"><i class=" fa fa-suitcase"></i>Page de profil</a></li>
                <li><a href="${lien}/user/edit/${sec.loggedInUserInfo(field:"id")}"><i class="fa fa-cog"></i>Paramètres</a></li>
                <li><a href="${lien}/logout"><i class="fa fa-key"></i> Déconnexion </a></li>
                </sec:ifLoggedIn>
              <sec:ifNotLoggedIn>
                <li><a href="${lien}/login"><i class="fa fa-key"></i> Se connecter </a></li>
              </sec:ifNotLoggedIn>
            </ul>
        </li>
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
             <h2 class="pink-color text-center">Alloratio, le hub du financement des PME</h2>
             <p class="text-center">
               Trouver un financement pour votre entreprise n'a jamais été aussi rapide. Notre service
               permet aux entreprises de publier simplement une demande de financement.</br>
             </p>
             <div class='col-md-6'>
             Avantages : 
             <ul>
               <li>
                 Accèder aux descriptions de plus de 80 financeurs
               </li>
               <li>
                 Effectuer une seule demande de financement
               </li>
             </ul></div>
             <p class="text-center"><a class="btn btn-danger btn-lg" href="#" role="button">Accéder au service</a></p>
          </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-12">
                <h2>Alloratio, plus que du financement</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et molestiae similique eligendi reiciendis sunt distinctio odit? Quia, neque, ipsa, adipisci quisquam ullam deserunt accusantium illo iste exercitationem nemo voluptates asperiores.</p>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <div class="row">
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/300x300" alt="">
                <h2>Marketing Box #1</h2>
                <p>These marketing boxes are a great place to put some information. These can contain summaries of what the company does, promotional information, or anything else that is relevant to the company. These will usually be below-the-fold.</p>
            </div>
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/300x300" alt="">
                <h2>Marketing Box #2</h2>
                <p>The images are set to be circular and responsive. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
            </div>
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="http://placehold.it/300x300" alt="">
                <h2>Marketing Box #3</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
            </div>
            <br>
            <p class="text-center">
              <a class="btn btn-danger btn-lg" href="#">Accéder au service</a>
            </p>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">

                <div class="col-sm-4">
                  <h2>Contactez-nous</h2>
                  <address>
                      <strong>Alloratio</strong>
                      <br>26 rue Damrémont
                      <br>75018 - Paris
                      <br>
                  </address>
                  <address>
                    <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
                    <span> +33 (0)1 72 54 70 88</span>
                    <br>
                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    <span> <a href="mailto:#">contact@alloratio.com</a></span>
                 </address>
             </div>
            </div>

            <div class="row">
                <div class="col-lg-8 text-center">
                    <p>Copyright &copy; Alloratio 2015</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
<script src="${request.contextPath}/bs3/js/bootstrap.min.js"></script>

</body>

</html>
