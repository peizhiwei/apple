package com.jk1603.apple.admini.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Outstore {
	private Integer id;
	private String ckNumber;//出库编号
	private String name;//商品名称
	private int amount;//出库总量
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date date;//出库日期
	private String builder;//创建者
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getCkNumber() {
		return ckNumber;
	}
	public void setCkNumber(String ckNumber) {
		this.ckNumber = ckNumber;
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
	public String toString() {
		return "id="+id+",ckNumber="+ckNumber+",name="+name+",amount="+amount+",date="+date+",builder="+builder;
		
	}
}
