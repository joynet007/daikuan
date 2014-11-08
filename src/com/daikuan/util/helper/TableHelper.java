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
 * @date 2014-10-16 ����6:40:57
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */
public class TableHelper {

	/** 
	 * @Title: main 
	 * @Description: TODO(������һ�仰�����������������) 
	 * @param @param args    �趨�ļ� 
	 * @return void    ��������    
	 * @throws 
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	/**
	 * ����table_name ���̲�ѯ����ֶ����ƺ�ע��
	 */
	private static  String sql=" select  column_name, column_comment  from Information_schema.columns  where table_Name = ? ";
	
	/**
	 * 
	* @Title: getMap 
	* @Description: TODO(����table_name ���̲�ѯ����ֶ����ƺ�ע�ͣ���װ�ɶ������list ) 
	* @param @param con
	* @param @return    �趨�ļ� 
	* @return List<SqlVo>    ��������    
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
			
			pstmt.setString(1, tableName);//��������
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
