package br.com.mecanica.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import br.com.mecanica.ConnectionFactory;
import br.com.mecanica.model.Funcionario;
import br.com.mecanica.model.Peca;

public class FuncionariosDAO {

private Connection connection;
	
	public FuncionariosDAO() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Funcionario> lista(){
		
		try {
		List<Funcionario> funcionarios = new ArrayList<Funcionario>();
		PreparedStatement stmt;
		
			stmt = this.connection.prepareStatement("select * from funcionarios");
		
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()) {
			Funcionario funcionario = new Funcionario();
			funcionario.setId(rs.getInt("id"));
			funcionario.setNome(rs.getString("nome"));
			funcionario.setCpf(rs.getLong("cpf"));
			funcionario.setDataDeNascimento(LocalDate.parse(rs.getString("data_nascimento")));
			funcionario.setDataDeAdmissao(LocalDate.parse(rs.getString("data_admissao")));
			
			funcionarios.add(funcionario);
		}
		
		rs.close();
		stmt.close();
		
		return funcionarios;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void insere(Funcionario funcionario) {
		String sql = "insert into funcionarios(nome, cpf, data_nascimento, data_admissao)\r\n" + 
					"values(?,?,?,?)";
		PreparedStatement stmt;
		
		try {
			stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, funcionario.getNome());
			stmt.setLong(2, funcionario.getCpf());
			stmt.setString(3, funcionario.getDataDeNascimento().toString());
			stmt.setString(4, funcionario.getDataDeAdmissao().toString());
			stmt.execute();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void apaga(Funcionario funcionario) {

		if (funcionario.getId() == 0) {
			throw new IllegalStateException("Id da conta nao deve ser nula.");
		}

		String sql = "delete from funcionario where id = ?";
		PreparedStatement stmt;
		try {
			stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, funcionario.getId());
			stmt.execute();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}
