package com.animalshelter.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Encoder {
	public static String utfURL(String tmp) {
		String utf="";
		if(tmp!=null) {
			try {
				utf=URLEncoder.encode(tmp,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return utf;
	}
	
	public static String uecURL(String tmp) {
		String utf="";
		if(tmp!=null) {
			try {
				utf=URLEncoder.encode(tmp,"EUC-KR");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return utf;
	}
}
