package com.daikuan.util.db;

import javax.servlet.http.Cookie;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-29 ����8:59:00
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */
public class Test {

	/** 
	 * @Title: main 
	 * @Description: TODO(������һ�仰�����������������) 
	 * @param @param args    �趨�ļ� 
	 * @return void    ��������    
	 * @throws 
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Cookie cookie = new Cookie("name--liang", "session---");
		System.out.println(cookie.getPath());
		
	}

}
