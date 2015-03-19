

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="acteur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${acteurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'nomSEO', 'error')} ">
	<label for="nomSEO">
		<g:message code="acteur.nomSEO.label" default="Nom SEO" />
		
	</label>
	<g:textField name="nomSEO" value="${acteurInstance?.nomSEO}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="acteur.description.label" default="Description" />
		
	</label>
  <textarea class="form-control" rows="5" name="description" id="description" >${acteurInstance?.description}</textarea>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="acteur.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${acteurInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="acteur.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${acteurInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="acteur.numero.label" default="Numero" />
		
	</label>
	<g:field name="numero" value="${fieldValue(bean: acteurInstance, field: 'numero')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'typeActeur', 'error')} ">
	<label for="typeActeur">
		<g:message code="acteur.typeActeur.label" default="Type Acteur" />
		
	</label>
	<g:select id="typeActeur" name="typeActeur.id" from="${stratefi.comparateur.TypeActeur.list()}" optionKey="id" value="${acteurInstance?.typeActeur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'produits', 'error')} ">
	<label for="produits">
		<g:message code="acteur.produits.label" default="Produits" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${acteurInstance?.produits?}" var="p">
    <li><g:link controller="produit" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="produit" action="create" params="['acteur.id': acteurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'produit.label', default: 'Produit')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'facebook', 'error')} ">
	<label for="facebook">
		<g:message code="acteur.facebook.label" default="Facebook" />
		
	</label>
	<g:textField name="facebook" value="${acteurInstance?.facebook}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'googleplus', 'error')} ">
	<label for="googleplus">
		<g:message code="acteur.googleplus.label" default="Googleplus" />
		
	</label>
	<g:textField name="googleplus" value="${acteurInstance?.googleplus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'linkedin', 'error')} ">
	<label for="linkedin">
		<g:message code="acteur.linkedin.label" default="Linkedin" />
		
	</label>
	<g:textField name="linkedin" value="${acteurInstance?.linkedin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'twitter', 'error')} ">
	<label for="twitter">
		<g:message code="acteur.twitter.label" default="Twitter" />
		
	</label>
	<g:textField name="twitter" value="${acteurInstance?.twitter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'slogan', 'error')} ">
	<label for="slogan">
		<g:message code="acteur.slogan.label" default="Slogan" />
		
	</label>
	<g:textField name="slogan" value="${acteurInstance?.slogan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'contactMail', 'error')} ">
	<label for="contactMail">
		<g:message code="acteur.contactMail.label" default="Contact Mail" />
		
	</label>
	<g:textField name="contactMail" value="${acteurInstance?.contactMail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: acteurInstance, field: 'publie', 'error')} ">
	<label for="publie">
		<g:message code="acteur.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${acteurInstance?.publie}" />

</div>

