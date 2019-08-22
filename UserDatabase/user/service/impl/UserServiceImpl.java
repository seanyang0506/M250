package user.service.impl;

import java.sql.SQLException;

import user.dao.UserDAO;
import user.dbc.DatabaseConnection;
import user.factory.DAOFactory;
import user.service.UserService;
import user.vo.User;

public class UserServiceImpl implements UserService{
	private DatabaseConnection dbcConn=new DatabaseConnection();

	@Override
	public User get(String username) throws SQLException {
		UserDAO dao=DAOFactory.getUserDAOInstance(dbcConn.getConnection());
		User user=dao.findByUsername(username);
		return user;
	}
	@Override
	public boolean updatePassword(String newPassword, String username) throws SQLException {
		UserDAO dao=DAOFactory.getUserDAOInstance(dbcConn.getConnection());
		return dao.updatePassword(newPassword, username);
	}
	@Override
	public boolean insert(User newUser) throws SQLException {
		UserDAO dao=DAOFactory.getUserDAOInstance(dbcConn.getConnection());
		return dao.doInsert(newUser);
	}
	@Override
	public String getPhoto(String username) throws SQLException {
		UserDAO dao=DAOFactory.getUserDAOInstance(dbcConn.getConnection());
		return dao.findPhoto(username);
	}
	
}
