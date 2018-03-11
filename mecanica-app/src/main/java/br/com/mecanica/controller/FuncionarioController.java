package br.com.mecanica.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.mecanica.DAO.FuncionariosDAO;
import br.com.mecanica.DAO.PecasDAO;
import br.com.mecanica.model.Funcionario;
import br.com.mecanica.model.Peca;

@Controller
public class FuncionarioController {

	@RequestMapping("/funcionarios/consulta")
	public ModelAndView lista() {

		ModelAndView mv = new ModelAndView("consultaFuncionarios");
		
		 List<Funcionario> funcionarios = new FuncionariosDAO().lista();
		
		mv.addObject("todosFuncionarios", funcionarios);
		
		return mv;
	}
	
	@RequestMapping("/funcionarios/cadastra")
	public ModelAndView insere() {
		ModelAndView mv = new ModelAndView("cadastraFuncionario");
		return mv;
	}
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@RequestMapping("/funcionarios/cadastraFuncionario")
	public ModelAndView efetivaCadastro(@Valid Funcionario funcionario) {
		
		new FuncionariosDAO().insere(funcionario);
		
		ModelAndView mv = new ModelAndView("funcionarioAdicionado");
		return mv;
	}
	
	@RequestMapping("/funcionarios/apaga")
	public ModelAndView apaga(@RequestParam("id") int id) {
		
		Funcionario funcionario = new Funcionario();
		funcionario.setId(id);
		
		new FuncionariosDAO().apaga(funcionario);
		
		ModelAndView mv = new ModelAndView("redirect:/funcionarios/consulta");
		return mv;
	}
}
