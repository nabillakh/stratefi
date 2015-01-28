
<!DOCTYPE html>

  <head>
		<meta name="layout" content="comparaison"/>
		<title>Simulateur crédit bancaire pour PME</title>
                <meta name="description" content="Alloratio propose gratuitement un outil de simulation de crédit bancaire" />
                <meta name="keywords" content="financement, crédit, banque, PME, startup" />
                <link rel="shortcut icon" href="${request.contextPath}/images/favicon.ico">
                
                <g:javascript library="jquery" plugin="jquery" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head> 
                        
<g:if env="production">
     <g:set var="lien" value="http://www.alloratio.com" />
</g:if>
<g:if env="development">
     <g:set var="lien" value="${request.contextPath}" />
</g:if>


<section class="panel">
            <div class="wdgt-row">
                <img src="${request.contextPath}/images/fond.jpg" height="243" alt="">
                <div class="wdt-head">
                  <h1 title="simulateur crédit">Simulation de crédit</h1>
                  <p align='justify'>  
                    Le crédit bancaire est la principale source de financement des PME et des startup. Peu couteux, il permet d'augmenter son niveau de trésorerie.
                    Alloratio vous propose un simulateur simple de crédit bancaire.
                  </p>        
                </div>
            </div>

            
        </section>



  <section class="panel">   
          
                    <div class="panel-body">
                      <div id="formulaire">  
                        <form class="form-horizontal" role="form">
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="nomEmprunt" class="col-sm-3 control-label">Nom du projet</label>
    <div class="input-group col-sm-3">
      <input type="text" class="form-control" id="nomEmprunt" placeholder="Nom" value='${empruntInstance?.nom}'>
    </div><div class="col-sm-3"></div>
  </div>
                    
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="duree" class="col-sm-3 control-label">Durée du crédit (mois) </label>
    <div class="input-group col-sm-3">
      <input type="number" class="form-control" id="duree" placeholder="Mensualités" value="${empruntInstance?.nbMensualite}">
      <div class="input-group-addon">Mois</div>
    </div><div class="col-sm-3"></div>
  </div>                     
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="montantEmprunt" class="col-sm-3 control-label">Montant de l'emprunt</label>
    <div class="input-group col-sm-3">
      <input type="number" step="1000" class="form-control" id="montantEmprunt" placeholder="Montant" value="${empruntInstance?.montant}">
      <div class="input-group-addon">€</div>
    </div><div class="col-sm-3"></div>
  </div>
                          
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="interet" class="col-sm-3 control-label">Taux d'intérêt bancaire</label>
    <div class="input-group col-sm-3">
      <input type="number" step="0.1" class="form-control" id="interet" placeholder="Taux" value="${empruntInstance?.tauxInteret}">
      <div class="input-group-addon">%</div>
    </div><div class="col-sm-3"></div>
  </div>
                          
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="assurance" class="col-sm-3 control-label">Taux assurance crédit</label>
    <div class="input-group col-sm-3">
      <input type="number" step="0.1" class="form-control" id="assurance" placeholder="Taux assurance" value="${empruntInstance?.tauxAssurance}">
      <div class="input-group-addon">%</div>
    </div>
    <div class="col-sm-3"></div>
  </div>         
                          
  
  
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-10">
      <a class="btn btn-info" title="amortissement" onclick="javascript:amortissement(this);return false;">Obtenir tableau d'amortissement</a>
    </div>
  </div>
</form>
  </div>
                      
     <div class="col-sm-12" id='amortissement'></div>                 
                        
                        
		</div>
                    <script>
                      function modifierVue() {
                        document.getElementById('formulaire').style.display = 'none';
                        // document.getElementById('aMontrer${k}').style.display = 'inline';
                      }
                      
          var nomEmprunt;
          var duree ;
          var montantEmprunt;
          var interet;
          var assurance;
            
          function majAmortissement() {
             nomEmprunt = $('#nomEmprunt2').val();
             duree = $('#duree2').val();
             montantEmprunt = $('#montantEmprunt2').val();
             interet = $('#interet2').val();
             assurance = $('#assurance2').val();
          
        <g:remoteFunction controller="emprunt" action="amortissement" params="\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"  update="amortissement"/>
                        modifierVue();            
          }
          function amortissement() {
             nomEmprunt = $('#nomEmprunt').val();
             duree = $('#duree').val();
             montantEmprunt = $('#montantEmprunt').val();
             interet = $('#interet').val();
             assurance = $('#assurance').val();
          
        <g:remoteFunction controller="emprunt" action="amortissement" params="\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"  update="amortissement"/>
                        modifierVue();
            }
          </script>
                </section>

        
    <!--//section-wrapper-->
    <!--//footer-->
    
                    
    <!-- Javascript -->          
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/FitVids/jquery.fitvids.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/flexslider/jquery.flexslider-min.js"></script>     
    <script type="text/javascript" src="${request.contextPath}/assets/js/main.js"></script>
    
    
    <script src="${request.contextPath}/js/amchart/raphael.2.1.0.min.js"></script>
    
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>



    <script src="//platform.twitter.com/oct.js" type="text/javascript"></script>
<script type="text/javascript">
twttr.conversion.trackPid('l572d');</script>
<noscript>
<img height="1" width="1" style="display:none;" alt="" src="https://analytics.twitter.com/i/adsct?txn_id=l572d&p_id=Twitter" />
<img height="1" width="1" style="display:none;" alt="" src="//t.co/i/adsct?txn_id=l572d&p_id=Twitter" /></noscript>
            
   <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52015735-2', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>