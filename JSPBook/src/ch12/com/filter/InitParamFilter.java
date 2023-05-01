package ch12.com.filter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
	private FilterConfig filterConfig=null;
	
	public void init(FilterConfig filterConfig) throws ServletException{
		System.out.println("Filter02 �ʱ�ȭ...");
		this.filterConfig=filterConfig;
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)throws IOException, ServletException
	{
		System.out.println("Filter02 ����...");
		String id=request.getParameter("id");
		String passwd=request.getParameter("passwd");
		
		String param1=filterConfig.getInitParameter("param1");
		String param2=filterConfig.getInitParameter("param2");
		
		String message;
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter witer=response.getWriter();
		
		if(id.equals(param1)&&passwd.equals(param2))
		{
			message="�α��μ���";
		}
		else
			message="�α��� ����";
		witer.println(message);
		
		filterChain.doFilter(request, response);
	}
	public void destroy()
	{
		System.out.println("Filter2 ����...");
	}

}
