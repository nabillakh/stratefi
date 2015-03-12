<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'demande.label', default: 'Demande')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-demande" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-demande" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:demandeInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="formFinancement"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
                
                <section class="panel">
                    <header class="panel-heading">
                        Demande de financement
                    </header>
                    <div class="panel-body">

                              <span id="message"></span>
                        <div id="wizard">
                            <h2>Utilisateur</h2>

                            <section>
                              <p> okkkkkkkkkkk</p>
                                <form class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Nom</label>
                                            <div class="col-lg-8">
                                                <input id="nom" type="text" class="form-control" placeholder="Nom">
                                            </div>
                                        </div>
                                   <div class="form-group">
                                            <label class="col-lg-2 control-label">Prénom</label>
                                            <div class="col-lg-8">
                                                <input id="prenom" type="text" class="form-control" placeholder="Prénom">
                                            </div>
                                        </div>
                                   <div class="form-group">
                                            <label class="col-lg-2 control-label">Adresse email</label>
                                            <div class="col-lg-8">
                                                <input id="username" type="text" class="form-control" placeholder="Email">
                                            </div>
                                        </div>
                                   <div class="form-group">
                                            <label class="col-lg-2 control-label">Mot de passe</label>
                                            <div class="col-lg-8">
                                               <input id="mdp" type="password" class="form-control" placeholder="Mot de passe">
                                            </div>
                                        </div>
                                   <div class="form-group">
                                            <label class="col-lg-2 control-label">Mot de passe *</label>
                                            <div class="col-lg-8">
                                                 <input type="password" class="form-control" placeholder="Re-saisie du mot de passe">
             
                                            </div>
                                        </div>
                                              
                                    </form>
                            </section>

                            <h2>Entreprise</h2>
                            <section>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Phone</label>
                                        <div class="col-lg-8">
                                               <input id="Phone" type="text" class="form-control" placeholder="Mot de passe">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Mobile</label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" placeholder="Mobile">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Address</label>
                                        <div class="col-lg-8">
                                            <textarea class="form-control" cols="60" rows="5"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </section>

                            <h2>Votre besoin</h2>
                            <section>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Bill Name 1</label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" placeholder="Phone">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Bill Name 2</label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" placeholder="Mobile">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Status</label>
                                        <div class="col-lg-8">
                                            <textarea class="form-control" cols="60" rows="5"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </section>

                            <h2>Synthèse</h2>
                            <section>
                                <p>Congratulations This is the Final Step</p>
                            </section>
                        </div>
                    </div>
                </section>
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
