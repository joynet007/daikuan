package com.daikuan.contorller.showpage;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.daikuan.model.DaiKuan;
import com.daikuan.model.User;
import com.daikuan.service.ShowPageService;
import com.daikuan.service.UserService;
import com.daikuan.util.IDmanager;
import com.daikuan.util.StringUtil;
import com.daikuan.util.system.SystemConfig;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-16 下午7:35:30
 * @Description: TODO(用一句话描述该文件做什么) 
 */
@Controller
@RequestMapping("/showpage")
public class ShowPageController {

	@Resource
	ShowPageService showpageService;
	
	@Resource
	public UserService userService;
	
	@RequestMapping("/index")
	public String index(Model model){
		List<DaiKuan> list = showpageService.findDaikuan();
		
		model.addAttribute("daikuans", list);
		return "/showpage/index";
	}
	
	/**
	 * 注册用户
	* @Title: registeruser 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @return    设定文件 
	* @return String    返回类型    
	* @throws
	 */
	@RequestMapping("/registeruser")
	public String registeruser(		
		@RequestParam (required = false) String userName , 
		@RequestParam (required = false) String userPassword ,
		@RequestParam (required = false) String userEmail ,
//		@RequestParam String userType ,
//		@RequestParam String userTel ,
		Model model,HttpSession session ){
	
		try {
			if(StringUtil.isEmpty(userName) || StringUtil.isEmpty(userPassword) || StringUtil.isEmpty(userEmail)){
				
				model.addAttribute("userEmail",userEmail);
				model.addAttribute("userName",userName);
				
				return "/showpage/register"; 
			}
			
			User user = userService.getUserByUserEmail(userEmail);
			if(user != null){
				
				model.addAttribute("userEmailInfo", "用户邮箱已经注册！");
				
				model.addAttribute("userEmail",userEmail);
				model.addAttribute("userName",userName);
				
				return "/showpage/register"; 
			}
			
			user = userService.getUserByUserName(userName);
			if(user != null  ){
				model.addAttribute("userNameInfo", "用户名称已注册！");
				
				model.addAttribute("userEmail",userEmail);
				model.addAttribute("userName",userName);
				
				return "/showpage/register"; 
			}else{
				user = new User();
				
				user.setUserID(IDmanager.createID());
				user.setCreateTime(System.currentTimeMillis());
				user.setLastLoginTime(System.currentTimeMillis());
				user.setUserName(userName);
				user.setUserPassword(userPassword);
				user.setUserStatus(SystemConfig.UserStatus_Start);
				user.setUserType(SystemConfig.UserType_Normal);
				user.setUserTel("");
				user.setUserEmail(userEmail);
				userService.createUser(user);
				
				session.setAttribute(SystemConfig.Session_key, user);
				
				return "/showpage/registersuccess";
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute(SystemConfig.Page_Info, "用户注册失败！");
			return "/showpage/register"; 
		}
	
	}
	
	@RequestMapping(value="/login")
	public String login(){
		return "/showpage/login";
	}
	
	@RequestMapping(value="/dologin")
	public String dologin(@RequestParam(required = false) String userEmail , @RequestParam(required = false) String userPassword ,Model model,HttpSession session){
		
		try {
			
			if(StringUtil.isEmpty(userEmail) || StringUtil.isEmpty(userPassword))
			{
				model.addAttribute(SystemConfig.Page_Info, "请填写用户邮箱和密码！");
				return "/showpage/login";
			}
			
			User user =  userService.getUserByUserEmail(userEmail);
			
			if(null == user ){
				model.addAttribute(SystemConfig.Page_Info, "登录失败，登录用邮箱错误！");
				model.addAttribute("userEmail",userEmail);
				model.addAttribute("userPassword",userPassword);
				
				return "/showpage/login";
			}
			
			int count = user.getLoginCount();
			if(!userPassword.equals(user.getUserPassword()))
			{
				model.addAttribute(SystemConfig.Page_Info, "登录失败，登录用户密码错误！,您还有"+(5-count)+"次机会！");
				user.setLoginCount(user.getLoginCount()+1);
				userService.updateUserLoginCount(user);
				
				return "/showpage/login";
			}
			
			/**
			 * 登录成功后自动设置登录次数为1
			 */
			user.setLoginCount(1);
			userService.updateUserLoginCount(user);
			session.setAttribute(SystemConfig.Session_key, user);
			return "/showpage/account/accountcenter";
			
		} catch (Exception e) {
			model.addAttribute(SystemConfig.Page_Info, "登录失败，请重新登录");
			return "/showpage/login";
		}
		
	}
	
	@RequestMapping(value="/loginout")
	public String dologin(HttpSession session){
		try {
			session.removeAttribute(SystemConfig.Session_key);
			return "/rest/showpage/index";
			
		} catch (Exception e) {
			return "/showpage/login";
		}
		
	}
	
}

