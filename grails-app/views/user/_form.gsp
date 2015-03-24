<%@ page import="connection.User" %>

<div class="col-md-12">
                                <div class="prf-contacts position-center">
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Données du demandeur : </h2>
                                            <div class="location-info">

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username" class="col-lg-5 col-sm-5 control-label">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-lg-7">
	<g:textField name="username" class="form-control"  required="required" value="${userInstance?.username}"/>

</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
	<label for="password" class="col-lg-5 col-sm-5 control-label">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
  <div class="col-lg-7">
	<g:textField name="password" class="form-control"  required="required" value="${userInstance?.password}"/>

</div>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'entreprise', 'error')} form-group">
	<label for="entreprise" class="col-lg-5 col-sm-5 control-label">
		<g:message code="user.entreprise.label" default="Entreprise" />
		
	</label>
  <div class="col-lg-7">
	<g:select id="e1"  class="form-control populate"  name="entreprise.id"  from="${entreprises.Entreprise.list()}" optionKey="id" value="${userInstance?.entreprise?.id}" noSelection="['null': '']"/>

</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nom', 'error')} form-group ">
	<label for="nom" class="col-lg-5 col-sm-5 control-label">
		<g:message code="user.nom.label" default="Nom" />
		
	</label>
  <div class="col-lg-7">
	<g:textField name="nom" value="${userInstance?.nom}" class="form-control" />

</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'prenom', 'error')} form-group">
	<label for="prenom" class="col-lg-5 col-sm-5 control-label">
		<g:message code="user.prenom.label" default="Prenom" />
		
	</label>
  <div class="col-lg-7">
	<g:textField name="prenom" value="${userInstance?.prenom}"  class="form-control" />

</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'telephone', 'error')} form-group">
	<label for="telephone" class="col-lg-5 col-sm-5 control-label">
		<g:message code="user.telephone.label" default="Telephone" />
		
	</label>
  <div class="col-lg-7">
	<g:textField name="telephone" value="${userInstance?.telephone}"  class="form-control" />

</div>
</div>
</div>
</div>
</div>

