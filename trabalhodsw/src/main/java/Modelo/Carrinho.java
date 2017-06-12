package Modelo;

import java.util.ArrayList;
import java.util.List;

public class Carrinho {

	private ArrayList<Produto> itens = new ArrayList<>();
	
	

	public Carrinho() {
		// TODO Auto-generated constructor stub
	}

	public ArrayList<Produto> getItens() {
		return itens;
	}

	public void setItens(ArrayList<Produto> itens) {
		this.itens = itens;
	}

	public void adiciona(Produto item) {
		itens.add(item);
		
	}

	
	
}
