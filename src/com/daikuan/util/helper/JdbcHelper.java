package com.daikuan.util.helper;

import java.sql.Connection;
import java.sql.SQLException;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 下午6:12:30
 * @Description: TODO(用户帮助类链接数据资源，主要通过spring 的配置文件获取数据源) 
 */
public class JdbcHelper {

	
	private static DriverManagerDataSource dataSource = null;
	private static ClassPathXmlApplicationContext context = null;
	
	
	/**
	 * 
	* @Title: getDataSource 
	* @Description: TODO(获取Sprig 配置文件中的datasource) 
	* @param @return    设定文件 
	* @return DriverManagerDataSource    返回类型    
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
	* @Description: TODO(获取Connection，数据库连接) 
	* @param @return    设定文件 
	* @return Connection    返回类型    
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
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param @param args    设定文件 
	 * @return void    返回类型    
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
