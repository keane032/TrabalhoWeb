package Logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Produto;
import ModeloDAO.ProdutoDAO;

public class RemoveProdutoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		long id = Long.parseLong(req.getParameter("id"));

	    Produto produto = new Produto();
	    produto.setId(id);

	    ProdutoDAO dao = new ProdutoDAO();
	    dao.excluir(produto);

	    System.out.println("Excluindo contato... ");

	    return "Produtos";
		
	}

}
