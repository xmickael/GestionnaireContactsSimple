<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<h6 class="card-title">L'API du gestionnaire de contacts, permet l'automatisation du traitement des contacts par une application tierce.<br>
Les requetes envoyées à l'API peuvent etre de différentes méthode :</h6>
<ul>
<li>GET</li>
<li>PUT</li>
<li>POST</li>
<li>DELETE</li>
</ul>
<br>
<h6 class="card-subtitle text-muted">Schéma d'un contact</h6><br>
<table class="table table-hover m-auto b2t tableList">
	<tr class="text-center">
		<th>Clé</th>
		<th>Type</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>id</td>
		<td>int</td>
		<td>Identifiant unique et auto généré du contact</td>
	</tr>
	<tr>
		<td>titre</td>
		<td>string</td>
		<td>Titre de civilité du contact</td>
	</tr>
	<tr>
		<td>nom</td>
		<td>string</td>
		<td>Nom du contact</td>
	</tr>
	<tr>
		<td>prenom</td>
		<td>string</td>
		<td>Prénom du contact</td>
	</tr>
	<tr>
		<td>email</td>
		<td>string</td>
		<td>Email du contact</td>
	</tr>
	<tr>
		<td>telephone</td>
		<td>string</td>
		<td>Téléphone du contact</td>
	</tr>
	<tr>
		<td>adresse</td>
		<td>string</td>
		<td>Adresse du contact</td>
	</tr>
	<tr>
		<td>cpostal</td>
		<td>string</td>
		<td>Code postal de la ville du contact du contact</td>
	</tr>
	<tr>
		<td>ville</td>
		<td>string</td>
		<td>Ville du contact</td>
	</tr>
	<tr>
		<td>web</td>
		<td>string</td>
		<td>Adresse du site web du contact</td>
	</tr>
	<tr>
		<td>notes</td>
		<td>string</td>
		<td>Notes sur le contact</td>
	</tr>
	<tr>
		<td>spam</td>
		<td>boolean</td>
		<td>Permet de savoir si le contact est démarchable</td>
	</tr>
</table><br>

