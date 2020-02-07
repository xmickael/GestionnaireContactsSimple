<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
			<ul class="nav nav-pills mb-3" id="api-get-tab" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" id="api-put-spam-tab" data-toggle="pill" href="#api-put-spam" role="tab" aria-controls="api-put-spam-tab" aria-selected="true">spam/</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-put-unspam-tab" data-toggle="pill" href="#api-put-unspam" role="tab" aria-controls="api-put-unspam-tab" aria-selected="false">unspam/</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="api-put-modify-tab" data-toggle="pill" href="#api-put-modify" role="tab" aria-controls="api-put-modify-tab" aria-selected="false">modify/</a>
			  </li>
			</ul>
			<div class="tab-content" id="api-tabContent">
			  <div class="tab-pane fade show active" id="api-put-spam" role="tabpanel" aria-labelledby="api-put-spam">
			  		<h6>Rend démarchable un contact identifié par son ID</h6>
					<h6><a href="api/spam/id" target="blank" class="card-link">api/spam/id</a></h6>
					Exemple : <h6><a href="api/spam/7" target="blank" class="card-link">api/spam/7</a></h6>
			  </div>
			  <div class="tab-pane fade" id="api-put-unspam" role="tabpanel" aria-labelledby="api-put-unspam">
			  		<h6>Enleve le démarchage d'un contact identifié par son ID</h6>
					<h6><a href="api/unspam/id" target="blank" class="card-link">api/unspam/id</a></h6>
					Exemple : <h6><a href="api/unspam/7" target="blank" class="card-link">api/unspam/7</a></h6>
			  </div>
			  <div class="tab-pane fade" id="api-put-modify" role="tabpanel" aria-labelledby="api-put-modify">
			  		<h6>Permet de modifier le paramètre voulu d'un contact par son ID à la valeur souhaitéé</h6>
			  		<h6>Voici la liste des paremètres disponibles : </h6>
			  		<ul>
			  			<li>titre</li><li>nom</li><li>prenom</li><li>email</li><li>telephone</li>
			  			<li>adresse</li><li>cpostal</li><li>ville</li><li>web</li><li>notes</li>
			  		</ul>
					<h6><a href="api/parameter/id/value" target="blank" class="card-link">api/parameter/id/value</a></h6>
					Exemples : 
					<h6><a href="api/nom/2/Roger" target="blank" class="card-link">api/nom/2/Roger</a></h6>
			  		<h6><a href="api/ville/2/Clermont-Ferrand" target="blank" class="card-link">api/ville/2/Clermont-Ferrand</a></h6>
			  </div>
			</div>

