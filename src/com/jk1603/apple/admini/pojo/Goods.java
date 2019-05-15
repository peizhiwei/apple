package com.jk1603.apple.admini.pojo;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;


public class Goods {
	private Integer id;
	private String name;
	private BigDecimal price;
	private String number;
	private String specs;//规格
	private String details;
	private boolean upshelf;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date date;
	private String img;
	private Type type;
	private Admini admini;
	private SuperAdmini superadmini;
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
	public boolean isUpshelf() {
		return upshelf;
	}
	public void setUpshelf(boolean upshelf) {
		this.upshelf = upshelf;
	}

	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
