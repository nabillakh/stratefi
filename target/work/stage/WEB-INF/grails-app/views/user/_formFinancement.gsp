
<div class="col-md-12">
                                            <div class="form-group">
                                                <label for="nom" class="col-lg-2 col-sm-2 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-10">
                                                    <input type="text"  value="${demandeInstance?.nom}" class="form-control" name="nom" placeholder="Nom" required >
                                                </div>
                                            </div>
                                            <div class="form-group"   style="display:none;">
                                                <label for="entreprise" class="col-lg-2 col-sm-2 control-label">Entreprise</label>
                                                <div class="col-lg-10">
                                                  <g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${demandeInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

                                                </div>
                                            </div>
                                            <div class="form-group"   style="display:none;">
                                                <label for="user" class="col-lg-2 col-sm-2 control-label">User</label>
                                                <div class="col-lg-10">
                                                  <g:select id="user" name="user.id" from="${connection.User.list()}" optionKey="id" value="${demandeInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

                                                </div>
                                            </div>
                                            
<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'publie', 'error')} " style="display:none;">
	<label for="publie">
		<g:message code="demande.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${demandeInstance?.publie}" />

</div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-2 col-sm-2 control-label">Type de projet</label>
                                               
                                <div class="col-lg-10">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.typeProjet}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.TypeProjet.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-2 col-sm-2 control-label">Type de produit</label>
                                               
                                <div class="col-lg-10">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.type}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.TypeProduit.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
  <div class="form-group">
                                                <label for="nom" class="col-lg-2 col-sm-2 control-label">Montant recherché (*)</label>
                                                <div class="col-lg-10">
                                                    <input type="text"  value="${demandeInstance?.montantRecherche}" class="form-control" name="montantRecherche" placeholder="Montant recherché" required >
                                                </div>
                                            </div>
  
               
                                    </div>                         