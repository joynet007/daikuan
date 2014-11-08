package com.daikuan.util;

import java.util.Calendar;


public class TimeUtil {
	
	
	/**
	 * ��long��ת��Ϊ2013-8-28 20:25:18
	 * @param time
	 * @return
	 */
	public static String getDisplyTime(long time){
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(time);
		StringBuffer sb = new StringBuffer();
		sb.append(c.get(Calendar.YEAR)+"-"+(c.get(Calendar.MONTH)+1)+"-"+c.get(Calendar.DATE)+" ");
		sb.append(c.get(Calendar.HOUR_OF_DAY)+":"+c.get(Calendar.MINUTE)+":"+c.get(Calendar.SECOND));
		
		return sb.toString();
	}
	
	/**
	 * ����ϵͳ�ĵ�ǰʱ�� long ����
	 * @return
	 */
	public static long getCurrentTime(){
		return System.currentTimeMillis();
	}
	
	
	
	
	public static void main(String args[]){
		System.out.println("---");
		
//		TimeUtil tu = new TimeUtil();
		
//		System.out.println(tu.getDisplyTime(System.currentTimeMillis()));
	}
	
}

