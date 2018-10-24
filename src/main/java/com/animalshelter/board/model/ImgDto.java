package com.animalshelter.board.model;

public class ImgDto extends BoardDto{

	private int imgno;
	private String origin_pic;
	private String save_pic;
	private String savefolder;
	private int type;
	public int getImgno() {
		return imgno;
	}
	public void setImgno(int imgno) {
		this.imgno = imgno;
	}
	public String getOrigin_pic() {
		return origin_pic;
	}
	public void setOrigin_pic(String origin_pic) {
		this.origin_pic = origin_pic;
	}
	public String getSave_pic() {
		return save_pic;
	}
	public void setSave_pic(String save_pic) {
		this.save_pic = save_pic;
	}
	public String getSavefolder() {
		return savefolder;
	}
	public void setSavefolder(String savefolder) {
		this.savefolder = savefolder;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
