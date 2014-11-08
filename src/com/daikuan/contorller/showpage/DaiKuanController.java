package com.daikuan.contorller.showpage;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.daikuan.model.DaiKuan;
import com.daikuan.service.DaiKuanService;
import com.daikuan.util.IDmanager;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-15 下午11:13:12
 * @Description: TODO(用一句话描述该文件做什么) 
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
		dk.setDaikuanTitle("购买电动车贷款");
		dk.setDaikuanType("工薪贷款");
		dk.setDaikuanUserID("1001");
		dk.setDaikuanYongTu("购买车辆");
		dk.setDaikuanZhuTi("个人");
		dk.setHuanKuanType("每月还息，到期还本");
		dk.setQixian(90);//期限
		dk.setShouYilv(20);//收益率
		dk.setYouxiaoqi(10);//有效期
		
		daikuanService.createDaiKuan(dk);
		
		return "index";
	}
}
