<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="fr" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Alloratio"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
                <meta name="author" content="Calipolis">  
                <meta http-equiv="content-language" content="fr">  
		<link href="${request.contextPath}/bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/js/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/bootstrap-reset.css" rel="stylesheet">
    <link href="${request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${request.contextPath}/js/jvector-map/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <link href="${request.contextPath}/css/clndr.css" rel="stylesheet">
    <!--clock css-->
    <link href="${request.contextPath}/js/css3clock/css/style.css" rel="stylesheet">
    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="${request.contextPath}/js/morris-chart/morris.css">
                <link rel="shortcut icon" href="${request.contextPath}/images/favicon.ico">
    
    
    <link rel="stylesheet" href="${request.contextPath}/js/data-tables/DT_bootstrap.css" />
    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/css/jquery.steps.css" rel="stylesheet">
    <link href="${request.contextPath}/css/style.css" rel="stylesheet">
    
    <link href="${request.contextPath}/css/style-responsive.css" rel="stylesheet"/>
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <link href="${request.contextPath}/css/custom.css" rel="stylesheet">
<script type="text/javascript">
	$('a[rel="external"]').attr('target', '_blank');
</script>
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body class="full-width">
		<section id="container" class="hr-menu">
<!--header start-->
<header class="header fixed-top">
<!--logo start-->
              
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
<div class="navbar-header">
<div class="brand">

    <a href="http://www.alloratio.com">
        <img src="${request.contextPath}/images/logo.png" title="Alloratio, spécialiste du financement">
    </a>
</div>
<!--logo end-->
       

<div class="horizontal-menu navbar-collapse collapse ">
                  <ul class="nav navbar-nav">
                      <li><a href="http://www.alloratio.com" title="Alloratio - financement des PME / startup">Accueil</a></li>
                      <li><a href="${lien}" title="Comparateur de financements des PME / startup">Comparateur de financements</a></li>
                      <li><a href="${lien}/simulation_credit" title="simulation crédit">Simulateur crédit</a></li>
                       <li><a href="http://www.alloratio.com/blog" title="blog alloratio">Blog</a></li>
                     <!--    <li class="dropdown">
                          <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">Services <b class=" fa fa-angle-down"></b></a>
                          <ul class="dropdown-menu">
                              <li><a href="${lien}/admin/analyseFi" title="formation de finance d'entreprise">Formation de finance</a></li>
                              <li><a href="${lien}/admin/bonnesPratiques" title="pratiques et techniques de finance d'entreprise">Bonnes pratiques</a></li>
                              <li><a href="${lien}/comparateur/financement" title="Comparateur de financements des PME / startup">Comparateur de financements</a></li>
                          </ul>
                      </li>
                       <li class="dropdown">
                          <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">Outils <b class=" fa fa-angle-down"></b></a>
                          <ul class="dropdown-menu">
                              <li><a href="${lien}/emprunt/create" title="simulation crédit">Simulateur crédit</a></li>
                          </ul>
                      </li>
                     <li><a href="http://vps58462.ovh.net/blog" title="Blog d'Alloratio">Blog</a></li>
                      <li><a href="${request.contextPath}/comparateur" title="Comparateur de financement d'entreprise">Comparateur</a></li>-->
                      <!--<li><a href="${request.contextPath}/acteur/index" title="Acteurs du financement">Boite à outils</a></li>-->
                
                  </ul>

              </div>

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        
        <li>
          <form action="${lien}/comparateur/recherche" method="get" id="searchableForm" name="searchableForm"  class="form-inline">
            <input type="text"  name="q" id="q"  class="form-control search" placeholder="Saisir mots clés">
          </form>                   
        </li>
        
     <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="${lien}/images/Dashboard.png">
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
                           <!--        <li>
                                       <a href="https://www.linkedin.com/company/9222370" title="Linkedin - alloratio">
                                           <i class="fa fa-linkedin"></i>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="https://plus.google.com/+Alloratio" title="google+ - alloratio">
                                           <i class="fa fa-google-plus"></i>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="https://twitter.com/alloratio" title="Twitter - alloratio">
                                           <i class="fa fa-twitter"></i>
                                       </a>
                                   </li>-->
    </ul>
    <!--search & user info end-->
</div></div>
</header>
<!--header end-->
<!--sidebar start-->

      <section id="main-content">
          <section class="wrapper">
            
        <div class="row">
            <div class="col-sm-2"></div>
<!--sidebar end--> 
            <div class="col-sm-8">
<!--main content start--><g:layoutBody/>

</div>

            <div class="col-sm-2"></div></div>
            <div class="row"></div>
<!--right sidebar end-->
</section>
</section>

<g:if env="production">     
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52015735-2', 'auto');
  ga('send', 'pageview');

</script>
</g:if>


<!-- Placed js at the end of the document so the pages load faster -->
<!--Core js-->
<script src="${request.contextPath}/js/jquery.js"></script>
<script src="${request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${request.contextPath}/js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
<script src="${request.contextPath}/bs3/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="${request.contextPath}/js/jquery.scrollTo.min.js"></script>
<script src="${request.contextPath}/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
<script src="${request.contextPath}/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="${request.contextPath}/js/skycons/skycons.js"></script>
<script src="${request.contextPath}/js/jquery.scrollTo/jquery.scrollTo.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="${request.contextPath}/js/calendar/clndr.js"></script>

<script src="${request.contextPath}/js/calendar/moment-2.2.1.js"></script>
<script src="${request.contextPath}/js/evnt.calendar.init.js"></script>
<script src="${request.contextPath}/js/jvector-map/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${request.contextPath}/js/jvector-map/jquery-jvectormap-us-lcc-en.js"></script>
<script src="${request.contextPath}/js/gauge/gauge.js"></script>
<!--clock init-->
<!--Easy Pie Chart-->
<script src="${request.contextPath}/js/easypiechart/jquery.easypiechart.js"></script>
<!--jQuery Flot Chart-->
<!--common script init for all pages-->


<script src="${request.contextPath}/js/scripts.js"></script>
<!--script for this page-->

<script src="${request.contextPath}/js/morris.init.js"></script>
<script src="${request.contextPath}/js/jquery-steps/jquery.steps.js"></script>



		<r:layoutResources />
	</body>
        
</html>
