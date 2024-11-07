package com.ict.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{
	// preHandle, postHandle, afterCompletion
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 결과가 true이면 controller,  false이면 특정 jsp로 이동
		
		// 로그인하면 세션에 로그인성공 했다는 정보를 담거나, 상숑자정보를 담자
		// 로그인 체크해서 만약에 로그인이 안된 상태이면  value에 false 젖아
		
		// 만약에 session이 삭제 상태라면 새로운 session을 생성해 준다.
		// 삭제가 안된 상태라면 사용하고 있는 그대로 전달해 준다.(기존session 호출)
		Object obj = request.getSession(true).getAttribute("loginchk");
		
		if(obj == null) { // 로그인 안된 상태
			// 자바스크립트 코드 작성
			String script = "<script>alert('로그인이 필요합니다.'); location.href='/sns_login';</script>";
			response.setContentType("text/html; charset=UTF-8");
			response.getWriter().write(script);
			return false;
		}
		
		return true;
	}
	
	/*
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
	*/

}
