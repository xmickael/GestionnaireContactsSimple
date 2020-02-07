<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../inc/head.jsp"></jsp:include>
		<title>Rechercher un Contact</title>
	</head>
	<body>
		<jsp:include page="../inc/navbar.jsp"></jsp:include>
		<header>
			<h1><img src="${pageContext.request.contextPath}/ressources/img/icon/contact_search.png" width="64" height="64" />Rechercher un contact</h1>
		</header>
		<form id="search_form" method="POST" action="searchContact" class="form">
			<div class="card bulle m-auto">
				<c:if test="${!empty contacts}">
					<div class="card-header text-center font-weight-bold">${search} : ${max} résultat(s) obtenu(s)</div>
				</c:if>
				<c:if test="${empty contacts}">
					<c:if test="${max>-1}">
						<div class="card-header text-center font-weight-bold">pas de resultats</div>
					</c:if>
					<c:if test="${max==-1 or empty search}">
						<div class="card-header text-center font-weight-bold">Veuillez saisir votre recherche</div>
					</c:if>
				</c:if>
	            <div class="card-body text-center">
				
		        	<input type="text" id="search" name="search" value="${search}" onfocus="var temp_value=this.value; this.value=''; this.value=temp_value;" onkeyup = "document.getElementById('search_form').submit()" autofocus/>
	       		 
				</div>
	        </div>
        </form>
        <br>
        <br>
		<c:if test="${!empty contacts}">
			<jsp:include page="../liste.jsp"></jsp:include>
		</c:if>
		
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</body>
</html>