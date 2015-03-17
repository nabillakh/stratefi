
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
            <div class="wdgt-row">
                <img src="${lien}/images/fond4.jpg" height="120" alt="">
                <div class="wdt-head">
                    Tableau de bord de la société ${demandeInstance.user.entreprise?.nom}
                </div>
            </div>

            <div class="panel-body">
                <div class="row weather-full-info">
                    <div class="col-md-6 today-status">
                      <a href="${lien}/user/editionCompte" title="Gestion de votre compte"><h1>Paramètres</h1>
                        <i class="fa fa-wrench"></i></a>
                    </div>
                    <div class="col-md-6">
                        <ul>
                          <li title="préparer votre financement">
                            <a  data-toggle="modal" href="${lien}/user/nouvelleDemande" title="Créer une demande de financement">
                                <h2>Demande Financement</h2>
                                <i class="fa  fa-money text-info"></i>
                                <div>Gratuit</div>
                            </a>
                            </li>
                            
                            <li title="Evaluez vous comme les banques le font">
                                <a href="${lien}/user/edit/$userInstance.id}" title="Profitez d'une analyse financière gratuite">
                                  <h2>Analyse financière</h2>
                                <i class="fa fa-phone text-danger"></i>
                                <div>Gratuit</div>
                                </a>
                            </li>
                            
                            <li >
                              <a href="${lien}/comparateur" title="Comparer simplement les moyens de financement">
                                <h2>Comparer financeurs</h2>
                                <i class="fa fa-eye text-success"></i>
                                <div>Gratuit</div>
                                </a>
                            </li>
                            
                            <li>
                              <a href="http://www.alloratio.com/blog/" title="Blog d'alloratio">
                                <h2>Formation finance</h2>
                                <i class="fa fa-pencil text-primary"></i>
                                <div>Gratuit</div>
                              </a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>

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
