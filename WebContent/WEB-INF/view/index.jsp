<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<jsp:include page="inc/head.jsp"></jsp:include>
<title>Gestionnaire de Contact</title>
</head>
<body>
	<header>
		<h1><img src="${pageContext.request.contextPath}/ressources/img/icon/repertoire.png" width="128" height="128" class="p-3"/>Gestionnaire de contacts</h1>
   	</header>
	
	 <jsp:include page="inc/navbar.jsp"></jsp:include>
	
     <jsp:include page="liste.jsp"></jsp:include>   
    
	 <jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>