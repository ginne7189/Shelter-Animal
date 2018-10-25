package com.animalshelter.board.model;

public class ReplyDto {
	private String c_code;
	private String seq;
	private String cmnt_content;
	private String writer;
	private String reg_date;

	public String getC_code() {
		return c_code;
	}

	public void setC_code(String c_code) {
		this.c_code = c_code;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getCmnt_content() {
		return cmnt_content;
	}

	public void setCmnt_content(String cmnt_content) {
		this.cmnt_content = cmnt_content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}
