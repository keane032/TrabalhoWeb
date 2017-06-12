package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JDBC.ConnectionFactory;
import Modelo.Produto;

public class ProdutoDAO {
	
	//id
	//valor 
	//descricao
	
	private Connection connection;

	
	public ProdutoDAO() throws ClassNotFoundException {
		this.connection = new ConnectionFactory().getConnection();
		// TODO Auto-generated constructor stub
	}
	
	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	public void adiciona(Produto produto){
		String sql = "insert into produtos " +
	            "(nome,valor,qtd)" +
	            " values (?,?,?)";
		
		
		  try {
		        // prepared statement para inserção
		        PreparedStatement stmt = connection.prepareStatement(sql);

		        // seta os valores

		        stmt.setString(1,produto.getnome());
		        stmt.setLong(2,(long) produto.getPreco());////////!!!!!!!!!!!!!!!
		        stmt.setInt(3,produto.getQtd());
		        // executa
		        stmt.execute();
		        stmt.close();
		    } catch (SQLException e) {
		        throw new RuntimeException(e);
		    }
		}
		
	public List<Produto> getLista() {
	     try {
	         List<Produto> produtos = new ArrayList<Produto>();
	         PreparedStatement stmt = this.connection.
	                 prepareStatement("select * from produtos");
	         ResultSet rs = stmt.executeQuery();
	 
	         while (rs.next()) {
	             // criando o objeto Produto
	             Produto produto = new Produto();
	             produto.setId(rs.getInt("id"));
	             produto.setnome(rs.getString("nome"));
	             produto.setPreco(rs.getFloat("valor"));
	             produto.setQtd(rs.getInt("qtd"));
	             // adicionando o objeto à lista
	             produtos.add(produto);
	         }
	         rs.close();
	         stmt.close();
	         return produtos;
	     } catch (SQLException e) {
	         throw new RuntimeException(e);
	     }
	 }
	
	public void excluir(Produto produto) {
		String sql = "delete from produtos " +
	            "where" +
	            " id = ?";
		  try {
		        // prepared statement para inserção
		        PreparedStatement stmt = connection.prepareStatement(sql);
		        // seta os valores
		        stmt.setInt(1,(int) produto.getId());
		        // executa
		        stmt.execute();
		        stmt.close();
		    } catch (SQLException e) {
		        throw new RuntimeException(e);
		    }
		}
	
	public void atualizar(Produto produto){
		String sql = "UPDATE produtos " +
				"set nome = ?, valor = ?"+
	            "where" +
	            " id = ?";		
		try {
		        // prepared statement para inserção
		        PreparedStatement stmt = connection.prepareStatement(sql);
		        // seta os valores
		        stmt.setString(1,produto.getnome());
		        stmt.setLong(2,(long) produto.getPreco());
		        stmt.setInt(3,(int) produto.getId());
		        // executa
		        stmt.execute();
		        stmt.close();
		    } catch (SQLException e) {
		        throw new RuntimeException(e);
		    }
	}
		
}

	
	
	


