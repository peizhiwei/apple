package com.jk1603.apple.admini.pojo;

import java.util.Date;

public class Intostore {
	private Integer id;
	private String rkNumber;//�����
	private String name;//��Ʒ����
	private int amount;//�������
	private Date date;//�������
	private String builder;//������
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
