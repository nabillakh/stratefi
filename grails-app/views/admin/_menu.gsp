<div class="prf-contacts">
                                  <h2>
  <span>
    <i class="fa fa-search">
    </i>
  </span>
  Menu
</h2>
                          <nav class="navbar2 " role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->


  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar2-collapse navbar-ex1-collapse">
    <ul class="nav navbar2-nav  nav-default">
      <sec:ifLoggedIn>

            
                        <li>
                          <a href="${lien}/user/profilEntreprise"  class=' '>
                             <i class="fa fa-dashboard"></i> Tableau de bord
                          </a>
                        </li>

                </sec:ifLoggedIn>
      <li>    <a  class='' href="${lien}/user/analyseFi" title="Profitez d'une analyse financière gratuite">
                                 
                                <i class="fa fa-phone"></i>
                                Se préparer
                                </a>
      </li>
                                <li class="active">
                                
                              <a  class='' href="${lien}/comparateur" title="Comparer simplement les moyens de financement">
                         
                                <i class="fa fa-eye"></i>
                                Comparer
                                </a>
                                </li>
                                <li class="">
                                
                              <a  class='' href="${lien}/user/nouvelleDemande" title="Comparer simplement les moyens de financement">
                         
                                <i class="fa fa-money"></i>
                                Se financer
                                </a>
                                </li>
      <!--<li class="dropdown">
        <a href="#" class="dropdown-toggle btn  btn-white" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li>
           <a  class='btn btn-white' href="${lien}/comparateur" title="Comparer simplement les moyens de financement">
                         
                                <i class="fa fa-eye text-success"></i>
                                Comparer
                                </a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
          <li><a href="#">One more separated link</a></li>
        </ul>
      </li>-->
                                <sec:ifNotLoggedIn>
                                <li class="">
                                
                            
                                      <a  href="${lien}/login/inscription" class="btn btn-danger btn-block">
                                        S'inscrire
                                      </a>
                                </li>
                                </sec:ifNotLoggedIn>
                                
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
                           </div>