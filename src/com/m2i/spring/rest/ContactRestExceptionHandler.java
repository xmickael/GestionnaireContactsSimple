package com.m2i.spring.rest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ContactRestExceptionHandler {

	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(ContactNotFoundException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.NOT_FOUND.value());
		erreur.setMessage("Contact non trouvé. Merci de renseigner un id valide. Utilisez l'adresse /api/contacts pour obtenir la liste de tous les contacts existants");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.NOT_FOUND);
	}
	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(SearchResultEmptyException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.NO_CONTENT.value());
		erreur.setMessage("Résultat vide,aucun contact trouvé. Utilisez l'adresse /api/contacts pour obtenir la liste de tous les contacts existants");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.NO_CONTENT);
	}
	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(FalseParamException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.BAD_GATEWAY.value());
		erreur.setMessage("Paramètre invalide. Reportez vous à la liste des paramètres disponible dans la documentation de l'api founie sur le site");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.BAD_GATEWAY);
	}
	
	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(ContactInvalidIdException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.BAD_REQUEST.value());
		erreur.setMessage("Id invalide. Merci de rentrer un nombre entier en paramètre. Pour plus d'informations, reportez vous à la liste des paramètres disponible dans la documentation de l'api founie sur le site ");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.BAD_REQUEST);
	}
}
