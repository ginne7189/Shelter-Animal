package com.animalshelter.sidebar.model;

public class VolunteerDto {
	private int seq;
	private String tel;
	private String centername;
	private String volunteerkind;
	private String volunteerdate;
	private String centerlocation;

	
	
	public String getCenterlocation() {
		return centerlocation;
	}
	public void setCenterlocation(String centerlocation) {
		this.centerlocation = centerlocation;
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
	public String getCentername() {
		return centername;
	}
	public void setCentername(String centername) {
		this.centername = centername;
	}
	public String getVolunteerkind() {
		return volunteerkind;
	}
	public void setVolunteerkind(String volunteerkind) {
		this.volunteerkind = volunteerkind;
	}
	public String getVolunteerdate() {
		return volunteerdate;
	}
	public void setVolunteerdate(String volunteerdate) {
		this.volunteerdate = volunteerdate;
	}
	
	
}
