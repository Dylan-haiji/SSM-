package com.ssm.pojo;

public class Shop {
	private int id;
	private int price;
	private String note;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "Shop [id=" + id + ", price=" + price + ", note=" + note + "]";
	}
}
