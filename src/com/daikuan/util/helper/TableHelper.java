package com.daikuan.util.helper;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

import com.daikuan.util.helper.vo.SqlVo;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 下午6:40:57
 * @Description: TODO(用一句话描述该文件做什么) 
 */
public class TableHelper {

	/** 
	 * @Title: main 
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param @param args    设定文件 
	 * @return void    返回类型    
	 * @throws 
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	/**
	 * 根据table_name 调教查询表的字段名称和注释
	 */
	private static  String sql=" select  column_name, column_comment  from Information_schema.columns  where table_Name = ? ";
	
	/**
	 * 
	* @Title: getMap 
	* @Description: TODO(根据table_name 调教查询表的字段名称和注释，封装成对象放入list ) 
	* @param @param con
	* @param @return    设定文件 
	* @return List<SqlVo>    返回类型    
	* @throws
	 */
	public List<SqlVo> getList (Connection con , String tableName){
		if(null == con){
			System.out.println(TableHelper.class.getName()+"  con is null !!!!");
			return null;
		}
		List<SqlVo> list = new ArrayList<SqlVo>();
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try {
			pstmt = con.prepareStatement(sql);
			
			
			if(null == pstmt){
				System.out.println(TableHelper.class.getName()+"  pstmt is null !!!!");
				return null;
			}
			
			pstmt.setString(1, tableName);//放入条件
			rs=pstmt.executeQuery();
			while(rs.next()){
				SqlVo sv = new SqlVo();
				sv.setColumnComment(rs.getString("column_comment"));
				sv.setColumnName(rs.getString("column_name"));
				
				list.add(sv);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	

}
