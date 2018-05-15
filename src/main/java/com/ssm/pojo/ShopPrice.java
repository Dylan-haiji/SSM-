package com.ssm.pojo;

public class ShopPrice {
	private int id;
	private String uid;
	private String note;
	private String amont;
	public String getAmont() {
		return amont;
	}
	public void setAmont(String amont) {
		this.amont = amont;
	}
	@Override
	public String toString() {
		return "ShopPrice [id=" + id + ", uid=" + uid + ", note=" + note + ", amont=" + amont + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
