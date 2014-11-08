package com.daikuan.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.daikuan.dao.UserDao;
import com.daikuan.model.User;
import com.daikuan.service.UserService;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-26 上午10:08:52
 * @Description: TODO(用一句话描述该文件做什么) 
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	public  UserDao userDao;

	@Override
	public User getUserByUserName(String userName) {
		return userDao.getUserByUserName(userName);
	}

	@Override
	public int findAll() {
		return userDao.findAll();
	}

	@Override
	public User getUser(String userID) {
		return userDao.getUser(userID);
	}

	@Override
	public User getUserByUserEmail(String userEmail) {
		return userDao.getUserByUserEmail(userEmail);
	}

	@Override
	public void createUser(User user) {
		userDao.createUser(user);
	}

	/**
	 * 
	 */
	@Override
	public List<User> findUsers(int startNumber, int rowNumber) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNumber", startNumber);
		map.put("rowNumber", rowNumber);
		
		return userDao.findUsers(map);
	}

	@Override
	public void updateUserLoginCount(User user) {
		userDao.updateUserLoginCount(user);
	}

	@Override
	public List<User> findbyvalues(HashMap<String, Object> map) {
		return null;
	}

	@Override
	public int findbyvaluesCount(HashMap<String, Object> map) {
		return 0;
	}
	
	
}
