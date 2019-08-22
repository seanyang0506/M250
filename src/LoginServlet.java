

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.factory.ServiceFactory;
import user.service.UserService;
import user.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service=ServiceFactory.getUserServiceInstance();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String cookieFlag=request.getParameter("checkbox");		
		try {
			User user=service.get(username);
			String src=service.getPhoto(username);
			if(user==null) {
				request.setAttribute("error_info", "用户名不存在！");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}else {
				if(user.getPassword().equals(password)) {
					if("on".equals(cookieFlag)) {
						Cookie name=new Cookie("username",username);
						//5天过期时间
						name.setMaxAge(5*24*60*60);
						response.addCookie(name);
						Cookie photo_src=new Cookie("photo_src",src);
						photo_src.setMaxAge(5*24*60*60);
						response.addCookie(photo_src);
					}
					HttpSession hs=request.getSession();
					//将用户信息捆绑在session上，方便其他页面进行访问					
					hs.setAttribute("user_info", user);
					hs.setAttribute("photo_src", src);
					response.sendRedirect("/M250/index.jsp");
				}		
				else {
					request.setAttribute("error_info", "您输入的密码有误！");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}	
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
