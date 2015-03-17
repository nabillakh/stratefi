
<div class="col-md-12">
                                            <div class="form-group">
                                                <label for="nom" class="col-lg-2 col-sm-2 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-10">
                                                    <input type="text"  value="${demandeInstance?.nom}" class="form-control" name="nom" placeholder="Nom" required >
                                                </div>
                                            </div>
                                            <div class="form-group"   style="display:none;">
                                                <label for="entreprise" class="col-lg-2 col-sm-2 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-10">
                                                  <g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${demandeInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

                                                </div>
                                            </div>
                                            <div class="form-group"   style="display:none;">
                                                <label for="user" class="col-lg-2 col-sm-2 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-10">
                                                  <g:select id="user" name="user.id" from="${connection.User.list()}" optionKey="id" value="${demandeInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="besoinMarche" class="col-lg-2 col-sm-2 control-label">Besoin du marché</label>
                                                <div class="col-lg-10">
                                                  <textarea class="form-control" rows="3"  value="${demandeInstance?.besoinMarche}" name="besoinMarche" placeholder='Quel est le marché ciblé et quel est le besoin que vous couvrez?' required></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="disruption" class="col-lg-2 col-sm-2 control-label">Disruption</label>
                                                <div class="col-lg-10">
                                                  <textarea class="form-control" rows="3" name="disruption"  value="${demandeInstance?.disruption}" placeholder='En quoi ce projet vous permet de vous distinguer?'></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="description" class="col-lg-2 col-sm-2 control-label">Description</label>
                                                <div class="col-lg-10">
                                                  <textarea class="form-control" rows="3" name="description"  value="${demandeInstance?.description}" placeholder='Veuillez décrire votre projet en quelques lignes'></textarea>
                                                </div>
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



<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'publie', 'error')} ">
	<label for="publie">
		<g:message code="demande.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${demandeInstance?.publie}" />

</div>
               
                                    </div>                         