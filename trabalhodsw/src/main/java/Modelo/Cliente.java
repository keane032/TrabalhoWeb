package Modelo;

public class Cliente {

	private String nome;
	private String cpf;
	private String end;
	private String Logim;
	private String Senha;
	
	public String getLogim() {
		return Logim;
	}
	public void setLogim(String logim) {
		Logim = logim;
	}
	public String getSenha() {
		return Senha;
	}
	public void setSenha(String senha) {
		Senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}

	
	
}
