<title>Statistiques</title>
<link rel="stylesheet" href="Template/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet" href="Template/assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet" href="Template/assets/css/style.css" />
<link rel="shortcut icon" href="Template/assets/images/icons8_storage_10px_1.png" />
<%@page import="service.MarqueService"%>
<%@page import="beans.Marque"%>
 <div class="container-scroller">
     <%@ include file="/include/menu.jsp" %>
     	<div class="container-fluid page-body-wrapper">
         <%@ include file="/include/header.jsp" %>  
       <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title">Statistique</h3>   
            </div>
            <div class="row">
            <div class="col-12 grid-margin">
            <div class="card">
            <div class="card-body">
             <form class="form-sample" id="form" method ="POST">
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
                   <div class="add-items d-flex flex-wrap flex-sm-nowrap">
                    	 <button type="button" class="add btn btn-primary  font-weight-regular text-nowrap"  id="add"> Afficher </button>
                   	</div> 
                   	</div>
                </form>
              </div>
              </div>
              </div>
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Variation d'Achats</h4>
                    <canvas id="areaChart" style="height: 250px;"></canvas>
                  </div>
                </div>
              </div>            
            </div>
          </div>
          <%@ include file="/include/footer.jsp" %>
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <script src="Template/assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="Template/assets/vendors/chart.js/Chart.min.js"></script>
    <script src="Template/assets/js/off-canvas.js"></script>
    <script src="Template/assets/js/hoverable-collapse.js"></script>
    <script src="Template/assets/js/misc.js"></script>
    <script src="Template/assets/js/chart.js"></script>

