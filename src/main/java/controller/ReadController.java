package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;

@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			ClienteDAO cDAO = new ClienteDAO();
			List<Cliente> cliente = cDAO.findCliente();
			req.setAttribute("cliente", cliente);
			
			RequestDispatcher rd = req.getRequestDispatcher("Cliente.jsp");
			rd.forward(req, res);

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

	}

}