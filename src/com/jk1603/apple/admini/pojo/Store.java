package com.jk1603.apple.admini.pojo;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Store {
	private Integer id;
	private BigDecimal amount;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date date;
	private Goods goods;
	private Admini admini;
	private SuperAdmini superadmini;
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
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
