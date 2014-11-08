package com.daikuan.dao;

import java.util.HashMap;
import java.util.List;

import com.daikuan.model.User;


/**
 * 
 *
 */
public interface UserDao {

	public User  getUserByUserName(String userName);
	public User getUserByUserEmail(String userEmail);
	/**
	 * 查询所有的用户
	 * @return int
	 */
	public  int findAll();
	
	public User getUser(String userID);
	
	public void createUser(User user);
	
	public List<User> findUsers(HashMap<String, Integer> map);
	
	
	public void updateUserLoginCount(User user);
	
	
	public List<User> findbyvalues(HashMap<String, Object> map);
	public int findbyvaluesCount(HashMap<String, Object> map);
	
}
