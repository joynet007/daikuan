package com.daikuan.util.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


//import org.springframework.web.portlet.handler.HandlerInterceptorAdapter;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-8 ����6:08:12
 * @Description: TODO(����ͻ�û�е�¼�������ϵͳ) 
 */

public class SessionInterceptors extends HandlerInterceptorAdapter {
	
	private String path;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		
//		 String requestUrl = request.getRequestURI();
//		 //����ǵ�¼�Ͳ�����
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
