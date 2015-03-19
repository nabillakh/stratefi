
<div class="col-md-12">
                                <div class="prf-contacts position-center">
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Votre besoin : </h2>
                                            <div class="location-info">
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${demandeInstance?.nom}" class="form-control" name="nom" placeholder="Nom" required >
                                                </div>
                                            </div>
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Type de projet</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.typeProjet}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.TypeProjet.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="montantRecherche" class="col-lg-5 col-sm-5 control-label">Montant recherché (*)</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${demandeInstance?.montantRecherche}" class="form-control" name="montantRecherche" placeholder="Montant recherché" required >
                                                </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Durée du financement</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.dureeBesoin}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.DureeBesoin.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Urgence de votre financement</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.urgenceBesoin}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.UrgenceBesoin.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
                                      
  
                                      
                                            </div>
                                            
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Votre entreprise : </h2>
                                            <div class="location-info">
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom de l'entreprise (*)</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${demandeInstance?.entreprise?.nom}" class="form-control" name="nom" placeholder="Nom" required >
                                                </div>
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="montantRecherche" class="col-lg-5 col-sm-5 control-label">Numéro de SIREN</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${demandeInstance?.entreprise?.siren}" class="form-control" name="montantRecherche" placeholder="SIREN" required >
                                                </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Secteur d'activité</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.secteur}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.Secteur.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
  
  
                                                
                                            </div>
                                            <h2> <span><i class="fa fa-phone"></i></span> Vos actifs</h2>
                                            <div class="location-info">
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous propriétaire de vos machines?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.gestionActif?.proprieteMachine}">
                                      <g:each var="typeProjetInstance" in="${referentiel.ProprieteMachine.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous propriétaire de vos locaux?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.gestionActif?.proprieteLocaux}">
                                      <g:each var="typeProjetInstance" in="${referentiel.ProprieteLocaux.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                      
                                              
                                              
                                            </div>
                                       
                                            <h2> <span><i class="fa fa-phone"></i></span> Votre business model</h2>
                                            <div class="location-info">
                                                <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Comment a évolué votre chiffre d'affaires cette année?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.businessModel?.croissanceCa}">
                                      <g:each var="typeProjetInstance" in="${referentiel.CroissanceCa.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Combien de clients avez vous?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.businessModel?.volumeClient}">
                                      <g:each var="typeProjetInstance" in="${referentiel.VolumeClient.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Vos clients paient ils à crédit?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.businessModel?.creanceClient}">
                                      <g:each var="typeProjetInstance" in="${referentiel.CreanceClient.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous distributeur de marchandises?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${demandeInstance?.entreprise?.businessModel?.marchandise}">
                                      <g:each var="typeProjetInstance" in="${referentiel.Marchandise.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              
                                            </div>
                                        </div>
  
  
               
                                    </div>   
<div class="col-md-6">
  
  <div class="prf-contacts"> </div>
  
</div>











                                      <div class="form-group"   style="display:none;">
                                                <label for="entreprise" class="col-lg-5 col-sm-5 control-label">Entreprise</label>
                                                <div class="col-lg-7">
                                                  <g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" value="${demandeInstance?.entreprise?.id}" class="many-to-one" noSelection="['null': '']"/>

                                                </div>
                                            </div>
                                            <div class="form-group"   style="display:none;">
                                                <label for="user" class="col-lg-5 col-sm-5 control-label">User</label>
                                                <div class="col-lg-7">
                                                  <g:select id="user" name="user.id" from="${connection.User.list()}" optionKey="id" value="${demandeInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

                                                </div>
                                            </div>
                                            
<div class="fieldcontain ${hasErrors(bean: demandeInstance, field: 'publie', 'error')} " style="display:none;">
	<label for="publie">
		<g:message code="demande.publie.label" default="Publie" />
		
	</label>
	<g:checkBox name="publie" value="${demandeInstance?.publie}" />

</div>
  
  