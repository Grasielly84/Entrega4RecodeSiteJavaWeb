package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;


@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		
		try {
			ClienteDAO cDAO = new ClienteDAO();
			Cliente cliente = cDAO.findCliente(id);
			
			req.setAttribute("cliente", cliente);
			
			RequestDispatcher rd = req.getRequestDispatcher("Atualizar.jsp");
			rd.forward(req, res);
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			Cliente cliente = new Cliente();
			cliente.setId(Integer.parseInt(req.getParameter("id")));
			cliente.setNome(req.getParameter("nome"));
			cliente.setCpf(req.getParameter("cpf"));
			cliente.setEndereco(req.getParameter("endereco"));
			cliente.setTelefone(req.getParameter("telefone"));
			cliente.setLoguin(req.getParameter("loguin"));
			cliente.setSenha(req.getParameter("senha"));
			
			
			ClienteDAO cDAO = new ClienteDAO();
			cDAO.updateCliente(cliente);
			
			res.sendRedirect("ReadController");
		} catch (Exception e) {
			
		}
		
	}

}
