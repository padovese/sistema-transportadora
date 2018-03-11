package br.com.mecanica.controller;

import java.util.ArrayList;
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
		
		//List<Peca> pecas = new PecasDAO().lista();
		
		Peca peca1 = new Peca();
		peca1.setId(1);
		peca1.setName("carbuador");

		Peca peca2 = new Peca();
		peca2.setId(2);
		peca2.setName("escapamento");
		
		Peca peca3 = new Peca();
		peca3.setId(3);
		peca3.setName("carbuador");
		
		List<Peca> pecas = new ArrayList<Peca>();
		pecas.add(peca1);
		pecas.add(peca2);
		pecas.add(peca3);
		
		ModelAndView mv = new ModelAndView("consultaPecas");
		
		mv.addObject("todasPecas", pecas);
		
		System.out.println("Acessando consultaPecas");
		return mv;
	}
	
}
