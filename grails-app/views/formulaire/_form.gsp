
                                <div class="prf-contacts position-center">
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Votre besoin : </h2>
                                            <div class="location-info">
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${formulaireInstance?.nomProjet}" class="form-control" name="nomProjet" placeholder="Saisir le nom du projet" required >
                                                </div>
                                            </div>
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Type de projet</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.typeProjet}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.TypeProjet.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="montantRecherche" class="col-lg-5 col-sm-5 control-label">Montant recherché (*)</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${formulaireInstance?.montantRecherche}" class="form-control" name="montantRecherche" placeholder="Montant recherché" required >
                                                </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Durée du financement</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.dureeBesoin}">
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.DureeBesoin.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Urgence de votre financement</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.urgenceBesoin}">
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
                                                    <input type="text"  value="${formulaireInstance?.nomEntreprise}" class="form-control" name="nom" placeholder="Nom" required >
                                                </div>
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="montantRecherche" class="col-lg-5 col-sm-5 control-label">Numéro de SIREN</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${demandeInstance?.siren}" class="form-control" name="montantRecherche" placeholder="SIREN" required >
                                                </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Secteur d'activité</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.secteur}">
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
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.proprieteMachine}">
                                      <g:each var="typeProjetInstance" in="${referentiel.ProprieteMachine.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              
                                              <div class="form-group">
                                                <label for="e2" class="col-lg-5 col-sm-5 control-label">Etes vous propriétaire de vos locaux?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e2" class="form-control populate"  value="${formulaireInstance?.proprieteLocaux}">
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
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.croissanceCa}">
                                      <g:each var="typeProjetInstance" in="${referentiel.CroissanceCa.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Combien de clients avez vous?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.volumeClient}">
                                      <g:each var="typeProjetInstance" in="${referentiel.VolumeClient.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Vos clients paient ils à crédit?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.creanceClient}">
                                      <g:each var="typeProjetInstance" in="${referentiel.CreanceClient.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous distributeur de marchandises?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.marchandise}">
                                      <g:each var="typeProjetInstance" in="${referentiel.Marchandise.list()}">
                                        <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              
                                            </div>
                                        </div>
  
 