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
		
			stmt = this.connection.prepareStatement("select * from teste");
		
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()) {
			Peca peca = new Peca();
			peca.setId(rs.getInt("id"));
			peca.setName(rs.getString("name"));
			
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
	
}
