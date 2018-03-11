package br.com.mecanica.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.mecanica.DAO.FuncionariosDAO;
import br.com.mecanica.model.Funcionario;

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
	public ModelAndView efetivaCadastro(Funcionario funcionario) {
		
		new FuncionariosDAO().insere(funcionario);
		
		ModelAndView mv = new ModelAndView("funcionarioAdicionado");
		return mv;
	}
}
