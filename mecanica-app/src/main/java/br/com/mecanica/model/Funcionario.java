package br.com.mecanica.model;

import java.sql.Date;
import java.time.LocalDate;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Funcionario {

	int id;
	private String nome;
	Long cpf;
	LocalDate dataDeNascimento;
	LocalDate dataDeAdmissao;

	public Funcionario() {
	}

	public Funcionario(int id, String name, Long cpf, LocalDate dataDenascimento, LocalDate dataDeAdmissao) {
		super();
		this.id = id;
		this.nome = name;
		this.cpf = cpf;
		this.dataDeNascimento = dataDenascimento;
		this.dataDeAdmissao = dataDeAdmissao;
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

	public Long getCpf() {
		return cpf;
	}

	public void setCpf(Long cpf) {
		this.cpf = cpf;
	}

	public LocalDate getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(LocalDate dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}

	public LocalDate getDataDeAdmissao() {
		return dataDeAdmissao;
	}

	public void setDataDeAdmissao(LocalDate dataDeAdmissao) {
		this.dataDeAdmissao = dataDeAdmissao;
	}
}
