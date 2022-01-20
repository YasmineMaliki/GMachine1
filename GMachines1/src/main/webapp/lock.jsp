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
.auth.lock-full-bg {
    background: url(Template/assets/images/auth/lockscreen-bg.jpg);
    background-size: cover;
}
</style>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth lock-full-bg">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-transparent text-left p-5 text-center">
              <img src="Template/assets/images/faces/icons8_user_90px.png" class="lock-profile-img" alt="img">
              <form class="pt-5" action="LockController?referer=<%= request.getHeader("referer") %>" method="POST">
                <div class="form-group">
                  <label for="examplePassword1"><%= (String)session.getAttribute("nom") %></label>
                  <input type="password" class="form-control text-center" id="mdp" placeholder="Mot de passe" name="mdp">
                </div>
                <div class="mt-5">
                  <button type="submit" class="btn btn-block btn-info  btn-lg font-weight-medium" >Déverrouiller</button>
                </div>
                <div class="mt-3 text-center">
                  <a href="login.jsp" class="auth-link text-white">Se connecter en utilisant un autre compte !</a>
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
  <!-- endinject -->
</body>

</html>