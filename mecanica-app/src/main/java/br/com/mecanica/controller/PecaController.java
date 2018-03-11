package br.com.mecanica.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.mecanica.DAO.PecasDAO;
import br.com.mecanica.model.Peca;

@Controller
public class PecaController {

	@RequestMapping("/pecas/consulta")
	public ModelAndView lista() {
		
		List<Peca> pecas = new PecasDAO().lista();
		
		ModelAndView mv = new ModelAndView("consultaPecas");
		
		mv.addObject("todasPecas", pecas);
		
		System.out.println("Acessando consultaPecas");
		return mv;
	}
	
	@RequestMapping("/pecas/cadastra")
	public ModelAndView insere() {
		ModelAndView mv = new ModelAndView("cadastraPeca");
		return mv;
	}
	
	//Recebe action do formulario. Cada text field vira um atributo do objeto pelo atributo name.
	@RequestMapping("/pecas/cadastraPeca")
	public ModelAndView efetivaCadastro(Peca peca) {
		
		new PecasDAO().insere(peca);
		
		ModelAndView mv = new ModelAndView("pecaAdicionada");
		return mv;
	}
	
	@RequestMapping("/pecas/apaga")
	public ModelAndView apaga(@RequestParam("id") int id) {
		
		Peca peca = new Peca();
		peca.setId(id);
		
		new PecasDAO().apaga(peca);
		
		ModelAndView mv = new ModelAndView("redirect:/pecas/consulta");
		return mv;
	}
	
}
