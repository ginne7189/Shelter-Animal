package com.animalshelter.sidebar.model;

public class PageNavigation {

	private String root;
	private boolean nowFirst;
	private boolean nowLast;
	private int totalArticleCount;
	private int newArticleCount;
	private int totalPageCount;
	private int pageNo;
	private String key;
	private String word;
	private String navigator;

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public boolean isNowFirst() {
		return nowFirst;
	}

	public void setNowFirst(boolean nowFirst) {
		this.nowFirst = nowFirst;
	}

	public boolean isNowLast() {
		return nowLast;
	}

	public void setNowLast(boolean nowLast) {
		this.nowLast = nowLast;
	}

	public int getTotalArticleCount() {
		return totalArticleCount;
	}

	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}

	public int getNewArticleCount() {
		return newArticleCount;
	}

	public void setNewArticleCount(int newArticleCount) {
		this.newArticleCount = newArticleCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getNavigator() {
		return navigator;
	}

	public void setNavigator() {
		StringBuffer tmpNavigator = new StringBuffer();

		int pc = 10;
		int prePage;

		prePage = (pageNo - 1) / pc * pc;

		tmpNavigator.append("<ul class=\"pagination justify-content-center\" >\n");
		if (this.isNowFirst()) {
			tmpNavigator.append("  <li>\n");
			tmpNavigator.append("   <a class=\"page-link\" aria-label=\"Previous\">");
			tmpNavigator.append("		<span aria-hidden=\"true\">&laquo;</span>");
			tmpNavigator.append("   <span class=\"sr-only\">Previous</span></a></li>");
		} else {
			tmpNavigator.append("  <li class=\"page-item\" mv-page-no=\"" + prePage + "\">\n");
			tmpNavigator.append("   <a class=\"page-link\" aria-label=\"Previous\">");
			tmpNavigator.append("		<span aria-hidden=\"true\">&laquo;</span>");
			tmpNavigator.append("   <span class=\"sr-only\" >Previous</span></a></li>");
		}

		int startPage = prePage + 1;
		int endPage = prePage + pc;
		if (endPage > totalPageCount)
			endPage = totalPageCount;

		for (int i = startPage; i < endPage + 1; i++) {
			tmpNavigator.append("<li class=\"page-item\" mv-page-no=\"" + i + "\">");
			tmpNavigator.append("<a class=\"page-link\">" + i + "</a>\n");
			tmpNavigator.append("</li>");
		}

		if (this.isNowLast()) {
			tmpNavigator.append("  <li>");
			tmpNavigator.append("    <a class=\"page-link\"  aria-label=\"Next\">");
			tmpNavigator.append(" 		<span aria-hidden=\"true\">&raquo;</span> \n");
			tmpNavigator.append(" 		<span class=\"sr-only\">Next</span></a></li>");
		} else {
			tmpNavigator.append("  <li class=\"page-item\" mv-page-no =\"" + (endPage + 1) + "\">");
			tmpNavigator.append("    <a class=\"page-link\" aria-label=\"Next\">");
			tmpNavigator.append(" 		<span aria-hidden=\"true\">&raquo;</span> \n");
			tmpNavigator.append(" 		<span class=\"sr-only\">Next</span></a></li>");
		}

		tmpNavigator.append("  </td>\n");
		tmpNavigator.append("</ul>\n");

		this.navigator = tmpNavigator.toString();
	}

}