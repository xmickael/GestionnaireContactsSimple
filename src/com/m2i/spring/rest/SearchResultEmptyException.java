package com.m2i.spring.rest;

public class SearchResultEmptyException extends RuntimeException{

	public SearchResultEmptyException() {super();}
	public SearchResultEmptyException(String message, Throwable cause, boolean enableSuppression,boolean writableStackTrace) {super(message, cause, enableSuppression, writableStackTrace);}
	public SearchResultEmptyException(String message, Throwable cause) {super(message, cause);}
	public SearchResultEmptyException(String message) {super(message);}
	public SearchResultEmptyException(Throwable cause) {super(cause);}
	
}
