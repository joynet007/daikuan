package com.daikuan.contorller.showpage;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.daikuan.model.DaiKuan;
import com.daikuan.service.DaiKuanService;
import com.daikuan.util.IDmanager;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-15 ����11:13:12
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */

@Controller
@RequestMapping("/showpage/daikuan")
public class DaiKuanController {

	
	@Resource
	DaiKuanService daikuanService;
	
	
	@RequestMapping("/createDaikuan")
	public String createDaiKuan(){
		
		System.out.println("---chuangjina---");
		DaiKuan dk = new DaiKuan();
		dk.setDaikuanID(IDmanager.createID());
		dk.setAmount(100000);
		dk.setCreateTime(System.currentTimeMillis());
		dk.setDaikuanTitle("����綯������");
		dk.setDaikuanType("��н����");
		dk.setDaikuanUserID("1001");
		dk.setDaikuanYongTu("������");
		dk.setDaikuanZhuTi("����");
		dk.setHuanKuanType("ÿ�»�Ϣ�����ڻ���");
		dk.setQixian(90);//����
		dk.setShouYilv(20);//������
		dk.setYouxiaoqi(10);//��Ч��
		
		daikuanService.createDaiKuan(dk);
		
		return "index";
	}
}
