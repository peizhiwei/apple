package com.jk1603.apple.admini.pojo;

import java.math.BigDecimal;

import com.mysql.fabric.xmlrpc.base.Data;

public class Goods {
	private Integer id;
	private String name;
	private BigDecimal price;
	private String number;//��Ʒ���
	private String specs;//��Ʒ���
	private String details;//��Ʒ����
	private int amount;//���
	private boolean upshelf;//�Ƿ��ϼ�
	private Data date;
	private String img;
	private Type type;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getSpecs() {
		return specs;
	}
	public void setSpecs(String specs) {
		this.specs = specs;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public boolean isUpshelf() {
		return upshelf;
	}
	public void setUpshelf(boolean upshelf) {
		this.upshelf = upshelf;
	}
	public Data getDate() {
		return date;
	}
	public void setDate(Data date) {
		this.date = date;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Type getSort() {
		return type;
	}
	public void setSort(Type type) {
		this.type = type;
	}
}
