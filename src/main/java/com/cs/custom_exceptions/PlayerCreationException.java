package com.cs.custom_exceptions;

@SuppressWarnings("serial")
public class PlayerCreationException extends RuntimeException {


	public PlayerCreationException() {
		super();
	}

	public PlayerCreationException(String message) {
		super(message);
	}

}
