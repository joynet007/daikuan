package com.daikuan.util.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


//import org.springframework.web.portlet.handler.HandlerInterceptorAdapter;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-8 下午6:08:12
 * @Description: TODO(如果客户没有登录则进不了系统) 
 */

public class SessionInterceptors extends HandlerInterceptorAdapter {
	
	private String path;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		
//		 String requestUrl = request.getRequestURI();
//		 //如果是登录就不拦截
//		 if (requestUrl.matches(".+login.*")) {
//			 
//			 return true;
//		 }else{
//			 User user=(User) request.getSession().getAttribute(SystemConfig.Session_key);
//			 if(user==null){
//				 request.getRequestDispatcher("/index.jsp").forward(request, response); 
//				 return false;
//			 }
//		 }

		
        return true;
    }
	
	@Override
    public void postHandle(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, ModelAndView mav) throws Exception {
    }

   @Override
    public void afterCompletion(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, Exception excptn) throws Exception {
    }

	public String getPath() {
		return path;
	}
	
	public void setPath(String path) {
		this.path = path;
	}

   

}
