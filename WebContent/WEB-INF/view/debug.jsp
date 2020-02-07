<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/head.jsp"></jsp:include>
<title>Page Debug</title>

</head>
<body>
	<header>
		<h1>
			<img
				src="${pageContext.request.contextPath}/ressources/img/icon/debug.png"
				width="64" height="64" />Page Debug / Test
		</h1>
	</header>


<div id="demo"></div>

<script type="text/javascript">

var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    var myArr = JSON.parse(this.responseText);
    document.getElementById("demo").innerHTML = myArr[0].nom;
  }
};
xmlhttp.open("GET", "http://localhost:8080/GestionnaireContacts/api/contacts", true);
xmlhttp.send();
</script>














	<jsp:include page="inc/footer.jsp"></jsp:include>

	


</body>
</html>