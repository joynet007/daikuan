package com.daikuan.contorller.showpage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**   
 * @author: joynet007@163.com
 * @date 2014-11-5 ����3:25:25
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
 */
@Controller
@RequestMapping("/showpage/touzi")
public class ToutziController {

	
	@RequestMapping(value="/mytouzi")
	public String mytouzi(){
		System.out.println("----myzouzi---");
		return "/showpage/touzi/touzi";
	}
	
}
