<title>Gestion de Machine</title>
<link rel="stylesheet" href="Template/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet" href="Template/assets/css/style.css" />
<link rel="shortcut icon" href="Template/assets/images/icons8_storage_10px_1.png" />
<script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="script/machines.js" type="text/javascript"></script>
<%@page import="service.MarqueService"%>
<%@page import="beans.Marque"%>
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
<body id="main"  onload="Checklogout()">
 <div class="container-scroller">
     <%@ include file="/include/menu.jsp" %>
     	<div class="container-fluid page-body-wrapper">
         <%@ include file="/include/header.jsp" %>     
		<div class="main-panel">
          <div class="content-wrapper">  
          <div class="page-header">
              <h3 class="page-title">Gestion de Machines</h3>
               <h5 class="font-weight-light font" hidden="true" id="message">Erreur de Saisie !!!!! Réference déjà Existante!!! </h5>
              <nav aria-label="breadcrumb">
              </nav>
            </div>     
            <div class="row"> 
            <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <form class="form-sample" id="form" method ="POST">
                    <input type="hidden" name="id" id="id" value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>" size="id" />
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Reference</label>
                            <div class="col-sm-9">
                              <input id="reference" name="reference" type="text"  value="<%= request.getParameter("reference") == null ? "" : request.getParameter("reference")%>" required class="form-control">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Prix</label>
                            <div class="col-sm-9">
                              <input id="prix" type="text" name="prix"  value="<%= request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" required class="form-control">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Marque</label>
                            <div class="col-sm-9">
                              <select class="form-control" required id="select">
										
							  </select>
                            </div>
                          </div>
                        </div>
                        
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date d'achat</label>
                            <div class="col-sm-9">
                              <input class="form-control" id="dateAchat" type="date" value="<%= request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat")%>" placeholder="dd/mm/yyyy" name="dateAchat" required>
                            </div> 
                          </div>
                        </div>
                       </div>
                      <div class="add-items d-flex flex-wrap flex-sm-nowrap">
                    	  <button class="add btn btn-primary  font-weight-regular text-nowrap" id="add"> Ajouter Machine </button>
                   	</div> 
                   	</form>          
                  </div>
                </div>
              </div>
              
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Liste des Machines</h4>
                    <div class="table-responsive">
                      <table class="table table-striped" id="tableContent">
                        <thead>
                          <tr>
                            <th>id</th>
                            <th>Reference</th>
                            <th>Date d'achat</th>
                            <th>Prix</th>
                            <th>Marque</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody id="listeMachine">
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
    		
 