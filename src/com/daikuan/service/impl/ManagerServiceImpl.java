package com.daikuan.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.daikuan.dao.UserDao;
import com.daikuan.service.ManagerService;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-7 ����12:32:58
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {

	@Resource
	private UserDao userDao ;
	
	
	
	
}
