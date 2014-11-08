package com.daikuan.util.helper;

import java.sql.Connection;
import java.sql.SQLException;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 ����6:12:30
 * @Description: TODO(�û�����������������Դ����Ҫͨ��spring �������ļ���ȡ����Դ) 
 */
public class JdbcHelper {

	
	private static DriverManagerDataSource dataSource = null;
	private static ClassPathXmlApplicationContext context = null;
	
	
	/**
	 * 
	* @Title: getDataSource 
	* @Description: TODO(��ȡSprig �����ļ��е�datasource) 
	* @param @return    �趨�ļ� 
	* @return DriverManagerDataSource    ��������    
	* @throws
	 */
	public static DriverManagerDataSource getDataSource(){
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		context.start();
		dataSource = (DriverManagerDataSource) context.getBean("dataSource");
		
		return dataSource;
	}
	
	
	/**
	 * @throws SQLException 
	 * 
	* @Title: getCon 
	* @Description: TODO(��ȡConnection�����ݿ�����) 
	* @param @return    �趨�ļ� 
	* @return Connection    ��������    
	* @throws
	 */
	public static Connection getCon() throws SQLException{
		if(dataSource == null){
			dataSource = JdbcHelper.getDataSource();
		}
		
		return dataSource.getConnection();
	}
	
	/**
	 * 
	 */
	static {
		// TODO Auto-generated constructor stub
	
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		context.start();
		dataSource = (DriverManagerDataSource) context.getBean("dataSource");
		
	}
	
	
	/** 
	 * @Title: main 
	 * @Description: TODO(������һ�仰�����������������) 
	 * @param @param args    �趨�ļ� 
	 * @return void    ��������    
	 * @throws 
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//		context.start();
//		DriverManagerDataSource datasource = (DriverManagerDataSource) context.getBean("dataSource");
//		
//		if(null != datasource){
//			
//			System.out.println(datasource.getPassword());
//			System.out.println(datasource.getUrl());
//		}
		
		
		
	}
	
}
