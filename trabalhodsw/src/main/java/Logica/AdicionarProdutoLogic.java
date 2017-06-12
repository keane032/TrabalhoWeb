package Logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Produto;
import ModeloDAO.ProdutoDAO;

public class AdicionarProdutoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String nome = req.getParameter("nome");
		float preco = Float.parseFloat(req.getParameter("preco"));
		
	    Produto produto = new Produto();
	    produto.setnome(nome);
	    produto.setPreco(preco);

	    ProdutoDAO dao = new ProdutoDAO();
	    dao.adiciona(produto);
	    
	    System.out.println("Adcionar contato... ");
	    
		return "Produtos";
	}

}
