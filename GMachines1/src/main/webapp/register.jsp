<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Gestion Machines</title>
  <!-- base:css -->
  <link rel="stylesheet" href="Template/assets/vendorsO/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="Template/assets/vendorsO/feather/feather.css">
  <link rel="stylesheet" href="Template/assets/vendorsO/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="Template/assets/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="Template/assets/images/favicon.png" />
 
</head>
<style>
.font{
	color: red;
}
</style>
<script type="text/javascript">
function Checklogout(){
	console.log(document.cookie)
	if(document.cookie !=('')){
		window.location.forward();
	}
    
} </script>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="Template/assets/images/logo.svg" alt="logo">
              </div>
              <h4>Bienvenue</h4>
              <h6 class="font-weight-light">Veuillez s'inscrire! Veuillez Remplir tous les champs! </h6>
              <h5 class="font-weight-light font" hidden="true" id="message"> Veuillez Remplir tous les champs! </h5>
              <h5 class="font-weight-light font" hidden="true" id="message1"> Email déjà existant! </h5>
              <form class="pt-3">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="nom" placeholder="Username" required >
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-lg" id="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                  <select class="form-control form-control-lg" id="select" required>
                    <option>Sexe</option>
                    <option>Femme</option>
                    <option>Homme</option>
                  </select>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="mdp" placeholder="Mot de passe" required>
                </div>
                <div class="mb-4">
                  <div class="form-check">                   
                  </div>
                </div>
                <div class="mt-3">
                  <button type="button" class="btn btn-block btn-info btn-lg font-weight-medium auth-form-btn" id="register">S'inscrire</button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Vous avez déja un compte?<a href="login.jsp" class="text-primary"> Se connecter</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="Template/assets/vendorsO/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="Template/assets/js/off-canvas.js"></script>
  <script src="Template/assets/js/hoverable-collapse.js"></script>
  <script src="Template/assets/js/template.js"></script>
  <script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
  <script src="script/users.js" type="text/javascript"></script>
  <!-- endinject -->
</body>

</html>