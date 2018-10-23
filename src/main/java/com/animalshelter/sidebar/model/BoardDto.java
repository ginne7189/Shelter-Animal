package com.animalshelter.sidebar.model;

public class BoardDto {
	private int seq;
	private String subject;
	private String content;
	private String boardtype;
	private int hit;
	private String joindate;
	private String email;

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setBoardtype(String boardtype) {
		this.boardtype = boardtype;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSeq() {
		return seq;
	}

	public String getSubject() {
		return subject;
	}

	public String getContent() {
		return content;
	}

	public String getBoardtype() {
		return boardtype;
	}

	public int getHit() {
		return hit;
	}

	public String getJoindate() {
		return joindate;
	}

	public String getEmail() {
		return email;
	}

}
