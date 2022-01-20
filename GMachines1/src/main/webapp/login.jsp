<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Gestion Machine</title>
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
	font-family: cambria;
	font-weight: bold;
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
                  <br>
                  <br>
              <h4>Bonjour !</h4>
              <h6 class="font-weight-light">Veuillez s'authentifier pour se connecter.</h6>
              <h5 class="font-weight-light font" hidden="true" id="message"> Erreur de Saisie! Mot de passe ou Username Incorrecte!!! </h5>
              <form class="pt-3" action="LoginController" method="POST" >
                <div class="form-group">
                  <input type="email" class="form-control form-control-lg" id="email"  name="email" placeholder="Username">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="mdp"  name="mdp" placeholder="Mot de passe">
                </div>
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-info btn-lg font-weight-medium auth-form-btn" id="login">Se connecter</button>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">             
                  </div>
                  <br>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Avez-vous un compte? <a href="register.jsp" class="text-primary">Créer</a>
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
  <!-- endinject -->
</body>

</html>