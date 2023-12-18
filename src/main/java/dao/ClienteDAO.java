package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.database;
import model.Cliente;

public class ClienteDAO {

	private Connection connection;
	private String sql;

	public ClienteDAO() throws SQLException {
		connection = database.createConnection();
	}

	public void closeConnection() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createCliente(Cliente cliente) {
		sql = "INSERT INTO cliente (nome,cpf,endereco,telefone,loguin,senha) VALUES (?,?,?,?,?,?)";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getCpf());
			stmt.setString(3, cliente.getEndereco());
			stmt.setString(4, cliente.getTelefone());
			stmt.setString(5, cliente.getLoguin());
			stmt.setString(6, cliente.getSenha());

			stmt.executeUpdate();

			System.out.println("Cliente criado com sucesso!");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Cliente findCliente(int id) {
		Cliente cliente = null;
		sql = "SELECT * FROM cliente WHERE id=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setInt(1, id);
			ResultSet r = stmt.executeQuery();

			if (r.next()) {
				cliente = new Cliente();
				cliente.setId(r.getInt("id"));
				cliente.setNome(r.getString("nome"));
				cliente.setCpf(r.getString("cpf"));
				cliente.setEndereco(r.getString("endereco"));
				cliente.setTelefone(r.getString("telefone"));
				cliente.setLoguin(r.getString("loguin"));
				cliente.setSenha(r.getString("senha"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cliente;
	}
	
	
	
	public List<Cliente> findCliente() {

		String sql = "SELECT * FROM cliente";

		List<Cliente> cliente = new ArrayList<Cliente>();

		ResultSet r = null;

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			r = stmt.executeQuery();

			while (r.next()) {
				Cliente cliente1= new Cliente();
				cliente1 = new Cliente();
				cliente1.setId(r.getInt("id"));
				cliente1.setNome(r.getString("nome"));
				cliente1.setCpf(r.getString("cpf"));
				cliente1.setEndereco(r.getString("endereco"));
				cliente1.setTelefone(r.getString("telefone"));
				cliente1.setLoguin(r.getString("loguin"));
				cliente1.setSenha(r.getString("senha"));
				
				cliente.add(cliente1);
			}
		} catch (Exception e) {

			e.printStackTrace();

		}
		return cliente;

	}
	
	
	

	public void updateCliente(Cliente cliente) {
		sql = "UPDATE cliente SET nome = ?, cpf = ?, endereco = ?, telefone = ?,loguin = ?, senha = ?, WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getCpf());
			stmt.setString(3, cliente.getEndereco());
			stmt.setString(4, cliente.getTelefone());
			stmt.setString(5, cliente.getLoguin());
			stmt.setString(6, cliente.getSenha());
			stmt.setInt(7, cliente.getId());
		
			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void deleteCliente(int id) {
		sql = "DELETE FROM cliente WHERE id = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			stmt.executeUpdate();

			System.out.println("Cliente Deletado com sucesso!");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}