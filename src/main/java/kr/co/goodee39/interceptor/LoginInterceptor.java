package kr.co.goodee39.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("account") == null) {
			session.invalidate(); //세션 초기화
			response.sendRedirect(request.getContextPath()); // ->  /Ex30BBS/  // HomeController에 있는 "/" 경로 태우겠다는 뜻
			// home페이지 아니고 원하는 페이지로 가고싶으면 request.getContextPath()+path로 주면 되
			// request.getcontexpat()이게 없으면 8080/까지만 간다는거

			return false;
		}
		
		return true;
	}
}
