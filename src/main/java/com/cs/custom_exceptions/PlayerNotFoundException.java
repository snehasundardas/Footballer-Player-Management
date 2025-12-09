package com.cs.custom_exceptions;

@SuppressWarnings("serial")
public class PlayerNotFoundException extends RuntimeException {
	

	//No-Args Constructor
	public PlayerNotFoundException() {
		super();
	}

	//String Args Constructor For Error Message
	public PlayerNotFoundException(String msg) {
		super(msg);
	}
}
