package com.daikuan.util;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

/**
 * @ToDo:这个类的作用是：
 * @date:2013-8-27 下午7:05:54
 * @author:joynet007@163.com
 * @version:1.0.0.0
 */
public class JsonUtil {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	
	/**
	 * 把对象处理成 JSON 的样式字符串 返回的字符串是：字段：�?
	 * 
		{"id":1,
		"name":"C",
		"size":"",
		"date":"02/19/2010"}
	 * 
	 * @param c
	 *  这个字段数组是你�?��的字段，（有些不必要的字段过滤掉�?
	 * @param ziduan 
	 * @return
	 */
	public static String jsonString(Object c , String [] ziduan_array){
		if(c == null){
			return "";
		}
		StringBuffer sb = new StringBuffer();
		
		for(String ziduan : ziduan_array){
			try {
				
				String value = BeanUtils.getProperty(c, ziduan);
				if(ziduan.equals("orgid")){
					ziduan = "id";
				}
				if(ziduan.equals("name")){
					ziduan = "text";
				}
				sb.append("\""+ziduan+"\"").append(":").append("\""+value+"\"").append(",");
			} catch (IllegalAccessException | InvocationTargetException
					| NoSuchMethodException e) {
				e.printStackTrace();
				Exception ex = new Exception("---字段必须是对象的属�?----");
				ex.printStackTrace();
			}
		}
		//去掉�?���?��逗号
		return sb.toString().substring(0,sb.toString().length()-1);
	}
	
	
	
	/**
	 *   把所要显示的字段放入hashtable�?
	 * @param ziduan
	 * @return
	 */
//	private static Hashtable<String, String> ziduanMap(String [] ziduan){
//		Hashtable<String, String> map ;
//		if(ziduan == null){
//			return null;
//		}
//		map = new Hashtable<String , String >();
//		for(String str : ziduan ){
//			map.put(str, str);
//		}
//		return map;
//	}

}
