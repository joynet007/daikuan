package com.daikuan.util;

import java.util.UUID;

public class IDmanager {
	
	public static String  createID(){
		String uuID = UUID.randomUUID().toString().replaceAll("-", "");
		return uuID;
	}
	
	
}
