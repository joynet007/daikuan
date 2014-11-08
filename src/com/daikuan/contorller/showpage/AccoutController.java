package com.daikuan.contorller.showpage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**   
 * @author: joynet007@163.com
 * @date 2014-11-3 上午9:43:17
 * @Description: TODO(用一句话描述该文件做什么) 
 */
@Controller
@RequestMapping("/showpage/account")
public class AccoutController {


	@RequestMapping(value="/accountcenter")
	public String accountCenter(){
		return "/showpage/account/accountcenter";
	}
	
	
}
