

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.factory.ServiceFactory;
import user.service.UserService;
import user.vo.User;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/username")
public class UsernameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service=ServiceFactory.getUserServiceInstance();
		String username = request.getParameter("username");
		try {
			User user = service.get(username);
			String failAnswer = "{\"info\":\"抱歉！用户名已被注册!\",\"status\":\"fail\"}";
			String successAnswer = "{\"info\":\"恭喜！您的用户名可以使用！\",\"status\":\"success\"}";
			if(user.getUsername()!= null) {
				response.getWriter().write(failAnswer);
			}else
				response.getWriter().write(successAnswer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
