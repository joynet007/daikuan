package com.daikuan.util;

public class StringUtil {

	/**
	 * 字符串为null或空串或空格时返回true
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		if ((str == null) || ("".equals(str)))
			return true;
		if (str.trim().length() == 0)
			return true;

		return false;
	}
	

	/**
	 * չʾ�������������Ϊ���ַ����򷵻ء���
	* @Title: displayString 
	* @Description: TODO(������һ�仰�����������������) 
	* @param @param str
	* @param @return    �趨�ļ� 
	* @return String    ��������    
	* @throws
	 */
	public static String displayString(String str){
		if(StringUtil.isEmpty(str)){
			return "";
		}
		return str;
	}
	
	
}
