<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="comparaison">
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	
                </head>
	<body>
		
                        
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
       
     <section class="panel">
       <g:set var="phrase" value="Préparez votre projet de financement" />
          <g:render template="/user/header"/>
            
     </section>     
  <section class="panel">
            <div class="panel-body">
            
              ok
            </div>

            
        </section>
        
          
	</body>
</html>
