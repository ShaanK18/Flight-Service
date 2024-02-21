package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class MyFilter
 */
//@WebFilter("/MyFilter")
public class MyFilter extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public MyFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() 
	{
		System.out.println("Filter Destroyed");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException 
	{
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response; 
		PrintWriter out = response.getWriter();
		String un = req.getParameter("t1");
		String cn = req.getParameter("t2");
		String regexForUserName= "[A-Za-z//s]{3,}";
		String creditCriteria = "[1-8]{4}[-]{1}[2-8]{4}[-]{1}[0-9]{4}[-]{1}[6-9]{2}";
		
		if (un.matches(regexForUserName)) 
		{
			out.println("<h2><font color='green'>"+" "+"Valid User"+"</font></h2>");
		}
		else 
		{
			out.println("<h2><font color='green'>"+" "+"Invalid User"+"</font></h2>");
		}
		//		----------------------------------
		if (cn.matches(creditCriteria)) 
		{
			out.println("<h2><font color='green'>"+" "+"Valid Credit Card"+"</font></h2>");
		}
		else 
		{
			out.println("<h2><font color='green'>"+" "+"Invalid Credit Card"+"</font></h2>");
		}
		
		out.println("Date: "+new Date());
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException 
	{
		System.out.println("Filter Initialized");
	}

}
