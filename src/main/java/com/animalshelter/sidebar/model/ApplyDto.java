package com.animalshelter.sidebar.model;

import com.animalshelter.member.model.MemberDetailDto;

public class ApplyDto extends MemberDetailDto{
	private String writeremail;
	private String applyemail;
	private int seq;
	private String subject;
	
	public String getWriteremail() {
		return writeremail;
	}
	public void setWriteremail(String writeremail) {
		this.writeremail = writeremail;
	}
	public String getApplyemail() {
		return applyemail;
	}
	public void setApplyemail(String applyemail) {
		this.applyemail = applyemail;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
}
