package com.m2i.spring.rest;

public class FalseParamException extends RuntimeException{

	public FalseParamException() {super();}
	public FalseParamException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {super(message, cause, enableSuppression, writableStackTrace);}
	public FalseParamException(String message, Throwable cause) {super(message, cause);}
	public FalseParamException(String message) {super(message);}
	public FalseParamException(Throwable cause) {super(cause);}
}
