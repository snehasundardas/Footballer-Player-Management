package com.cs.custom_exceptions;

@SuppressWarnings("serial")
public class DuplicateFootballerException extends RuntimeException {

	public DuplicateFootballerException() {
		
	}

	public DuplicateFootballerException(String message) {
		super(message);
	}

}
