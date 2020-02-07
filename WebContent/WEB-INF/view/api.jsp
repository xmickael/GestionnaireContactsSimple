<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<jsp:include page="inc/head.jsp"></jsp:include>
<link rel=stylesheet href="${pageContext.request.contextPath}/ressources/css/prism.css">
<title>Gestionnaire de Contact - API</title>
</head>
<body>
	 <jsp:include page="inc/navbar.jsp"></jsp:include>
	 <header>
		<h1><img src="${pageContext.request.contextPath}/ressources/img/icon/api.png"  width="64" height="64"  class="mr-3"/>Documentation de l'api</h1>
   	</header>
    
    <div class="card bulle m-auto w-50">
		  <h6 class="card-header">
		  	<ul class="nav nav-pills" id="api-tab" role="tablist">
		  	  <li class="nav-item">
			    <a class="nav-link active" id="api-infos-tab" data-toggle="pill" href="#api-infos" role="tab" aria-controls="api-infos" aria-selected="true">Informations</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-get-tab" data-toggle="pill" href="#api-get" role="tab" aria-controls="api-get" aria-selected="false">GET</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-post-tab" data-toggle="pill" href="#api-post" role="tab" aria-controls="api-tabt" aria-selected="false">PUT</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-put-tab" data-toggle="pill" href="#api-put" role="tab" aria-controls="api-put" aria-selected="false">POST</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-delete-tab" data-toggle="pill" href="#api-delete" role="tab" aria-controls="api-delete" aria-selected="false">DELETE</a>
			  </li>
			</ul>
		</h6>
		<div class="card-body">
			<div class="tab-content" id="api-tabContent">
			<div class="tab-pane fade show active" id="api-infos" role="tabpanel" aria-labelledby="api-infos"><jsp:include page="inc/api/infos.jsp"></jsp:include></div>
			  <div class="tab-pane fade" id="api-get" role="tabpanel" aria-labelledby="api-get"><jsp:include page="inc/api/get.jsp"></jsp:include></div>
			  <div class="tab-pane fade" id="api-post" role="tabpanel" aria-labelledby="api-post"><jsp:include page="inc/api/put.jsp"></jsp:include></div>
			  <div class="tab-pane fade" id="api-put" role="tabpanel" aria-labelledby="api-put">
			  		<h6>Ajoute un contact (POST Body)</h6>
					<h6><a href="api/add" target="blank" class="card-link">api/add</a></h6>
			  </div>
			  <div class="tab-pane fade" id="api-delete" role="tabpanel" aria-labelledby="api-delete">
			  		<h6>Supprime un contact identifié par son id</h6>
					<h6><a href="api/remove/id" target="blank" class="card-link">api/remove/id</a></h6>
			  </div>
			</div>
		  </div>
		  <div class="card-footer text-right">
		    Dernière modification le 4 février 2020
		  </div>
	</div>

    <script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath}/ressources/js/prism.js"></script>  
	 <jsp:include page="inc/footer.jsp"></jsp:include>
	 
</body>
</html>