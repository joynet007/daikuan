package com.daikuan.model;

import java.io.Serializable;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-1 上午11:14:56
 * @Description: dk_user 的vo对象
 */
public class User implements Serializable {
		private static final long serialVersionUID = 1L;

		private String userID;

		private long createTime;

		private String userName;

		private String userPassword;

		private String userStatus;

		private String userType;
		
		private String userEmail;
		
		private String userTel;
		
		private long lastLoginTime;//最后登录的时间
		
		private int loginCount; //登录次数

		public User() {
			// TODO Auto-generated constructor stub
		}

		public String getUserID() {
			return this.userID;
		}

		public void setUserID(String userID) {
			this.userID = userID;
		}

		public long getCreateTime() {
			return this.createTime;
		}

		public void setCreateTime(long createTime) {
			this.createTime = createTime;
		}

		public String getUserName() {
			return this.userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getUserPassword() {
			return this.userPassword;
		}

		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}

		public String getUserStatus() {
			return this.userStatus;
		}

		public void setUserStatus(String userStatus) {
			this.userStatus = userStatus;
		}

		public String getUserType() {
			return this.userType;
		}

		public void setUserType(String userType) {
			this.userType = userType;
		}

		public String getUserEmail() {
			return userEmail;
		}

		public void setUserEmail(String userEmail) {
			this.userEmail = userEmail;
		}

		public String getUserTel() {
			return userTel;
		}

		public void setUserTel(String userTel) {
			this.userTel = userTel;
		}

		public long getLastLoginTime() {
			return lastLoginTime;
		}

		public void setLastLoginTime(long lastLoginTime) {
			this.lastLoginTime = lastLoginTime;
		}

		public int getLoginCount() {
			return loginCount;
		}

		public void setLoginCount(int loginCount) {
			this.loginCount = loginCount;
		}
		
		
		

}
