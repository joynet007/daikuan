package com.daikuan.util;

public class StringUtil {

	/**
	 * 瀛楃涓蹭负null鎴栫┖涓叉垨绌烘牸鏃惰繑鍥瀟rue
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
	 * 展示参数，如果参数为空字符串则返回“”
	* @Title: displayString 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @param str
	* @param @return    设定文件 
	* @return String    返回类型    
	* @throws
	 */
	public static String displayString(String str){
		if(StringUtil.isEmpty(str)){
			return "";
		}
		return str;
	}
	
	
}
