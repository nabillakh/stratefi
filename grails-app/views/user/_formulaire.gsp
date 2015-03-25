
                                <div class="prf-contacts position-center">
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Votre besoin : </h2>
                                            <div class="location-info">
                                              <p>
                                              Quel est votre projet?</p>
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom du projet (*)</label>
                                                <div class="col-lg-7">
                                                 <g:textField value="${formulaireInstance?.nomProjet}" class="form-control" name="nomProjet" placeholder="Saisir le nom du projet" required="required"/>
</div>
                                            </div>
         
                                              
                                              <div class="form-group ">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Type de projet</label>
                                               
                                <div class="col-lg-7">
                                        <g:select id="e1"  class="form-control populate" name="typeProjet.id" from="${stratefi.comparateur.TypeProjet.list()}" optionKey="id" value="${formulaireInstance?.typeProjet?.id}" noSelection="['null': '']"/>

                                </div>
                                                
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="montantRecherche" class="col-lg-5 col-sm-5 control-label">Montant recherché (*)</label>
                                                <div class="col-lg-7">
                                                 <g:textField value="${formulaireInstance?.montantRecherche}" class="form-control" name="montantRecherche" placeholder="Saisir le nom du projet" required="required"/>

                                                </div>
                                           </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Durée du financement</label>
                                               
                                <div class="col-lg-7">
                                  
                                        <g:select id="e1"  class="form-control populate" name="dureeBesoin.id" from="${stratefi.comparateur.DureeBesoin.list()}" optionKey="id" value="${formulaireInstance?.dureeBesoin?.id}" noSelection="['null': '']"/>

                                    
                                </div>
                                                
                                            </div>
  
  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Urgence de votre financement</label>
                                               
                                <div class="col-lg-7">
                                        <g:select id="e1"  class="form-control populate" name="urgenceBesoin.id" from="${stratefi.comparateur.UrgenceBesoin.list()}" optionKey="id" value="${formulaireInstance?.urgenceBesoin?.id}" noSelection="['null': '']"/>

                                    
                                </div>
                                                
                                            </div>
  
                                      
  
                                      
                                            </div>
                                            
                                            <h2> <span><i class="fa fa-map-marker"></i></span> Votre entreprise : </h2>
                                            <div class="location-info">
                                              <p>
                                              Qui êtes vous?</p>
                                                      <div class="form-group">
                                                <label for="nom" class="col-lg-5 col-sm-5 control-label">Nom de l'entreprise (*)</label>
                                                <div class="col-lg-7">
                                                 <g:textField value="${formulaireInstance?.nomEntreprise}" class="form-control" name="nomEntreprise" placeholder="Saisir le nom du projet" required="required"/>

                                                </div>
                                            </div>
      
  
                                           <div class="form-group">
                                                <label for="siren" class="col-lg-5 col-sm-5 control-label">Numéro de SIREN</label>
                                                <div class="col-lg-7">
                                                 <g:textField value="${formulaireInstance?.siren}" class="form-control" name="siren" placeholder="SIREN" required="required"/>

                                                    </div>
                                            </div>


  
                                      <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Secteur d'activité</label>
                                               
                                <div class="col-lg-7">
                                                        <g:select id="e1"  class="form-control populate" name="secteur.id" from="${stratefi.comparateur.Secteur.list()}" optionKey="id" value="${formulaireInstance?.secteur?.id}" noSelection="['null': '']"/>

                                </div>
                                                
                                            </div>
  
  
  
                                                
                                            </div>
                                            <h2> <span><i class="fa fa-phone"></i></span> Vos actifs</h2>
                                            <div class="location-info">
                                              <p>
                                              Que possédez-vous?</p>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous propriétaire de vos machines?</label>
                                               
                                <div class="col-lg-7">
                                  
                                  <g:select id="e1"  class="form-control populate" name="proprieteMachine.id" from="${referentiel.ProprieteMachine.list()}" optionKey="id" value="${formulaireInstance?.proprieteMachine?.id}" noSelection="['null': '']"/>

                                    
                                </div>
                                                
                                            </div>
                                              
                                              
                                              <div class="form-group">
                                                <label for="e2" class="col-lg-5 col-sm-5 control-label">Etes vous propriétaire de vos locaux?</label>
                                               
                                <div class="col-lg-7">
                                  <g:select id="e1"  class="form-control populate" name="proprieteLocaux.id" from="${referentiel.ProprieteLocaux.list()}" optionKey="id" value="${formulaireInstance?.proprieteLocaux?.id}" noSelection="['null': '']"/>

                                </div>
                                                
                                            </div>
                                      
                                              
                                              
                                            </div>
                                       
                                            <h2> <span><i class="fa fa-phone"></i></span> Votre business model</h2>
                                              <p>
                                              Comment gagnez-vous de l'argent?</p>
                                            <div class="location-info">
                                                <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Comment a évolué votre chiffre d'affaires cette année?</label>
                                               
                                <div class="col-lg-7">
                                  
                                  <g:select id="e1"  class="form-control populate" name="croissanceCa.id" from="${referentiel.CroissanceCa.list()}" optionKey="id" value="${formulaireInstance?.croissanceCa?.id}" noSelection="['null': '']"/>

                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Combien de clients avez vous?</label>
                                               
                                <div class="col-lg-7">              
                                  <g:select id="e1"  class="form-control populate" name="volumeClient.id" from="${referentiel.VolumeClient.list()}" optionKey="id" value="${formulaireInstance?.volumeClient?.id}" noSelection="['null': '']"/>

                                    
                                </div>
                                                
                                            </div>
                                              
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Vos clients paient ils à crédit?</label>
                                               
                                <div class="col-lg-7">          
                                  <g:select id="e1"  class="form-control populate" name="creanceClient.id" from="${referentiel.CreanceClient.list()}" optionKey="id" value="${formulaireInstance?.creanceClient?.id}" noSelection="['null': '']"/>

                                    
                                </div>
                                                
                                            </div>
                                              <div class="form-group">
                                                <label for="e1" class="col-lg-5 col-sm-5 control-label">Etes vous distributeur de marchandises?</label>
                                               
                                <div class="col-lg-7">    
                                  <g:select id="e1"  class="form-control populate" name="marchandise.id" from="${referentiel.Marchandise.list()}" optionKey="id" value="${formulaireInstance?.marchandise?.id}" noSelection="['null': '']"/>

                                    
                                </div>
                                                
                                            </div>
                                              
                                              
                                            </div>
                                        </div>
  
 