package com.daikuan.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.exceptions.jdbc4.CommunicationsException;


public class Test {

	
	public static void main(String args[])
	{
//		try {
//			Integer.parseInt("aa");
//		} catch (Exception e) {
//			System.out.println("--eee-");
//			return ;
//		}finally{
//			System.out.println("finally--");
//		}
//		
//		System.out.println("---ddddd---");
		
//		System.out.println("/daizi/rest/manager/login".matches(".+login.*")+"");
//		
//		StringUtils.tokenizeToStringArray("women,nihao",",");
//		
//		String [] ss = StringUtils.tokenizeToStringArray("women;nihao", ",; \t\n");
//		
//		System.out.println(ss[0]+"---------"+ss[1]);
		
//		while(true){
//			
//			try {
//				Thread.sleep(1000);
//			} catch (InterruptedException e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			}
//			
//			try {
//				
//			} catch (Exception e) {
//				
//			}finally{
//				System.out.println("---��Ϣ1��---");
//			}
//			
//			
//		}
		
		
		
		
		
	}
	
	static void doInsert(){
		
		PreparedStatement pstat = null;
        Connection con = null;		
		String sql = "insert into au_test values('1111','22222')";
		
		try {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/jpa?useUnicode=true&characterEncoding=utf8","root", "");
				pstat = con.prepareStatement(sql);
				pstat.execute();
			}catch(CommunicationsException e){
					System.out.println("---数据库异常（宕机或�?网路异常�?--");
			}finally{
				if(con != null){
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
			
			
		} catch (Exception e) {
			System.out.print("---插入数据异常（主键冲突）-----------");
//			e.printStackTrace();
		}
		
			
	}
	
}
