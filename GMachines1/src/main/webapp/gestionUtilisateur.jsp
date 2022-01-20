<title>Gestion des Utilisateur</title>
<link rel="stylesheet" href="Template/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet" href="Template/assets/css/style.css" />
<link rel="shortcut icon" href="Template/assets/images/icons8_storage_10px_1.png" />
<script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="script/users.js" type="text/javascript"></script>
<style>
.font{
	color: red;
	font-family: cambria;
	font-weight: bold;
}
</style>
<script type="text/javascript">
function Checklogout(){
	if(document.cookie ===('')){
		window.location = "login.jsp";
	}  
} </script>
<body id="main"  onload="Checklogout()">
 <div class="container-scroller">
     <%@ include file="/include/menu.jsp" %>
     	<div class="container-fluid page-body-wrapper">
         <%@ include file="/include/header.jsp" %>           
		<div class="main-panel">
          <div class="content-wrapper">  
          <div class="page-header">
              <h3 class="page-title">Gestion des Utilisateurs</h3>
               <h5 class="font-weight-light font" hidden="true" id="message">Erreur de Saisie !!!!! Email déjà Existant!!! </h5>
            </div>     
            <div class="row"> 
           <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <form class="forms-sample" id="form">
                     <input type="hidden" name="id" id="id" value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>" size="id" />
                     <input type="hidden" name="idU" id="idU" value="${id}" size="id" />
                      <div class="form-group">
                        <label for="exampleInputName1">Nom</label>
                        <input type="text" class="form-control" id="nom" placeholder="Name"  value="<%= request.getParameter("nom") == null ? "" : request.getParameter("nom")%>" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Email </label>
                        <input type="email" class="form-control" id="email" placeholder="Email"  value="<%= request.getParameter("email") == null ? "" : request.getParameter("email")%>" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Mot de passe</label>
                        <input type="password" class="form-control" id="mdp" placeholder="Password"  value="<%= request.getParameter("mdp") == null ? "" : request.getParameter("mdp")%>" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleSelectGender">Sexe</label>
                        <select class="form-control" required id="select"> 
                          <option>Homme</option>
                          <option>Femme</option>
                        </select>
                      </div>
                       <div class="form-group">
                        <label for="exampleSelectGender">Super Admin</label>
                        <br>
                        <input class="form-check-label" type="checkbox" id="sAdmin"  value="<%= request.getParameter("sAdmin") == null ? "" : request.getParameter("sAdmin")%>" required>
                      </div>
                      <button type="submit" class="btn btn-primary mr-2" id="add"> Ajouter Utilisateur </button>
                    </form>
                  </div>
                </div>
              </div>
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="tableContent">
                        <thead>
                          <tr>
                            <th>id</th>
                            <th>Nom</th>
                            <th>E-mail</th>
                            <th>Mot de Passe</th>
                            <th>Sexe</th>
                            <th>Super Admin</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody id="listeUsers">
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
           <%@ include file="/include/footer.jsp" %>
		</div>
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <script src="Template/assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="Template/assets/js/off-canvas.js"></script>
    <script src="Template/assets/js/hoverable-collapse.js"></script>
    <script src="Template/assets/js/misc.js"></script>
  </body>	
 