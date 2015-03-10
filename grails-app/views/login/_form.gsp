
                                    <div class="prf-contacts sttng">
                                        <h2 title ="offre">Informations de connection :</h2>
                                    </div>
                                   <div class="form-group col-lg-12">
                                     
                                     <div class="col-lg-2 "></div>
                                     <label for="username" class="col-lg-2 control-label">
		<g:message code="user.username.label" default="Adresse email" />
		
	</label>
                                            <div class="col-lg-6">
                                                <g:textField name="username" value="${userInstance?.username}" class="form-control" />
                                            </div>
                                     <div class="col-lg-2"></div>
                                        </div>

  <div class="form-group col-lg-12">
                                     
                                     <div class="col-lg-2 "></div>
                                     <label for="password" class="col-lg-2 control-label">
		<g:message code="user.password.label" default="Mot de passe" />
		
	</label>
                                            <div class="col-lg-6">
                                                <g:textField name="password" value="${userInstance?.password}" class="form-control" />
                                            </div>
                                     <div class="col-lg-2"></div>
                                        </div>

  <div class="form-group col-lg-12">
                                     
                                     <div class="col-lg-2 "></div>
                                     <label for="password" class="col-lg-2 control-label">
		<g:message code="user.password.label" default="Mot de passe *" />
		
	</label>
                                            <div class="col-lg-6">
                                                <g:textField name="password2" class="form-control" />
                                            </div>
                                     <div class="col-lg-2"></div>
                                        </div>

                                 
                                  
                                    <div class="prf-contacts sttng">
                                        <h2 title ="offre">Informations personnelles :</h2>
                                    </div>

                                <div class="form-group col-lg-12">
                                     
                                     <div class="col-lg-2 "></div>
                                     <label for="nom" class="col-lg-2 control-label">
		<g:message code="user.nom.label" default="Nom" />
		
	</label>
                                            <div class="col-lg-6">
                                                <g:textField name="nom" value="${userInstance?.nom}" class="form-control" />
                                            </div>
                                     <div class="col-lg-2"></div>
                                        </div>

                                        
  <div class="form-group col-lg-12">
                                     
                                     <div class="col-lg-2 "></div>
                                     <label for="prenom" class="col-lg-2 control-label">
		<g:message code="user.prenom.label" default="Prenom" />
		
	</label>
                                            <div class="col-lg-6">
                                                <g:textField name="prenom" value="${userInstance?.prenom}" class="form-control" />
                                            </div>
                                     <div class="col-lg-2"></div>
                                        </div>
                                   
            
                <input type="checkbox" value="agree this condition"> J'accepte les conditions générales
           