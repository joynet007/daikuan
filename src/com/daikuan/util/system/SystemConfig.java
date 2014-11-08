package com.daikuan.util.system;

import javax.servlet.http.HttpServletRequest;

import com.daikuan.util.StringUtil;

/**   
* @author: joynet007@163.com
* @date 2014-10-1 上午9:37:19
* @Description: 这个类主要用于定义系统统一使用的常量
*/ 
public class SystemConfig {

	
	/**
	 * 用户类型定义
	 */
	public static String UserType_Normal="usertype.normal";//普通用户
	public static String UserType_Vip="usertype.vip";//系统vip用户
	public static String UserType_System="usertype.system";//系统管理员
	
	/**
	 * 用户状态
	 */
	public static String UserStatus_Stop = "userstatus.stop";//停止
	public static String UserStatus_Start = "userstatus.start";//启动
	
	/**
	 * 页面展示的提示信息
	 */
	public static String Page_Info = "pageinfo";
	
	
	/**
	 * 用户sessionkey
	 */
	public static String Session_key = "sessionKey";
	
	
	/**
	 * 系统路径
	 */
	
//	public static String projectPath
	public static String getSysPath(HttpServletRequest request , String endPath){
		if(StringUtil.isEmpty(endPath)){
			return request.getContextPath();
		}
		return request.getContextPath()+"/"+endPath;
	}
	
	
	public static void main (String args[])
	{
//		System.out.println(File.separator);
//		System.out.println(File.separatorChar);
	}
}
