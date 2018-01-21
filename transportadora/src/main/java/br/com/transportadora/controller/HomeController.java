package br.com.transportadora.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		System.out.println("Acessando a home.");
		return "home";
		
	}
	
	
	
}