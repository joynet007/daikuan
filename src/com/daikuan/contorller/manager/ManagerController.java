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
 * @date 2014-10-1 ����4:49:37
 * @Description: TODO(��һ�仰�������ļ���ʲô) 
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
//		 * ���modelAndView����ֻ��д ��������׺��·��
//		 */
//		return new ModelAndView("/au/auorgtype/auorgtype-add");
//		
//	}
	
	@RequestMapping(value="/login")
	public String login(@RequestParam(required = false) String userName , @RequestParam(required = false) String userPassword ,Model model,HttpSession session){
		
		try {
			if(null == userName || null == userPassword){
				model.addAttribute(SystemConfig.Page_Info, "����д�û����ƺ����룡");
				return "/manager/login";
			}
			
			User user =  userService.getUserByUserName(userName);
			if(null == user){
				model.addAttribute(SystemConfig.Page_Info, "��¼ʧ�ܣ���¼�û�������");
				return "/manager/login";
			}
			
			int count = user.getLoginCount();
			if(!userPassword.equals(user.getUserPassword()))
			{
				model.addAttribute(SystemConfig.Page_Info, "��¼ʧ�ܣ���¼�û��������,������"+(5-count)+"�λ��ᣡ");
				user.setLoginCount(user.getLoginCount()+1);
				userService.updateUserLoginCount(user);
				
				return "/manager/login";
			}
			
			if(!SystemConfig.UserType_System.equals(user.getUserType()))
			{
				model.addAttribute(SystemConfig.Page_Info, "��¼ʧ�ܣ��û����ʹ���,������"+(5-count)+"�λ��ᣡ");
				user.setLoginCount(user.getLoginCount()+1);
				userService.updateUserLoginCount(user);
				return "/manager/login";
			}
			/**
			 * ��¼�ɹ����Զ����õ�¼����Ϊ1
			 */
			user.setLoginCount(1);
			userService.updateUserLoginCount(user);
			session.setAttribute(SystemConfig.Session_key, user);
			return "/manager/index";
			
		} catch (Exception e) {
			model.addAttribute(SystemConfig.Page_Info, "��¼ʧ�ܣ������µ�¼");
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
