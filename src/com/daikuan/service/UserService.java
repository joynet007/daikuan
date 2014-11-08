package com.daikuan.service;

import java.util.HashMap;
import java.util.List;

import com.daikuan.model.User;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-26 ����10:08:41
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */

public interface UserService {

	
	/**
	 * 
	* @Title: getUserByUserName 
	* @Description: TODO(������һ�仰�����������������) 
	* @param @param userName
	* @param @return    �趨�ļ� 
	* @return User    ��������    
	* @throws
	 */
	public User getUserByUserName(String userName);
	
	public int findAll();
	
	/**
	* @Title: getUser 
	* @Description: ���ݲ�����ȡ�û� 
	* @param @param userID
	* @param @return    �趨�ļ� 
	* @return User    ��������    
	* @throws
	 */
	public User getUser(String userID);
	
	/**
	 * 
	* @Title: getUserByUserEmail 
	* @Description: TODO(������һ�仰�����������������) 
	* @param @param userEmail
	* @param @return    �趨�ļ� 
	* @return User    ��������    
	* @throws
	 */
	public User getUserByUserEmail(String userEmail);
	
	/**
	* @Title: createUser 
	* @Description: ����һ���û�
	* @param @param user    �趨�ļ� 
	* @return void    ��������    
	* @throws
	 */
	public void createUser(User user);
	
	/**
	 * ��ѯ���е��û���
	* @Title: findUsers 
	* @Description: TODO(������һ�仰�����������������) 
	* @param @return    �趨�ļ� 
	* @return List<User>    ��������    
	* @throws
	 */
	public List<User> findUsers(int startNumber , int rowNumber);
	
	/**
	 * 
	* @Title: updateUserLoginCount 
	* @Description: TODO(������һ�仰�����������������) 
	* @param @param user    �趨�ļ� 
	* @return void    ��������    
	* @throws
	 */
	public void updateUserLoginCount(User user);
	/**
	 * 
	* @Title: findbyvalues 
	* @Description: TODO(�����û������û�Email�����û��б�) 
	* @param @param map
	* @param @return    �趨�ļ� 
	* @return List<User>    ��������    
	* @throws
	 */
	public List<User> findbyvalues(HashMap<String, Object> map);
	
	public int findbyvaluesCount(HashMap<String, Object> map);
}
