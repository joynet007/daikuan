package com.daikuan.util.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.daikuan.util.system.SystemConfig;

/**   
 * @author: joynet007@163.com
 * @date 2014-10-18 上午9:57:17
 * @Description: TODO(将页面上的请求路径统一过滤) 
 */
public class ProjectInterceptors  extends HandlerInterceptorAdapter {
	
	private String showpagePath;

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		
		
        return true;
    }
	
	/**
	 * 后处理回调方法，实现处理器的后处理（但在渲染视图之前）
	 */
	@Override
    public void postHandle(HttpServletRequest request, HttpServletResponse hsr1, Object o, ModelAndView mav) throws Exception {
		request.setAttribute("showpagePath",SystemConfig.getSysPath(request, "showpage"));
		request.setAttribute("contextPath",SystemConfig.getSysPath(request, null));
    }

   @Override
    public void afterCompletion(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, Exception excptn) throws Exception {
    }

	public String getShowpagePath() {
		return showpagePath;
	}
	
	public void setShowpagePath(String showpagePath) {
		this.showpagePath = showpagePath;
	}

   
   
   

}
