package com.daikuan.model;

import java.io.Serializable;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-15 下午11:14:06
 * @Description: TODO(贷款主表，主要的对象) 
 */
public class DaiKuan  implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String daikuanID;//贷款编码
	private String daikuanTitle;//贷款标题
	private String daikuanType;//贷款类型
	private String daikuanYongTu;//贷款用途
	private String daikuanZhuTi;//贷款主题（公司/个人）
	private long amount;//贷款金额
	private int qixian;//贷款期限
	private int shouYilv;//收益率
	private int youxiaoqi;//有效期（1-20天）
	private String huanKuanType;//还款类型
	private String daikuanUserID;
	private long createTime;//创建时间
	
	public String getDaikuanID() {
		return daikuanID;
	}
	public void setDaikuanID(String daikuanID) {
		this.daikuanID = daikuanID;
	}
	public String getDaikuanTitle() {
		return daikuanTitle;
	}
	public void setDaikuanTitle(String daikuanTitle) {
		this.daikuanTitle = daikuanTitle;
	}
	public String getDaikuanType() {
		return daikuanType;
	}
	public void setDaikuanType(String daikuanType) {
		this.daikuanType = daikuanType;
	}
	public String getDaikuanYongTu() {
		return daikuanYongTu;
	}
	public void setDaikuanYongTu(String daikuanYongTu) {
		this.daikuanYongTu = daikuanYongTu;
	}
	public String getDaikuanZhuTi() {
		return daikuanZhuTi;
	}
	public void setDaikuanZhuTi(String daikuanZhuTi) {
		this.daikuanZhuTi = daikuanZhuTi;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public int getQixian() {
		return qixian;
	}
	public void setQixian(int qixian) {
		this.qixian = qixian;
	}
	public int getShouYilv() {
		return shouYilv;
	}
	public void setShouYilv(int shouYilv) {
		this.shouYilv = shouYilv;
	}
	public int getYouxiaoqi() {
		return youxiaoqi;
	}
	public void setYouxiaoqi(int youxiaoqi) {
		this.youxiaoqi = youxiaoqi;
	}
	public String getHuanKuanType() {
		return huanKuanType;
	}
	public void setHuanKuanType(String huanKuanType) {
		this.huanKuanType = huanKuanType;
	}
	public long getCreateTime() {
		return createTime;
	}
	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}
	public String getDaikuanUserID() {
		return daikuanUserID;
	}
	public void setDaikuanUserID(String daikuanUserID) {
		this.daikuanUserID = daikuanUserID;
	}
	
	

}
