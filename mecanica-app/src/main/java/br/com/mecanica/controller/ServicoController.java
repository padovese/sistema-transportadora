package br.com.mecanica.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.mecanica.model.EnumTipoServico;
import br.com.mecanica.model.Servico;

@Controller
public class ServicoController {

	@RequestMapping("/consulta-servicos")
	public ModelAndView lista() {
		ModelAndView mv = new ModelAndView("consultaServicos");
		
		List<Servico> servicos =  new ArrayList<Servico>();
		
		servicos.add(new Servico(1, "Limpeza de motor", EnumTipoServico.MANUAL));
		servicos.add(new Servico(2, "Troca de rodas", EnumTipoServico.MANUAL));
		servicos.add(new Servico(3, "Alinhamento", EnumTipoServico.MAQUINA));
		
		mv.addObject("todosServicos", servicos);
		
		System.out.println("Acessando consultaServicos" + servicos.get(0).getTipoServico());
		return mv;
	}
	
}
