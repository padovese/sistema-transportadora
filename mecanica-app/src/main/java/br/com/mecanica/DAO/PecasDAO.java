package br.com.mecanica.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.mecanica.ConnectionFactory;
import br.com.mecanica.model.Peca;

public class PecasDAO {

private Connection connection;
	
	public PecasDAO() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Peca> lista(){
		
		try {
		List<Peca> pecas = new ArrayList<Peca>();
		PreparedStatement stmt;
		
			stmt = this.connection.prepareStatement("select * from pecas");
		
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()) {
			Peca peca = new Peca();
			peca.setId(rs.getInt("id"));
			peca.setNome(rs.getString("nome"));
			peca.setDescricao(rs.getString("descricao"));
			peca.setCor(rs.getString("cor"));
			peca.setPreco(rs.getFloat("preco"));
			
			pecas.add(peca);
		}
		
		rs.close();
		stmt.close();
		
		return pecas;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void insere(Peca peca) {
		String sql = "insert into pecas(nome, descricao, cor, preco)\r\n" + 
					"values(?,?,?,?)";
		PreparedStatement stmt;
		
		try {
			stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, peca.getNome());
			stmt.setString(2, peca.getDescricao());
			stmt.setString(3, peca.getCor());
			stmt.setFloat(4, peca.getPreco());
			stmt.execute();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void apaga(Peca peca) {

		if (peca.getId() == 0) {
			throw new IllegalStateException("Id da conta nao deve ser nula.");
		}

		String sql = "delete from pecas where id = ?";
		PreparedStatement stmt;
		try {
			stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, peca.getId());
			stmt.execute();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}
