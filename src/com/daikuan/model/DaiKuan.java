package com.daikuan.model;

import java.io.Serializable;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-15 ����11:14:06
 * @Description: TODO(����������Ҫ�Ķ���) 
 */
public class DaiKuan  implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String daikuanID;//�������
	private String daikuanTitle;//�������
	private String daikuanType;//��������
	private String daikuanYongTu;//������;
	private String daikuanZhuTi;//�������⣨��˾/���ˣ�
	private long amount;//������
	private int qixian;//��������
	private int shouYilv;//������
	private int youxiaoqi;//��Ч�ڣ�1-20�죩
	private String huanKuanType;//��������
	private String daikuanUserID;
	private long createTime;//����ʱ��
	
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
