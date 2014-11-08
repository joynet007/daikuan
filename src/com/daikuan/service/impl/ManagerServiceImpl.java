package com.daikuan.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.daikuan.dao.UserDao;
import com.daikuan.service.ManagerService;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-7 上午12:32:58
 * @Description: TODO(用一句话描述该文件做什么) 
 */
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {

	@Resource
	private UserDao userDao ;
	
	
	
	
}
