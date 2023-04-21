package com.servlets;

public class Pojo {
	private int id;
	private String name;
	private String divison;
	private String contact;
	
	public Pojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Pojo(String name, String divison, String contact) {
		super();
		this.name = name;
		this.divison = divison;
		this.contact = contact;
	}

	public Pojo(int id, String name, String divison, String contact) {
		super();
		this.id=id;
		this.name = name;
		this.divison = divison;
		this.contact = contact;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDivison() {
		return divison;
	}
	public void setDivison(String divison) {
		this.divison = divison;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	
}
