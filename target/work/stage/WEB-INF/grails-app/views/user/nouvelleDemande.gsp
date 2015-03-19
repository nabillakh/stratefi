
<%@ page import="connection.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="comparaison">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	
                
                
                </head>
	<body>
		
                        
<g:if env="production">
     <g:set var="lien" value="http://comparateur.alloratio.com/" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
        
     <section class="panel">
       <g:set var="phrase" value="Créer un nouveau projet de financement" />
          <g:render template="header"/>
            
            

        </section>                     
             
  
                
  <section class="panel">
            <div class="panel-body">
              <h3 title ="Financements de userInstance.entreprise?.nom}">Projets de financement : </h3>
            <div id="create-demande" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${demandeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${demandeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:demandeInstance, action:'save']"  class="form-horizontal" >
				<fieldset class="form">
					<g:render template="formFinancement"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-default" value="Enregistrer" />
				</fieldset>
			</g:form>
		</div>  
            
            
            </div>

            
        </section>
        
        
     
      
	</body>
</html>
