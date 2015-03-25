

<!DOCTYPE html>
<html>
	<head>
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		
		<g:if env="development"><link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css"></g:if>

    <link href="${request.contextPath}/css/style.css" rel="stylesheet">
    
    <link href="${request.contextPath}/css/style-responsive.css" rel="stylesheet"/>

    <link href="${request.contextPath}/bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/js/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/bootstrap-reset.css" rel="stylesheet">

</head>
        
	<body class="body-404">              
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>  
		
    <div class="container ">

      <g:if env="development">
			<g:renderException exception="${exception}" />
		</g:if>
		<g:else>
			
      <section class="error-wrapper text-center">
          <h1><img src="${lien}/images/404.png" alt=""></h1>
          <div class="error-desk">
              <h2>Page introuvable</h2>
              <p class="nrml-txt">Nous ne sommes pas parvenu à accéder à votre requête</p>
          </div>
          <a href="${lien}/comparateur" class="back-btn"><i class="fa fa-home"></i>Retour sur l'application</a>
      </section>
		</g:else>

    </div>

        
	</body>
</html>
