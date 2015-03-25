
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
     <g:set var="lien" value="http://comparateur.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>
       
     <section class="panel">
       <g:set var="phrase" value="Créer un nouveau projet de financement" />
          <g:render template="header"/>
            
     </section>  
        
        <ul class="breadcrumb">
    
                 <sec:ifLoggedIn>

            
                        <li>
                          <a href="${lien}/user/profilEntreprise"  class=' '>
                             <i class="fa fa-dashboard"></i> Tableau de bord
                          </a>
                        </li>

                </sec:ifLoggedIn>
    <sec:ifNotLoggedIn>
                        <li><a href="${lien}"><i class="fa fa-home"></i> Accueil</a></li>
                        </sec:ifNotLoggedIn>
                                    
                        <li><a href="${lien}/user/profilEntreprise">Financements</a></li>
                        <li><a href="${lien}/user/nouvelleDemande">Nouvelle demande</a></li>
                <sec:ifNotLoggedIn>

            
                        <li>
                          <a href="${lien}/login/inscription"  class='btn btn-danger '>
                            S'inscrire
                          </a>
                        </li>

                </sec:ifNotLoggedIn>
                        
                        
                    </ul>
        
        
        
        
  <div class="row">
    
    <div class="col-lg-3">
      
      <section class="panel">
        <div class="panel-body">
        ok</div>
      </section>
      <section class="panel">
                      
                      <div class="panel-body">
                      
					<g:render template="/admin/menu"/>                     
                        
                        
                        
                      </div>
                      
                    </section>
		</div>
    <div class="col-lg-9">
      
      <section class="panel">
        <div class="panel-body">
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
			<g:form url="[resource:formulaireInstance, action:'formulaire']"  class="form-horizontal" >
				<fieldset class="form">
					<g:render template="/user/formulaire"/>
				</fieldset>
				<fieldset class="buttons">
                                <center>
                                <a href="${lien}/user/profilEntreprise" class="btn btn-default"> Annuler </a>
                                <g:submitButton name="create" class="btn btn-danger " value="Enregistrer" />
                                </center>
				</fieldset>
			</g:form>
		</div>  </div>
      </section>
		</div>  
		</div>  
        
          
	</body>
</html>
