<nav class="navbar col-lg-12 col-12 p-lg-0 fixed-top d-flex flex-row">
          <div class="navbar-menu-wrapper d-flex align-items-stretch justify-content-between">
            <a class="navbar-brand brand-logo-mini align-self-center d-lg-none" href="machines.jsp"><img src="./Template/assets/images/logo-mini.svg" alt="logo"></a>
            <button class="navbar-toggler navbar-toggler align-self-center mr-2" type="button" data-toggle="minimize">
              <i class="mdi mdi-menu"></i>
            </button>
            <ul class="navbar-nav navbar-nav-right ml-lg-auto">
              <li class="nav-item nav-profile dropdown border-0">
                <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown">
                  <img class="nav-profile-img mr-2" alt="" src="./Template/assets/images/faces/face1.jpg">
                  <span class="profile-name"><%= (String)session.getAttribute("nom") %></span>
                </a>
                <div class="dropdown-menu navbar-dropdown w-500" aria-labelledby="profileDropdown">
                  
                    <a class="dropdown-item" href="lock.jsp">
                    <i class="mdi mdi-logout mr-2 text-primary"></i> Verrouiller
                     </a>
                     <form action="LogoutController" method="POST">
                     <button type="submit" class="dropdown-item preview-item" id="signout">   <i class="mdi mdi-logout mr-2 text-primary"></i>
						Déconnexion
				  </button>
				  </form>
                </div>
              </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-menu"></span>
            </button>
          </div>
</nav>

