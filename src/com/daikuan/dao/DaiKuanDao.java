package com.daikuan.dao;

import java.util.List;

import com.daikuan.model.DaiKuan;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-15 ����11:09:28
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */
public interface DaiKuanDao {

		public DaiKuan getDaiKuanByID(String daikuanID);

		/** 
		* @Title: createDaiKuan 
		* @Description: TODO(������һ�仰�����������������) 
		* @param @param map    �趨�ļ� 
		* @return void    ��������    
		* @throws 
		*/ 
		public void createDaiKuan(DaiKuan dk);
		/**
		 * 
		* @Title: findDaikan 
		* @Description: TODO(������һ�仰�����������������) 
		* @param     �趨�ļ� 
		* @return void    ��������    
		* @throws
		 */
		public List<DaiKuan> findDaikan();
		
		
}
