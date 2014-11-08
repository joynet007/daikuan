package com.daikuan.contorller.manager;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.daikuan.model.User;
import com.daikuan.service.UserService;
import com.daikuan.util.log.LogManager;
import com.daikuan.util.system.SystemConfig;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-1 下午4:49:37
 * @Description: TODO(用一句话描述该文件做什么) 
 */

@Controller
@RequestMapping("/manager")
public class ManagerController {

//	@Resource
	@Autowired
	UserService userService;
	
	
	
//	@RequestMapping(method=RequestMethod.GET,value="/edit/{typeid}")
//	public ModelAndView edit(@PathVariable("typeid") String typeid , Model model){
//		AuOrgType aot=auOrgTypeRepository.findOne(typeid);
//		
//		model.addAttribute("typeid", aot.getTypeId());
//		model.addAttribute("name", aot.getName());
//		model.addAttribute("mstatus", aot.getStatus());
//		/**
//		 * 这个modelAndView里面只填写 不包含后缀的路径
//		 */
//		return new ModelAndView("/au/auorgtype/auorgtype-add");
//		
//	}
	
	@RequestMapping(value="/login")
	public String login(@RequestParam(required = false) String userName , @RequestParam(required = false) String userPassword ,Model model,HttpSession session){
		
		try {
			if(null == userName || null == userPassword){
				model.addAttribute(SystemConfig.Page_Info, "请填写用户名称和密码！");
				return "/manager/login";
			}
			
			User user =  userService.getUserByUserName(userName);
			if(null == user){
				model.addAttribute(SystemConfig.Page_Info, "登录失败，登录用户名错误！");
				return "/manager/login";
			}
			
			int count = user.getLoginCount();
			if(!userPassword.equals(user.getUserPassword()))
			{
				model.addAttribute(SystemConfig.Page_Info, "登录失败，登录用户密码错误！,您还有"+(5-count)+"次机会！");
				user.setLoginCount(user.getLoginCount()+1);
				userService.updateUserLoginCount(user);
				
				return "/manager/login";
			}
			
			if(!SystemConfig.UserType_System.equals(user.getUserType()))
			{
				model.addAttribute(SystemConfig.Page_Info, "登录失败，用户类型错误！,您还有"+(5-count)+"次机会！");
				user.setLoginCount(user.getLoginCount()+1);
				userService.updateUserLoginCount(user);
				return "/manager/login";
			}
			/**
			 * 登录成功后自动设置登录次数为1
			 */
			user.setLoginCount(1);
			userService.updateUserLoginCount(user);
			session.setAttribute(SystemConfig.Session_key, user);
			return "/manager/index";
			
		} catch (Exception e) {
			model.addAttribute(SystemConfig.Page_Info, "登录失败，请重新登录");
			return "/manager/login";
		}
		
	}
	
	@RequestMapping(value="/loginOut",method=RequestMethod.GET)
	public String loginOut(HttpSession session){
		try {
			if(null != null ){
				session.invalidate();
			}	
		} catch (Exception e) {
			LogManager.log_exp.debug(e);
		}
		
		return "index";
	}
	
}
