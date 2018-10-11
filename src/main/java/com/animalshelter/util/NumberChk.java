package com.animalshelter.util;

public class NumberChk {
	public static int nullToZero(String str) {
		int result = 0;

		if (isNumber(str)) {
			result = Integer.parseInt(str);
		}

		return result;
	}
	
	public static int nullToOne(String str) {
		int result = 1;

		if (isNumber(str)) {
			result = Integer.parseInt(str);
		}

		return result;
	}

	private static boolean isNumber(String str) {
		boolean flag = true;
		if (str != null) {
			int len = str.length();
			for (int i = 0; i < len; i++) {
				int x = str.charAt(i);
				if (x < 48 || x > 57) {
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
