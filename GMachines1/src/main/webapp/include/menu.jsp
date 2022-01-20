<nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="text-center sidebar-brand-wrapper d-flex align-items-center">
          <a class="sidebar-brand brand-logo middle" href="machines.jsp"><img src="./Template/assets/images/logo.svg" alt="logo"></a>
        </div>
          <br>
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="profil.jsp" class="nav-link">
              <div class="nav-profile-image">
                <img src="./Template/assets/images/faces/face1.jpg" alt="profile">
                <span class="login-status online"></span>
                <!--change to offline or busy as needed-->
              </div>
              <div class="nav-profile-text d-flex flex-column pr-3">
             <div class="user-name"><%= (String)session.getAttribute("nom") %></div>
			 </div>   
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="machines.jsp">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Home</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="tables.jsp">
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              <span class="menu-title">Gestion des marques</span>
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="gestionMachine.jsp">
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              <span class="menu-title">Gestion des machines</span>
            </a>
          </li>
          <% if((boolean) session.getAttribute("superAdmin")==true){%>
          <li class="nav-item">
            <a class="nav-link" href="gestionUtilisateur.jsp">
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              <span class="menu-title">Gestion des utilisateurs</span>
            </a>
          </li>
          <%} %>
           <li class="nav-item">
            <a class="nav-link" href="machineMarque.jsp">
              <i class="mdi mdi-file-document-box menu-icon"></i>
              <span class="menu-title">Machine par marque</span>
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="machineAchete.jsp">
              <i class="mdi mdi-file-document-box menu-icon"></i>
              <span class="menu-title">Machine achetée</span>
            </a>
          </li>
          <!--
          <li class="nav-item">
            <a class="nav-link" href="chartjs.jsp">
              <i class="mdi mdi-chart-bar menu-icon"></i>
              <span class="menu-title">Statistique</span>
            </a>
          </li>
          -->
          <li class="nav-item sidebar-actions">
            <div class="nav-link">
              <div class="mt-4">
                <ul class="mt-4 pl-0">
                <form action="LogoutController" method="POST">
                  <button type="submit" class="dropdown-item preview-item bg-image hover-zoom mask" style="background-color: rgba(251, 251, 251, 0.2)" id="signout"> <i class="mdi mdi-logout"></i>
						Déconnexion
				  </button>
				  </form>
                </ul>
              </div>
            </div>
          </li>
        </ul>
      </nav>
