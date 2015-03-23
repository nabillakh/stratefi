<%@ page import="stratefi.comparateur.Formulaire" %>

<h2> <span><i class="fa fa-search"></i></span> Recherche </h2>
                                            </br>
                            <div class="form-group">
                                    <label for="typeProduit">Type de produit</label>
                                    <g:select name="typeProduit.id" class="form-control populate" id="e1" optionKey="id"  from="${stratefi.comparateur.TypeProduit.list()}" value="${formulaireInstance?.typeProduit?.id}">
                                       
                                    </g:select>
                                </div>
                            
                            <div class="form-group fieldcontain ${hasErrors(bean: analyseFinanciereInstance, field: 'entreprise', 'error')} ">
                                    <label for="secteur">Secteur</label>
                                    <g:select name="secteur.id"  class="form-control populate" id="e1" optionKey="id" from="${stratefi.comparateur.Secteur.list()}" value="${formulaireInstance?.secteur?.id}">
                                    
                                    </g:select>
                                    
                                </div>
                            
                            
                             
                            <div class="form-group">
                                    <label for="typeProjet">Type de projet</label>
                                    <g:select name="typeProjet.id" class="form-control populate" id="e1" optionKey="id" from="${stratefi.comparateur.TypeProjet.list()}" value="${formulaireInstance?.typeProjet?.nom}">

                                    </g:select>
                                    
                                    
                                </div>
                            
                            
                             
				