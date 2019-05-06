package com.jk1603.apple.user.pojo;

import com.jk1603.apple.admini.pojo.Goods;

public class Shoppingcart {
	private Integer id;
	private Integer shAmount;
	private Goods goods;
	private User user;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getShAmount() {
		return shAmount;
	}
	public void setShAmount(Integer shAmount) {
		this.shAmount = shAmount;
	}
	
}
