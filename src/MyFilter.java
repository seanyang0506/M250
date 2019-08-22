

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.vo.User;

/**
 * Servlet Filter implementation class MyFilter
 */
@WebFilter("/*")
public class MyFilter implements Filter {

    /**
     * Default constructor. 
     */
    public MyFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		//因为有些方法只在HttpServletXxx中，所以要先进行强转
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)resp;
		//设置编码格式
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession hs=request.getSession();
		/**
		 * 测试用户是否是新打开浏览器进入项目，并检测用户是否设有cookie，如果有则直接获取cookie信息中的用户数据
		 * 也有可能是session已过期，如果有cookie则通过cookie刷新session，如果没有cookie则让用户重新进行登录
		 */
		if((User)hs.getAttribute("user_info")==null) {
			Cookie[] cookies=request.getCookies();
			//有可能用户未设置cookie或清除了cookie，所以要进行检测
			//也有可能是cookie中只有JSESSIONID,也存在cookie，所以要排除数组越界错误
			if(cookies!=null && !cookies[0].getName().equals("JSESSIONID")) {
				User user=new User();
				user.setUsername(cookies[0].getValue());
				String src=cookies[1].getValue();
				hs.setAttribute("user_info", user);	
				hs.setAttribute("photo_src", src);
				chain.doFilter(request, response);
			} 
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
