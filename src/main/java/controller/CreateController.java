package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;


@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Cliente cliente = new Cliente();
		
		cliente.setNome(req.getParameter("nome"));
		cliente.setCpf(req.getParameter("cpf"));
		cliente.setEndereco(req.getParameter("endereco"));
		cliente.setTelefone(req.getParameter("telefone"));
		cliente.setLoguin(req.getParameter("loguin"));
		cliente.setSenha(req.getParameter("senha"));
		
		try {
			ClienteDAO clienteDAO = new ClienteDAO();
			clienteDAO.createCliente(cliente);
			
			
			res.sendRedirect("ReadController");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
