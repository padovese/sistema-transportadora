package br.com.mecanica;

import java.sql.Connection;
import java.sql.SQLException;

public class TestaConexao {

	public static void main(String[] args) {
		try {
			Connection connection = new ConnectionFactory().getConnection();
			System.out.println("Abrindo uma conex�o com sucesso.");
			connection.close();
		} catch (SQLException e) {
			System.out.println("Erro na conex�o.");
			e.printStackTrace();
		} finally {
			System.out.println("Fim do processo.");
		}
	}
}
