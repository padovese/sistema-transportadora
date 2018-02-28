package br.com.mecanica.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.mecanica.DAO.PecasDAO;
import br.com.mecanica.model.Peca;

@Controller
public class PecaController {

	@RequestMapping("/consulta-pecas")
	public ModelAndView lista() {
		
		List<Peca> pecas = new PecasDAO().lista();
		
		ModelAndView mv = new ModelAndView("consultaPecas");
		
		mv.addObject("todasPecas", pecas);
		
		System.out.println("Acessando consultaPecas");
		return mv;
	}
}
