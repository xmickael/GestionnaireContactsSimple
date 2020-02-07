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
		erreur.setMessage("Contact non trouv�. Merci de renseigner un id valide. Utilisez l'adresse /api/contacts pour obtenir la liste de tous les contacts existants");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.NOT_FOUND);
	}
	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(SearchResultEmptyException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.NO_CONTENT.value());
		erreur.setMessage("R�sultat vide,aucun contact trouv�. Utilisez l'adresse /api/contacts pour obtenir la liste de tous les contacts existants");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.NO_CONTENT);
	}
	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(FalseParamException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.BAD_GATEWAY.value());
		erreur.setMessage("Param�tre invalide. Reportez vous � la liste des param�tres disponible dans la documentation de l'api founie sur le site");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.BAD_GATEWAY);
	}
	
	@ExceptionHandler
	public ResponseEntity<JsonRestError> handleException(ContactInvalidIdException e)
	{
		JsonRestError erreur = new JsonRestError();
		erreur.setStatus(HttpStatus.BAD_REQUEST.value());
		erreur.setMessage("Id invalide. Merci de rentrer un nombre entier en param�tre. Pour plus d'informations, reportez vous � la liste des param�tres disponible dans la documentation de l'api founie sur le site ");
		erreur.setTemps(System.currentTimeMillis());
		return new ResponseEntity<>(erreur,HttpStatus.BAD_REQUEST);
	}
}
