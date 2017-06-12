package Logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Produto;
import ModeloDAO.ProdutoDAO;

public class AtualizarProdutoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		String nome = req.getParameter("nome");
		float preco = Float.parseFloat(req.getParameter("preco"));
		
	    Produto produto = new Produto();
	    produto.setId(id);
	    produto.setnome(nome);
	    produto.setPreco(preco);

	    ProdutoDAO dao = new ProdutoDAO();
	    dao.atualizar(produto);
		
	    System.out.println("Atualizar contato... ");
	    
		return "Produtos";
	}

}
