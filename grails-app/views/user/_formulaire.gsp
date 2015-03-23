
                                <div class="prf-contacts position-center">
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Votre besoin : </h2>
                                            <div class="location-info">
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-7">
                                                    <input type="text"  value="${formulaireInstance?.nomProjet}" class="form-control" name="nomProjet" placeholder="Saisir le nom du projet" required >
                                                </div>
                                            </div>
                                              
                                              <div class="form-group ">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Type de projet</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.typeProjet}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.TypeProjet.list()}">
                                        <g:if test='${formulaireInstance?.typeProjet?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
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
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.DureeBesoin.list()}">
                                        <g:if test='${formulaireInstance?.dureeBesoin?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
  
  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Urgence de votre financement</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.urgenceBesoin}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.UrgenceBesoin.list()}">
                                        <g:if test='${formulaireInstance?.urgenceBesoin?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
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
                                                    <input type="text"  value="${formulaireInstance?.siren}" class="form-control" name="montantRecherche" placeholder="SIREN" required >
                                                </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Secteur d'activité</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.secteur}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${stratefi.comparateur.Secteur.list()}">
                                        <g:if test='${formulaireInstance?.secteur?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
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
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${referentiel.ProprieteMachine.list()}">
                                        <g:if test='${formulaireInstance?.proprieteMachine?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              
                                              <div class="form-group">
                                                <label for="e2" class="col-lg-5 col-sm-5 control-label">Etes vous propriétaire de vos locaux?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e2" class="form-control populate"  value="${formulaireInstance?.proprieteLocaux}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${referentiel.ProprieteLocaux.list()}">
                                        <g:if test='${formulaireInstance?.proprieteLocaux?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
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
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${referentiel.CroissanceCa.list()}">
                                        <g:if test='${formulaireInstance?.croissanceCa?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Combien de clients avez vous?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.volumeClient}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${referentiel.VolumeClient.list()}">
                                        <g:if test='${formulaireInstance?.volumeClient?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Vos clients paient ils à crédit?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.creanceClient}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${referentiel.CreanceClient.list()}">
                                        <g:if test='${formulaireInstance?.creanceClient?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous distributeur de marchandises?</label>
                                               
                                <div class="col-lg-7">
                                    <select id="e1" class="form-control populate"  value="${formulaireInstance?.marchandise}">
                                        <option value=""> - </option>
                                      <g:each var="typeProjetInstance" in="${referentiel.Marchandise.list()}">
                                        <g:if test='${formulaireInstance?.marchandise?.id == typeProjetInstance.id}'>
                                          <option value="${typeProjetInstance.id}" selected>${typeProjetInstance.nom}</option>
                                        </g:if>
                                        <g:else>
                                          <option value="${typeProjetInstance.id}">${typeProjetInstance.nom}</option>
                                        </g:else>
                                      </g:each>
                                    </select>
                                </div>
                                                
                                            </div>
                                              
                                              
                                            </div>
                                        </div>
  
 