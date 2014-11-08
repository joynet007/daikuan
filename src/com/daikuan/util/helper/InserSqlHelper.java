package com.daikuan.util.helper;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


import com.daikuan.util.helper.vo.SqlVo;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 ����6:11:02
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */
public class InserSqlHelper {
	
	
	/** 
	 * @Title: main 
	 * @Description: TODO( ���ݱ����� �Զ����� insert sql���) 
	 * @param @param args    �趨�ļ� 
	 * @return void    ��������    
	 * @throws 
	 */
	public static void main(String[] args) {

		InserSqlHelper ish = new InserSqlHelper();

		Connection  con = null;
		try {
			con = JdbcHelper.getCon();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		ish.inserSql(con,"dk_daikuan");
		
		
		
		
		
		
		
		if(con != null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}

	/**
	 * 
	* @Title: inserSql 
	* @Description: TODO(���ݱ����Ʋ���insertsql mybatis ��ʽ��) 
	* @param @param con
	* @param @param tableName    �趨�ļ� 
	* @return void    ��������    
	* @throws
	 */
	public void inserSql(Connection con, String tableName){
		
		TableHelper th = new TableHelper();
		List<SqlVo> list = th.getList(con, tableName);
		
		StringBuffer sb = new StringBuffer("insert into " +tableName +"(");
		
		int i = 0;
		
		for (SqlVo sqlVo : list) {
			if(i==list.size()-1){
				sb.append(" "+sqlVo.getColumnName());
				sb.append(" )");
			}else{
				sb.append(" "+sqlVo.getColumnName()+" ,");
			}
			
			i++;
		}
		
		sb.append(" values ( ");
		int n = 0;
		for (SqlVo sqlVo : list) {
			
			//#{}
			if(n==list.size()-1){
				sb.append(" #{"+sqlVo.getColumnName()+"}");
				sb.append(" )");
			}else{
				sb.append(" #{"+sqlVo.getColumnName()+"} ,");
			}
			
			n++;
		}
		
		
		System.out.println(sb.toString());
		
	}
	
	
	
	
}
