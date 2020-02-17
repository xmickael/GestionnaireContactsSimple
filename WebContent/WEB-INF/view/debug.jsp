<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/head.jsp"></jsp:include>
<title>Page Debug</title>


</head>
<body>
	<jsp:include page="inc/navbar.jsp"></jsp:include>
	<header>
		<h1>
			<img
				src="${pageContext.request.contextPath}/ressources/img/icon/debug.png"
				width="64" height="64" />Page Debug / Test
		</h1>
	</header>

	<form id="search_form" method="POST" action="autocomplete" class="form">
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
		<c:if test="${!empty results}">
			<ul>
				<c:forEach var="res" items="${results}">
					<li>${res}</li>
				</c:forEach>
			</ul>
		</c:if>
	<jsp:include page="inc/footer.jsp"></jsp:include>
	<script>
	$("li:contains('${search}')").each(function()
			{
			    var $el = $(this);
			    $el.html( $el.html().replace(/${search}/g, '<b>${search}</b>') );
			});
	
	
	</script>
</body>
</html>