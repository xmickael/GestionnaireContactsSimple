<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/head.jsp"></jsp:include>
<title>${action} un Contact</title>
</head>
<body>
	<jsp:include page="inc/navbar.jsp"></jsp:include>
	<header>
		<c:if test="${action=='Ajouter'}">
			<h1><img src="${pageContext.request.contextPath}/ressources/img/icon/contact_add.png" width="64" height="64" />Ajout d'un nouveau contact</h1>
		</c:if>
		<c:if test="${action=='Modifier'}">
			<h1><img src="${pageContext.request.contextPath}/ressources/img/icon/contact_modify.png" width="64" height="64" />Modification d'un contact</h1>
		</c:if>
	</header>
	<form:form method="POST" action="actionContact" modelAttribute="contact" enctype = "multipart/form-data">
	<div class="card bulle m-auto">
		<div class="card-header text-center font-weight-bold">
		<c:if test="${action=='Ajouter'}">Remplissez le formulaire</c:if>
		<c:if test="${action=='Modifier'}">Effectuez les modifications</c:if>
		
		</div>
            <div class="card-body">
                <div class="card-text text-center">
				
					<form:errors path="*" class="error" element="div" />
					<form:input type="hidden" path="id"/>
					<form:input id="photo" type="hidden" path="photo"/>
					<div class="position-relative">
					<c:choose>
						<c:when test = "${!empty contact.photo}">
							<img src="${pageContext.request.contextPath}/ressources/img/contact_avatar/${contact.photo}.png" width=128 height=128 id="imgphoto"/>
							
						</c:when>
						<c:otherwise>
							<img src="${pageContext.request.contextPath}/ressources/img/contact_avatar/0.png" width=128 height=128  id="imgphoto"/>
						</c:otherwise>
					</c:choose>
					<img src="${pageContext.request.contextPath}/ressources/img/icon/delete.png" width=24 height=24  id="removephoto" class="position-absolute"/>
					</div>
					<br>
					<label>Appuyez pour changer la photo</label>
					
					<input type="file" name="photofile" id="photofile" style="display:none" />
					<br><br>
					<form:radiobutton path="titre" value="Mme" class="p-5" /> Madame
					<form:radiobutton path="titre" value="Mlle" /> Mademoiselle
					<form:radiobutton path="titre" value="Mr." /> Monsieur
			        <br><br>
					<form:label path="nom">Nom : </form:label>
			        <form:input type="text" path="nom" size="20"/>
			        <form:label path="prenom">Prénom : </form:label>
			        <form:input type="text" path="prenom" size="20"/>
			        <br><br>
			        <form:label path="telephone">Telephone : </form:label>
			        <form:input type="number" path="telephone" size="10"/>
			        <form:label path="email">Email : </form:label>
			        <form:input type="email" path="email" size="25"/>
			        <br><br>
			        <form:label path="adresse">Adresse : </form:label>
			        <form:input type="text" path="adresse" size="50"/>
			        <br><br>
			        <form:label path="cpostal">Code postal : </form:label>
			        <form:input type="number" path="cpostal" size="5"/>
			        <form:label path="ville">Ville : </form:label>
			        <form:input type="text" path="ville" size="25"/>
			        <br><br>
			        <form:label path="web">web : </form:label>
			        <form:input type="text" path="web" size="40"/>
			        <br><br>
			        <form:label path="notes" class="label_multi">Notes :</form:label>
			        <form:textarea path="notes" type="text" rows="5" cols="50"/>
			        <br><br>
		        <form:label path="spam">Recevoir notre newsletter</form:label>
			        <form:checkbox path="spam"/>
			</div>
		</div>
		<div class="card-footer text-center">
		    <button  name="action" value="${action}" class="btn btn-success">${action}</button>
		    <button  name="action" value="Annuler"class="btn btn-danger">Annuler</button>
		</div>
	</div>
	</form:form>
	<jsp:include page="inc/footer.jsp"></jsp:include>

	</body>
</html>