<title>Gestion de Machine</title>
<link rel="stylesheet" href="Template/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet" href="Template/assets/css/style.css" />
<link rel="shortcut icon" href="Template/assets/images/icons8_storage_10px_1.png" />
<script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="script/mechinemarque.js" type="text/javascript"></script>
<%@page import="service.MarqueService"%>
<%@page import="beans.Marque"%>
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
              <h3 class="page-title">Gestion de Machines</h3>
              <nav aria-label="breadcrumb">
              </nav>
            </div>     
            <div class="row"> 
            <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <form class="form-sample" id="form" method ="POST">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Marque</label>
                            <div class="col-sm-9">
                              <select class="form-control" id="select" required>
									<% MarqueService mrs = new MarqueService();
										for (Marque m : mrs.findAll()) {
									%>
										<option id="marque"><%=m.getLibelle()%></option>
									<%} %>		
							  </select>
                            </div>
                          </div>
                        </div>
                      </div> 
                      <div class="add-items d-flex flex-wrap flex-sm-nowrap">
                    	 <button type="button" class="add btn btn-primary  font-weight-regular text-nowrap"  id="add"> Rechercher </button>
                   	</div> 
            
                    </form>
                  </div>
                </div>
                <br>
             <br>
              </div>
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Liste des Machines</h4>
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>id</th>
                            <th>Reference</th>
                            <th>Date d'achat</th>
                            <th>Prix</th>
                            <th>Marque</th>
                          </tr>
                        </thead>
                        <tbody id="listMachines" >
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
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
 