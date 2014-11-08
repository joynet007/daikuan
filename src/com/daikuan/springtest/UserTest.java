package com.daikuan.springtest;


public class UserTest {
	private String name;
	private String sex;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
    @SuppressWarnings("unused")
	private void init(){
    	System.out.println("---系统正在启动----");
    }
	
}
