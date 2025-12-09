package com.cs.advice;

import java.util.Map;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.cs.custom_exceptions.PlayerCreationException;
import com.cs.custom_exceptions.PlayerNotFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(IllegalArgumentException.class)
	public String handleIllegalArgumentException(IllegalArgumentException iae, Map<String,Object> map) {
		map.put("error", iae.getMessage());
		return "error_page_invalid_input";
	}
	
	@ExceptionHandler(PlayerNotFoundException.class)
	public String handlePlayerNotFoundException(PlayerNotFoundException pnf, Map<String,Object> map) {
		map.put("msg", pnf.getMessage());
		return "error_page_player_not_found";
	}
	
	@ExceptionHandler(PlayerCreationException.class)
	public String handlePlayerCreationException(PlayerCreationException pce,Map<String,Object> map) {
		map.put("msg", pce.getMessage());
		return "error_page_register_failed";
	}
	
	
}
