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
                <meta name="robots" content="noindex">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<div class="brand">

    <a href="${request.contextPath}/" class="logo">
        <!-- <img src="images/logo.png" alt=""> -->
        Alloratio
    </a>
</div>
<!--logo end-->

<div class="horizontal-menu navbar-collapse collapse ">
                  <ul class="nav navbar-nav">
                      <li><a href="#" onclick="javascript:tableauDeBord();return false;">Tableau de bord</a></li>
                      <li><a href="#" onclick="javascript:general();return false;">General</a></li>
                      <li><a href="#" onclick="javascript:projets();return false;">Gestion des projets</a></li>
                      <li class="dropdown">
                          <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">Planification stratégique<b class=" fa fa-angle-down"></b></a>
                          <ul class="dropdown-menu">
                              <li><a href="#" onclick="javascript:general();return false;">General</a></li>
                              <li><a href="buttons.html">Buttons</a></li>
                              <li><a href="font_awesome.html">Font Awesome</a></li>
                          </ul>
                      </li>
                      <li><a href="#" onclick="javascript:analyseFinanciere();return false;">Analyse financière</a></li>
                       
                  </ul>

              </div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/avatar1_small.jpg">
                <span class="username">Paramètres</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Mon compte</a></li>
                <li><a href="#"><i class="fa fa-cog"></i>Paramétrages</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i>Fermer session</a></li>
            </ul>
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
<!--right sidebar end-->
</section>
</section>

  
                    <script>
                      var compte = ${sec.loggedInUserInfo(field:"id")};
                      
                      function analyseFinanciere() {
                          <g:remoteFunction controller="user" action="analyseFinanciere" params="\'compteInstance=\'+compte" update="principal"/>
                              };
                              function tableauDeBord() {
                          <g:remoteFunction controller="user" action="tableauDeBord" params="\'compteInstance=\'+compte" update="principal"/>
                              };
                              function general() {
                          <g:remoteFunction controller="user" action="general" params="\'compteInstance=\'+compte" update="principal"/>
                              } ;
                              function projets() {
                          <g:remoteFunction controller="projet" action="index" update="principal"/>
                              }                              
                     
                  </script>



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

     <script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>


		<r:layoutResources />
	</body>
</html>
