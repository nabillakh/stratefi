
<!DOCTYPE html>
<html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Alloratio - Inscription </title>
                <meta name="description" content="Avec Alloratio, comparez plus de 80  solutions de Financement des PME et Startup et trouvez gratuitement le meilleur financement pour votre Entreprise." />
                <meta name="keywords" content="financement, crédit, levée de fonds, crowdfunding, PME, startup" />
                
                <meta name="robots" content="index">
                <g:javascript library="jquery" plugin="jquery" />
                
                
  </head>
	<body>
          
          <section class="panel">
            
                    <header class="panel-heading">
                        Inscription
                    </header>
                    <div class="panel-body">
                      
                              <p>Une fois votre compte créé vous aurez accès aux informations de base de toutes les startups.
                                La confidentialité de vos données est capitale chez Sowefund. En dehors de nos
                                prestataires agréés pour vous apporter le service le plus sécurisé et confidentiel sur 
                                notre plateforme, vos données personnelles ne seront pas partagées avec des tiers.</p>
                              <span id="message"></span>
                              <section>
                              <g:form  url="[resource:userInstance, action:'inscrire']">
                                  
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                                   <center>
                                      <g:submitButton name="submit" class="btn btn-danger" value="S'inscrire" />
                                   </center>
                                     </fieldset>         
                                    </g:form>
                                <section>
                              
                      
                    </div>
          </section>
          
          


    <!-- Placed js at the end of the document so the pages load faster -->
    
    <!--Core js-->
    <script src="${request.contextPath}/js/jquery.js"></script>
    <script src="${request.contextPath}/bs3/js/bootstrap.min.js"></script>

      
<script>
    $(function ()
    {
        $("#wizard").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft"
        });

    });


</script>
  </body>
</html>