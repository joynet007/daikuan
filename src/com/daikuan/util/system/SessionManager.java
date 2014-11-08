package com.daikuan.util.system;

import javax.servlet.http.HttpSession;

import com.daikuan.model.User;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-7 ����10:24:54
 * @Description: TODO(�û���ǰ�û�session���ж�) 
 */
public class SessionManager {


	/**
	 * 
	* @Title: getUser 
	* @Description: session ��ȡ�û����� 
	* @param @param session
	* @param @return    �趨�ļ� 
	* @return User    ��������    
	* @throws
	 */
	public static User getUser(HttpSession session){
		if(null == session){
			return null;
		}
		
		User user = (User)session.getAttribute(SystemConfig.Session_key);
		if(null == user){
			return null;
		}
		return user;
	}
	
	
	/**
	 * 
	* @Title: isLogin 
	* @Description: TODO(�ж��û��Ƿ��¼ϵͳ) 
	* @param @param session
	* @param @return    �趨�ļ� 
	* @return boolean    ��������    
	* @throws
	 */
	public static boolean isLogin(HttpSession session){
		if(null == session){
			return false;
		}
		
		User user = (User)session.getAttribute(SystemConfig.Session_key);
		if(null == user){
			return false;
		}
		return true;
	}
}
