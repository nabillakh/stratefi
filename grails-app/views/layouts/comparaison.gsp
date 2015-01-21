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
                <meta name="Content-Langage" content="FR">    
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
<div class="brand">

    <a href="http://www.alloratio.com">
        <img src="${request.contextPath}/images/logo.png" title="Alloratio, spécialiste du financement">
    </a>
</div>
<!--logo end-->
                     
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.fr" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>

<div class="horizontal-menu navbar-collapse collapse ">
                  <ul class="nav navbar-nav">
                      <li><a href="http://www.alloratio.com" title="Description d'Alloratio">Page d'accueil</a></li>
                      <li><a href="http://www.alloratio.com/blog" title="Blog d'Alloratio">Blog</a></li>
                      <!-- <li><a href="${request.contextPath}/comparateur" title="Comparateur de financement d'entreprise">Comparateur</a></li>-->
                      <li><a href="${lien}/comparateur/listeFinancement" title="Acteurs du financement des PME / startup">Annuaire des financements</a></li>
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
            
<!--right sidebar end-->
</section>
</section>
<script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='NAME';ftypes[1]='text'; /*
 * Translated default messages for the $ validation plugin.
 * Locale: FR
 */
$.extend($.validator.messages, {
        required: "Ce champ est requis.",
        remote: "Veuillez remplir ce champ pour continuer.",
        email: "Veuillez entrer une adresse email valide.",
        url: "Veuillez entrer une URL valide.",
        date: "Veuillez entrer une date valide.",
        dateISO: "Veuillez entrer une date valide (ISO).",
        number: "Veuillez entrer un nombre valide.",
        digits: "Veuillez entrer (seulement) une valeur numérique.",
        creditcard: "Veuillez entrer un numéro de carte de crédit valide.",
        equalTo: "Veuillez entrer une nouvelle fois la même valeur.",
        accept: "Veuillez entrer une valeur avec une extension valide.",
        maxlength: $.validator.format("Veuillez ne pas entrer plus de {0} caractères."),
        minlength: $.validator.format("Veuillez entrer au moins {0} caractères."),
        rangelength: $.validator.format("Veuillez entrer entre {0} et {1} caractères."),
        range: $.validator.format("Veuillez entrer une valeur entre {0} et {1}."),
        max: $.validator.format("Veuillez entrer une valeur inférieure ou égale à {0}."),
        min: $.validator.format("Veuillez entrer une valeur supérieure ou égale à {0}.")
});}(jQuery));var $mcj = jQuery.noConflict(true);</script>


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

     <script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>


		<r:layoutResources />
	</body>
        <footer>
        
          <div class="row"><div class="col-sm-2"></div>
<!--sidebar end--> 
            <div class="col-sm-8">
  <section class="panel">  
<div id="mc_embed_signup" class="position-center">
<form action="//alloratio.us9.list-manage.com/subscribe/post?u=632080c30e7788c41b60ffbcd&amp;id=7c86294c9b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll">
	<h2>S'inscrire sur notre mailing list</h2>
        <p>Si vous souhaitez être informé des dernières mises à jour de la base, 
        Si vous souhaitez accéder aux meilleurs solutions de financement en exclusivité, 
        Inscrivez vous via ce formulaire</p>
<div class="form-group">
	<label for="mce-EMAIL">Adresse email  <span class="asterisk">*</span>
</label>
	<input type="email" value="" name="EMAIL" class="required email form-control" id="mce-EMAIL">
</div>
<div class="form-group">
	<label for="mce-NAME">Prénom NOM </label>
	<input type="text" value="" name="NAME" class="form-control" id="mce-NAME">
</div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" style="display:none"></div>
		<div class="response" id="mce-success-response" style="display:none"></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;"><input type="text" name="b_632080c30e7788c41b60ffbcd_7c86294c9b" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="S'inscrire" name="subscribe" id="mc-embedded-subscribe" class="btn btn-danger"></div>
    </div>
</form>
</div></section></div></div>
          
        </footer>
</html>
