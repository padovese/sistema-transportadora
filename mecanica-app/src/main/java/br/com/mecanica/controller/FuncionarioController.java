package br.com.mecanica.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.mecanica.model.Funcionario;

@Controller
public class FuncionarioController {

	@RequestMapping("/consulta-funcionarios")
	public ModelAndView lista() {

		ModelAndView mv = new ModelAndView("consultaFuncionarios");

		List<Funcionario> funcionarios = new ArrayList<Funcionario>();
		
		funcionarios.add(new Funcionario(1, "Joao", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		funcionarios.add(new Funcionario(2, "Maria", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		funcionarios.add(new Funcionario(3, "Adão", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		funcionarios.add(new Funcionario(4, "Eva", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		funcionarios.add(new Funcionario(5, "Aaa", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		funcionarios.add(new Funcionario(6, "Bbb", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		funcionarios.add(new Funcionario(7, "Ccc", 123456789, LocalDate.of(1980, 1, 12), LocalDate.of(2012, 10, 11)));
		
		mv.addObject("todosFuncionarios", funcionarios);
		
		return mv;
	}
}
