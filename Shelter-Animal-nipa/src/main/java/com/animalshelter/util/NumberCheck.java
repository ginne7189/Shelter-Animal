package com.animalshelter.util;

public class NumberCheck {

	public static int nullToZero(String tmp) {
		int number = 0;
		if(isNumber(tmp)) {
			number = Integer.parseInt(tmp);
		}
		return number;
	}
	
	public static int nullToOne(String tmp) {
		int number = 1;
		if(isNumber(tmp)) {
			number = Integer.parseInt(tmp);
		}
		return number;
	}

	private static boolean isNumber(String tmp) {//"213"
		boolean flag = true;
		if(tmp != null) {
			int len = tmp.length();
			for(int i=0;i<len;i++) {
				int x = tmp.charAt(i);//ASCII
				if(x < 48 || x > 57) {
					flag = false;
					break;
				}
			}
		} else {
			flag = false;
		}
		return flag;
	}
	
}
