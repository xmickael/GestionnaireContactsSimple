package com.m2i.spring.rest;

public class ContactInvalidIdException extends RuntimeException {

	public ContactInvalidIdException() {super();}
	public ContactInvalidIdException(String message, Throwable cause, boolean enableSuppression,boolean writableStackTrace) {super(message, cause, enableSuppression, writableStackTrace);}
	public ContactInvalidIdException(String message, Throwable cause) {super(message, cause);}
	public ContactInvalidIdException(String message) {super(message);}
	public ContactInvalidIdException(Throwable cause) {super(cause);}
}
