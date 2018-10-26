package com.animalshelter.board.model;

public class MissingBoardDto extends BoardDto{

	private int seq;
	private String tel;
	private String location;
	private String kind;
	private String gender;
	private String petsize;
	private String feature;
	private String missingdate;
	private int age;
	
	
	public String getMissingdate() {
		return missingdate;
	}
	public void setMissingdate(String missingdate) {
		this.missingdate = missingdate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getPetsize() {
		return petsize;
	}
	public void setPetsize(String petsize) {
		this.petsize = petsize;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
}
