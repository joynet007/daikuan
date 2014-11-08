package com.daikuan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.daikuan.dao.DaiKuanDao;
import com.daikuan.model.DaiKuan;
import com.daikuan.service.ShowPageService;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 下午7:41:38
 * @Description: TODO(用一句话描述该文件做什么) 
 */

@Service
public class ShowPageServiceImpl implements ShowPageService{

	@Resource
	DaiKuanDao daikuanDao;

	/* (non-Javadoc)
	 * @see com.daikuan.service.ShowPageService#findDaikuan()
	 */
	@Override
	public List<DaiKuan> findDaikuan() {
		// TODO Auto-generated method stub
		return daikuanDao.findDaikan();
	}


	
}
