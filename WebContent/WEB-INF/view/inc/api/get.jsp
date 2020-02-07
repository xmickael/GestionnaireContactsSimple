<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<ul class="nav nav-pills mb-3" id="api-get-tab" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" id="api-get-contacts-tab" data-toggle="pill" href="#api-get-contacts" role="tab" aria-controls="api-get-contacts" aria-selected="true">contacts</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-get-contact-tab" data-toggle="pill" href="#api-get-contact" role="tab" aria-controls="api-get-contact-tab" aria-selected="false">contact/</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-get-spam-tab" data-toggle="pill" href="#api-get-spam" role="tab" aria-controls="api-get-spam-tab" aria-selected="false">spam</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-get-auteur-tab" data-toggle="pill" href="#api-get-auteur" role="tab" aria-controls="api-get-auteur-tab" aria-selected="false">auteur</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-get-search-tab" data-toggle="pill" href="#api-get-search" role="tab" aria-controls="api-get-search-tab" aria-selected="false">search/</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-get-parameter-tab" data-toggle="pill" href="#api-get-parameter" role="tab" aria-controls="api-get-parameter-tab" aria-selected="false">parameter/</a>
			  </li>
			</ul>
			<div class="tab-content" id="api-tabContent">
			  <div class="tab-pane fade show active" id="api-get-contacts" role="tabpanel" aria-labelledby="api-get-contacts">
			  		<h6>Permet de récupérer toutes la liste des contacts</h6>
					<h6><a href="api/contacts" target="blank" class="card-link">api/contacts</a></h6>
					<pre class=" language-JSON overflow-auto h-25 vh-100"><code class=" language-JSON"><%@ include file="/ressources/json/contacts.json" %></code></pre>
			  </div>
			  <div class="tab-pane fade" id="api-get-contact" role="tabpanel" aria-labelledby="api-get-contact">
			  		<h6>Permet de récupérer un contact par son ID</h6>
					<h6><a href="api/contact/id" target="blank" class="card-link">api/contact/id</a></h6>
					Exemple : <h6><a href="api/contact/7" target="blank" class="card-link">api/contact/7</a></h6>
					<pre class=" language-JSON overflow-auto h-75"><code class=" language-JSON"><%@ include file="/ressources/json/contact_7.json" %></code></pre>
			  </div>
			  <div class="tab-pane fade" id="api-get-spam" role="tabpanel" aria-labelledby="api-get-spam">
			  		<h6>Permet de récupérer toutes la liste des contacts pouvant être démarchés</h6>
					<h6><a href="api/spam" target="blank" class="card-link">api/spam</a></h6>
					<pre class=" language-JSON overflow-auto h-25 vh-100"><code class=" language-JSON"><%@ include file="/ressources/json/spam.json" %></code></pre>
			  </div>
			  <div class="tab-pane fade" id="api-get-auteur" role="tabpanel" aria-labelledby="api-get-auteur">
			  		<h6>Permet de récupérer mes infos si vous êtes intéressé pour me recruter ;)</h6>
					<h6><a href="api/auteur" target="blank" class="card-link">api/auteur</a></h6>
					<pre class=" language-JSON overflow-auto h-75"><code class=" language-JSON"><%@ include file="/ressources/json/auteur.json" %></code></pre>
			  </div>
			  <div class="tab-pane fade" id="api-get-search" role="tabpanel" aria-labelledby="api-get-search">
			  		<h6>Permet rechercher les contact par valeur (value)</h6>
					<h6><a href="api/search/mySearchValue" target="blank" class="card-link">api/search/mySearchValue</a></h6>
					Exemple : <h6><a href="api/search/jul" target="blank" class="card-link">api/search/jul</a></h6>
			  		<pre class=" language-JSON overflow-auto h-25 vh-100"><code class=" language-JSON"><%@ include file="/ressources/json/search_jul.json" %></code></pre>
			  </div>
			  <div class="tab-pane fade" id="api-get-parameter" role="tabpanel" aria-labelledby="api-get-parameter">
			  		<h6>Permet de récupérer les contacts ayant une valeur dans le paramètre définit.</h6>
			  		<h6>Voici la liste des paremètres disponibles : </h6>
			  		<ul>
			  			<li>titre</li><li>nom</li><li>prenom</li><li>email</li><li>telephone</li>
			  			<li>adresse</li><li>cpostal</li><li>ville</li><li>web</li><li>notes</li>
			  		</ul>
					<h6><a href="api/parameter/mysearchvalue" target="blank" class="card-link">api/parameter/mySearchValue</a></h6>
					Exemple : <h6><a href="api/nom/dub" target="blank" class="card-link">api/nom/dub</a></h6>
			  		<pre class=" language-JSON overflow-auto h-25 vh-100"><code class=" language-JSON"><%@ include file="/ressources/json/nom_dub.json" %></code></pre>
			  		Exemple : <h6><a href="api/email/hotmail" target="blank" class="card-link">api/email/hotmail</a></h6>
			  		<pre class=" language-JSON overflow-auto h-25 vh-100"><code class=" language-JSON"><%@ include file="/ressources/json/email_hotmail.json" %></code></pre>
			  
			  </div>
			</div>

