package com.daikuan.util.system;

import javax.servlet.http.HttpSession;

import com.daikuan.model.User;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-7 上午10:24:54
 * @Description: TODO(用户当前用户session的判断) 
 */
public class SessionManager {


	/**
	 * 
	* @Title: getUser 
	* @Description: session 获取用户对象 
	* @param @param session
	* @param @return    设定文件 
	* @return User    返回类型    
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
	* @Description: TODO(判断用户是否登录系统) 
	* @param @param session
	* @param @return    设定文件 
	* @return boolean    返回类型    
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
