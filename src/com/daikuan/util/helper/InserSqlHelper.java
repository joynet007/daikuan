package com.daikuan.util.helper;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


import com.daikuan.util.helper.vo.SqlVo;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 下午6:11:02
 * @Description: TODO(用一句话描述该文件做什么) 
 */
public class InserSqlHelper {
	
	
	/** 
	 * @Title: main 
	 * @Description: TODO( 根据表名称 自动生成 insert sql语句) 
	 * @param @param args    设定文件 
	 * @return void    返回类型    
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
	* @Description: TODO(根据表名称产生insertsql mybatis 格式用) 
	* @param @param con
	* @param @param tableName    设定文件 
	* @return void    返回类型    
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
