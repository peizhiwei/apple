package com.jk1603.apple.admini.pojo;

public class Store {
	private Integer id;
	private int amount;
	private Goods goods;
	private Admini admini;
	private SuperAdmini superadmini;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Admini getAdmini() {
		return admini;
	}
	public void setAdmini(Admini admini) {
		this.admini = admini;
	}
	public SuperAdmini getSuperadmini() {
		return superadmini;
	}
	public void setSuperadmini(SuperAdmini superadmini) {
		this.superadmini = superadmini;
	}
	
}
