package com.daikuan.util.system;

import javax.servlet.http.HttpServletRequest;

import com.daikuan.util.StringUtil;

/**   
* @author: joynet007@163.com
* @date 2014-10-1 ����9:37:19
* @Description: �������Ҫ���ڶ���ϵͳͳһʹ�õĳ���
*/ 
public class SystemConfig {

	
	/**
	 * �û����Ͷ���
	 */
	public static String UserType_Normal="usertype.normal";//��ͨ�û�
	public static String UserType_Vip="usertype.vip";//ϵͳvip�û�
	public static String UserType_System="usertype.system";//ϵͳ����Ա
	
	/**
	 * �û�״̬
	 */
	public static String UserStatus_Stop = "userstatus.stop";//ֹͣ
	public static String UserStatus_Start = "userstatus.start";//����
	
	/**
	 * ҳ��չʾ����ʾ��Ϣ
	 */
	public static String Page_Info = "pageinfo";
	
	
	/**
	 * �û�sessionkey
	 */
	public static String Session_key = "sessionKey";
	
	
	/**
	 * ϵͳ·��
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
