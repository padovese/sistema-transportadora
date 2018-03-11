package br.com.mecanica.model;

public class Servico {

	private int id;
	private String name;
	private EnumTipoServico tipoServico;
	
	public Servico() {
	}
	
	public Servico(int id, String name, EnumTipoServico tipoServico) {
		this.id = id;
		this.name = name;
		this.tipoServico = tipoServico;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setTipoServico(EnumTipoServico tipoServico) {
		this.tipoServico = tipoServico;
	}
	
	public EnumTipoServico getTipoServico() {
		return tipoServico;
	}
}
