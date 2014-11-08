package com.daikuan.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.daikuan.dao.DaiKuanDao;
import com.daikuan.model.DaiKuan;
import com.daikuan.service.DaiKuanService;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 下午5:57:27
 * @Description: TODO(用一句话描述该文件做什么) 
 */

@Service
public class DaikuanServiceImpl implements DaiKuanService{

	@Resource
	private DaiKuanDao daikuanDao ;

	@Override
	public void createDaiKuan(DaiKuan dk) {
		daikuanDao.createDaiKuan(dk);
	}

	
	
	
}
