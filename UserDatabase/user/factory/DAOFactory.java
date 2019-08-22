package user.factory;

import java.sql.Connection;

import user.dao.UserDAO;
import user.dao.impl.UserDAOImpl;

public class DAOFactory {
	public static UserDAO getUserDAOInstance(Connection conn) {
		return new UserDAOImpl(conn);
	}
}
