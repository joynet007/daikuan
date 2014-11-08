package com.daikuan.util.db;

import javax.servlet.http.Cookie;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-29 下午8:59:00
 * @Description: TODO(用一句话描述该文件做什么) 
 */
public class Test {

	/** 
	 * @Title: main 
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param @param args    设定文件 
	 * @return void    返回类型    
	 * @throws 
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Cookie cookie = new Cookie("name--liang", "session---");
		System.out.println(cookie.getPath());
		
	}

}
