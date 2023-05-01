package ch12.com.filter;
import java.io.*;
import javax.servlet.*;

public class AuthenFilter implements Filter {
	
	public void init(FilterConfig filterConfig) throws ServletException{
		System.out.println("Filter01 초기화...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException
	{
		System.out.println("Filter01 수행...");
		String name=request.getParameter("name");
		
		if(name==null||name.equals(""))
		{
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer= response.getWriter();
			String message="입력된 값은 null입니다";
			writer.println(message);
			return;
		}
		filterChain.doFilter(request, response);
	}
	
	public void destory()
	{
		System.out.println("Filter01 해제..");
	}
		
}
