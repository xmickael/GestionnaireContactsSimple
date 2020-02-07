<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="card bulle m-auto">
	<div class="card-header text-center font-weight-bold">Liste des contacts</div>
	<div class="card-body text-center">
		<a href="addPage">
			<button type="button" class="btn btn-primary btn-sm">
				<img src="${pageContext.request.contextPath}/ressources/img/icon/contact_add.png" width=64 height=64 />
			</button>
		</a>
		<br>
		<table id="datatableContact" class="display compact datatable">
			<thead>
				<tr>
					<th>Id</th>
					<th>Titre</th>
					<th>Nom</th>
					<th>Prenom</th>
					<th class="w53p"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="contact" items="${contacts}">
					<tr data-toggle="modal" data-target="#show_${contact.id}">
						<td>${contact.id}</td>
						<td>${contact.titre}</td>
						<td>${contact.nom}</td>
						<td>${contact.prenom}</td>
						<td>
							<button type="hidden" class="invisible" data-toggle="modal" data-target="#show_${contact.id}" ></button>
							<!-- permet d'importer le fichier avec la variable contact sur un deuxieme niveau -->
							<%@ include file="modalContact.jsp" %>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
	</div>
</div>
