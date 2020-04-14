package common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;

// @WebFilter("/admin/*.do") 어드민으로 들어오는 경우
//@WebFilter({"*.do","*.jsp"})
@WebServlet("*.do")
public class LoginCheckFilter implements Filter {

    public LoginCheckFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		System.out.println("login check pre");
		String id = request.getParameter("id");
		if(id != null && id.contentEquals("admin")) {
			//request.getRequestDispatcher("/EmpList.do").forward();
		}
		chain.doFilter(request, response);  // 서블릿 호출
		System.out.println("login check post");
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
