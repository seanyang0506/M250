

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.factory.ServiceFactory;
import user.service.UserService;

/**
 * Servlet implementation class photoServlet
 */
@WebServlet("/photo")
public class photoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service=ServiceFactory.getUserServiceInstance();
		String username=request.getParameter("username");
		try {
			String src=service.getPhoto(username);
			if(src!=null)
				response.getWriter().write(src);
			else
				response.getWriter().write("");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
