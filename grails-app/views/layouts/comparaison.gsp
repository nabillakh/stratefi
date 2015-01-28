<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="fr" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
                <link rel="shortcut icon" href="${request.contextPath}/images/favicon.ico">
                <meta name="robots" content="noindex">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
                <meta name="author" content="Nabil Lakhmissi">  
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
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body class="full-width">
		<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
              
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>

<div class="brand">

    <a href="${lien}">
        <img src="${request.contextPath}/images/logo.png" title="Alloratio, spécialiste du financement">
    </a>
</div>
<!--logo end-->
       

<div class="horizontal-menu navbar-collapse collapse ">
                  <ul class="nav navbar-nav">
                      <li><a href="${lien}" title="Acteurs du financement des PME / startup">Annuaire des financements</a></li>
                      
                       <li class="dropdown">
                          <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">Outils <b class=" fa fa-angle-down"></b></a>
                          <ul class="dropdown-menu">
                              <li><a href="${lien}/emprunt/create">Simulateur crédit</a></li>
                              <li><a href="${lien}/emprunt/create">Simulateur crédit</a></li>
                          </ul>
                      </li>
                      <li><a href="http://vps58462.ovh.net/blog" title="Blog d'Alloratio">Blog</a></li>
                      <!-- <li><a href="${request.contextPath}/comparateur" title="Comparateur de financement d'entreprise">Comparateur</a></li>-->
                      <!--<li><a href="${request.contextPath}/acteur/index" title="Acteurs du financement">Boite à outils</a></li>-->
                
                  </ul>

              </div>

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <!--<li>
            <input type="text" class="form-control search" placeholder="Recherche">
        </li>
         user login dropdown start
        <li class="dropdown">
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        user login dropdown end -->
        <li>
          <form action="comparateur/recherche" method="get" id="searchableForm" name="searchableForm"  class="form-inline">
            <input type="text"  name="q" id="q"  class="form-control search" placeholder="Saisir mots clés">
          </form>
           
                                       
        </li>
                                   <li>
                                       <a href="https://www.linkedin.com/company/9222370" title="Page Linkedin d'alloratio">
                                           <i class="fa fa-linkedin"></i>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="https://plus.google.com/+Alloratio" title="Page google+ d'alloratio">
                                           <i class="fa fa-google-plus"></i>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="https://twitter.com/alloratio" title="Timeline Twitter d'alloratio">
                                           <i class="fa fa-twitter"></i>
                                       </a>
                                   </li>
    </ul>
    <!--search & user info end-->
</div>
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


<!--

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52015735-2', 'auto');
  ga('send', 'pageview');

</script>
-->
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
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
<script src="${request.contextPath}/js/calendar/moment-2.2.1.js"></script>
<script src="${request.contextPath}/js/evnt.calendar.init.js"></script>
<script src="${request.contextPath}/js/jvector-map/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${request.contextPath}/js/jvector-map/jquery-jvectormap-us-lcc-en.js"></script>
<script src="${request.contextPath}/js/gauge/gauge.js"></script>
<!--clock init-->
<script src="${request.contextPath}/js/css3clock/js/css3clock.js"></script>
<!--Easy Pie Chart-->
<script src="${request.contextPath}/js/easypiechart/jquery.easypiechart.js"></script>
<!--Sparkline Chart-->
<script src="${request.contextPath}/js/sparkline/jquery.sparkline.js"></script>
<!--Morris Chart-->
<script src="${request.contextPath}/js/morris-chart/morris.js"></script>
<script src="${request.contextPath}/js/morris-chart/raphael-min.js"></script>
<script src="${request.contextPath}/js/morris.init.js"></script>
<!--jQuery Flot Chart-->
<script src="${request.contextPath}/js/flot-chart/jquery.flot.js"></script>
<script src="${request.contextPath}/js/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="${request.contextPath}/js/flot-chart/jquery.flot.resize.js"></script>
<script src="${request.contextPath}/js/flot-chart/jquery.flot.pie.resize.js"></script>
<script src="${request.contextPath}/js/flot-chart/jquery.flot.animator.min.js"></script>
<script src="${request.contextPath}/js/flot-chart/jquery.flot.growraf.js"></script>
<script src="${request.contextPath}/js/dashboard.js"></script>
<script src="${request.contextPath}/js/jquery.customSelect.min.js" ></script>
<!--common script init for all pages-->

<script type="text/javascript" src="${request.contextPath}/js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/data-tables/DT_bootstrap.js"></script>


<script src="${request.contextPath}/js/scripts.js"></script>
<!--script for this page-->

<script src="${request.contextPath}/js/table-editable.js"></script>
<script src="${request.contextPath}/js/morris.init.js"></script>
<script src="${request.contextPath}/js/jquery-steps/jquery.steps.js"></script>

<script type="text/javascript">
	$('a[rel="external"]').attr('target', '_blank');
</script>


		<r:layoutResources />
	</body>
        <footer>
        
          <div class="row"><div class="col-sm-2"></div>
<!--sidebar end--> 
            <div class="col-sm-8">                    
                    
                    <div class="footer-col connect col-md-6 col-sm-6 col-xs-6">
                        <div class="footer-col-inner">
                            <ul class="social list-inline">
                                <li><a href="https://twitter.com/alloratio" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://fr.linkedin.com/pub/nabil-lakhmissi/7b/559/56/"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="https://plus.google.com/+Alloratio"><i class="fa fa-google-plus"></i></a></li>    
                            </ul>
                            <div class="form-container">
                                <p class="intro">Restez informé de nos nouveautés</p>
                                <form class="signup-form navbar-form">
                                    <div class="form-group">
                                        <input type="text" id ="mail3" class="form-control" placeholder="Entrez votre adresse mail.">
                                    </div>   
                                    <button type="submit" class="btn btn-cta btn-cta-primary"  data-toggle="modal" data-whatever="twbootstrap"  onclick="javascript:adresseMail();return false;">Envoyer !</button>                                 
                                </form>                               
                            </div><!--//subscription-form-->
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->
                    <div class="footer-col contact col-md-6 col-sm-6 col-xs-6">
                        <div class="footer-col-inner">
                            <h3 class="title">Contactez nous !</h3>                          
                            <p class="adr clearfix">
                                <i class="fa fa-map-marker pull-left"></i>        
                                <span class="adr-group pull-left">       
                                    <span class="street-address">26 rue Damrémont</span><br>
                                    <span class="region">75018 Paris</span><br>
                                    <span class="country-name">France</span>
                                </span>
                            </p>
                           <!-- <p class="tel"><i class="fa fa-phone"></i>0800 123 4567</p>-->
                            <p class="email"><i class="fa fa-envelope-o"></i><a href="#formContact">contact@alloratio.com</a></p> 
                        </div><!--//footer-col-inner-->
                    </div>
                </div>
  </div></div>
          
        </footer>
        
</html>
