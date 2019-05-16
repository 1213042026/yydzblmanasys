package org.dzbl.interceptor;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dzbl.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * 拦截器
 * 检测是否登录
 * @author chenxin
 *
 */

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Object user = session.getAttribute("loginUser");
		if(null == user){
//			if (request.getServletPath().indexOf("page/index") > -1 || request.getServletPath().indexOf("view/news") > -1 || request.getServletPath().indexOf("view/leavemessage") > -1) {
//				return true;
//			}
			String project = request.getContextPath();
			response.sendRedirect(project+"/page/loginh");
			return false;
		}
		return true;
	}

}
