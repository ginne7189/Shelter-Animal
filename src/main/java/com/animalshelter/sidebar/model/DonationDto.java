package com.animalshelter.sidebar.model;

public class DonationDto extends BoardDto{
	private int seq;
	private String centername;
	private int cdonationfee;
	private int gatheringfee;
	private String cdonationpurpose;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCentername() {
		return centername;
	}
	public void setCentername(String centername) {
		this.centername = centername;
	}
	public int getCdonationfee() {
		return cdonationfee;
	}
	public void setCdonationfee(int cdonationfee) {
		this.cdonationfee = cdonationfee;
	}
	public int getGatheringfee() {
		return gatheringfee;
	}
	public void setGatheringfee(int gatheringfee) {
		this.gatheringfee = gatheringfee;
	}
	public String getCdonationpurpose() {
		return cdonationpurpose;
	}
	public void setCdonationpurpose(String cdonationpurpose) {
		this.cdonationpurpose = cdonationpurpose;
	}
	
	

}
