<title>Compte</title>
<link rel="stylesheet" href="Template/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet" href="Template/assets/css/style.css" />
<link rel="shortcut icon" href="Template/assets/images/icons8_storage_10px_1.png" />
<script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="script/profil.js" type="text/javascript"></script>
<style>
.font{
	color: red;
	font-family: cambria;
	font-weight: bold;
}
</style>
<script type="text/javascript">
function Checklogout(){
	console.log(document.cookie)
	if(document.cookie ===('')){
		window.location = "login.jsp";
	}  
} </script>
<body  onload="Checklogout()">
 <div class="container-scroller">
     <%@ include file="/include/menu.jsp" %>
     	<div class="container-fluid page-body-wrapper">
         <%@ include file="/include/header.jsp" %>           
		<div class="main-panel">
          <div class="content-wrapper">  
          <div class="page-header">
              <h3 class="page-title">Gestion du Compte</h3>
            </div>     
            <div class="row"> 
           <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <form class="forms-sample" id="form" action="ProfilController" method="POST">
                    <input type="hidden" name="id" id="id" value="${id}" size="id" />
                      <input type="hidden" name="idU" id="idU" value="${id}" size="id" />
                     <h5 class="font-weight-light font" hidden="true" id="message">Erreur de Saisie !!!!! Email déjà Existant!!! </h5>
                      <div class="form-group">
                        <label for="exampleInputName1">Nom</label>
                        <input type="text" class="form-control" id="nom" placeholder="Name"  value="${nom}" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Email </label>
                        <input type="email" class="form-control" id="email" placeholder="Email"  value="${email}" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Mot de passe</label>
                        <input type="password" class="form-control" id="mdp" placeholder="Password"  value="${mdp}" required>
                      </div>
                      <button type="button" class="btn btn-primary mr-2" id="add"> Modifier Utilisateur </button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
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
 