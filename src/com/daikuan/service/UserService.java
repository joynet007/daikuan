package com.daikuan.service;

import java.util.HashMap;
import java.util.List;

import com.daikuan.model.User;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-26 上午10:08:41
 * @Description: TODO(用一句话描述该文件做什么) 
 */

public interface UserService {

	
	/**
	 * 
	* @Title: getUserByUserName 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @param userName
	* @param @return    设定文件 
	* @return User    返回类型    
	* @throws
	 */
	public User getUserByUserName(String userName);
	
	public int findAll();
	
	/**
	* @Title: getUser 
	* @Description: 根据参数获取用户 
	* @param @param userID
	* @param @return    设定文件 
	* @return User    返回类型    
	* @throws
	 */
	public User getUser(String userID);
	
	/**
	 * 
	* @Title: getUserByUserEmail 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @param userEmail
	* @param @return    设定文件 
	* @return User    返回类型    
	* @throws
	 */
	public User getUserByUserEmail(String userEmail);
	
	/**
	* @Title: createUser 
	* @Description: 创建一个用户
	* @param @param user    设定文件 
	* @return void    返回类型    
	* @throws
	 */
	public void createUser(User user);
	
	/**
	 * 查询所有的用户列
	* @Title: findUsers 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @return    设定文件 
	* @return List<User>    返回类型    
	* @throws
	 */
	public List<User> findUsers(int startNumber , int rowNumber);
	
	/**
	 * 
	* @Title: updateUserLoginCount 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @param user    设定文件 
	* @return void    返回类型    
	* @throws
	 */
	public void updateUserLoginCount(User user);
	/**
	 * 
	* @Title: findbyvalues 
	* @Description: TODO(根据用户名、用户Email查找用户列表) 
	* @param @param map
	* @param @return    设定文件 
	* @return List<User>    返回类型    
	* @throws
	 */
	public List<User> findbyvalues(HashMap<String, Object> map);
	
	public int findbyvaluesCount(HashMap<String, Object> map);
}
