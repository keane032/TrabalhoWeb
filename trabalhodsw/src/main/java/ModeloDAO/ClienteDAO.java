package ModeloDAO;

import java.sql.Connection;
import JDBC.ConnectionFactory;

public class ClienteDAO {
//
//	private String nome;
//	private String cpf;
//	private String end;

	private Connection connection;
	
	public ClienteDAO() throws ClassNotFoundException {
		// TODO Auto-generated constructor stub
		this.connection = new ConnectionFactory().getConnection();
	}

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	public void add(){
		
	}
	
}
