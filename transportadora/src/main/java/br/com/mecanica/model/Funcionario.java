package br.com.mecanica.model;

import java.sql.Date;
import java.time.LocalDate;

public class Funcionario {

	int id;
	String name;
	int cpf;
	LocalDate dataDeNascimento;
	LocalDate dataDeAdmissao;
	
	public Funcionario(int id, String name, int cpf, LocalDate dataDenascimento, LocalDate dataDeAdmissao) {
		super();
		this.id = id;
		this.name = name;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
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
