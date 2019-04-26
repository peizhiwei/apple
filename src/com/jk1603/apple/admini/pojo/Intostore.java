package com.jk1603.apple.admini.pojo;

import java.util.Date;

public class Intostore {
	private Integer id;
	private String rkNumber;//入库编号
	private String name;//商品名称
	private int amount;//入库总量
	private Date date;//入库日期
	private String builder;//创建者
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRkNumber() {
		return rkNumber;
	}
	public void setRkNumber(String rkNumber) {
		this.rkNumber = rkNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getBuilder() {
		return builder;
	}
	public void setBuilder(String builder) {
		this.builder = builder;
	}
}
