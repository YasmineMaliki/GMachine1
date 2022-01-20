<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<meta charset="ISO-8859-1">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Gestion de Machine</title>
    <link rel="stylesheet" href="Template/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="Template/assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="Template/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="Template/assets/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="Template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="Template/assets/css/style.css">
    <link rel="shortcut icon" href="Template/assets/images/icons8_storage_10px_1.png" />
   
  <style type="text/css">/* Chart.js */
@keyframes chartjs-render-animation{from{opacity:.99}to{opacity:1}}.chartjs-render-monitor{animation:chartjs-render-animation 1ms}.chartjs-size-monitor,.chartjs-size-monitor-expand,.chartjs-size-monitor-shrink{position:absolute;direction:ltr;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1}.chartjs-size-monitor-expand>div{position:absolute;width:1000000px;height:1000000px;left:0;top:0}.chartjs-size-monitor-shrink>div{position:absolute;width:200%;height:200%;left:0;top:0}</style></head>
</head>
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
    		 <%@ include file="/include/home.jsp" %>
    		 <%@ include file="/include/footer.jsp" %>
    	</div>
      </div>
    </div>
    </body>
</html>
