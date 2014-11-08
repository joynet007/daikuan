package com.daikuan.dao;

import java.util.List;

import com.daikuan.model.DaiKuan;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-15 下午11:09:28
 * @Description: TODO(用一句话描述该文件做什么) 
 */
public interface DaiKuanDao {

		public DaiKuan getDaiKuanByID(String daikuanID);

		/** 
		* @Title: createDaiKuan 
		* @Description: TODO(这里用一句话描述这个方法的作用) 
		* @param @param map    设定文件 
		* @return void    返回类型    
		* @throws 
		*/ 
		public void createDaiKuan(DaiKuan dk);
		/**
		 * 
		* @Title: findDaikan 
		* @Description: TODO(这里用一句话描述这个方法的作用) 
		* @param     设定文件 
		* @return void    返回类型    
		* @throws
		 */
		public List<DaiKuan> findDaikan();
		
		
}
