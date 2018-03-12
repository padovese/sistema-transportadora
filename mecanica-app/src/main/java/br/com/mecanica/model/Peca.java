package br.com.mecanica.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Peca {
	
	private int id;
	@NotNull 
	@Size(min=3, message="{peca.formulario.nome.tamanho}")	
	private String nome;
	private String descricao;
	private String cor;
	@NotNull
	private float preco;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
