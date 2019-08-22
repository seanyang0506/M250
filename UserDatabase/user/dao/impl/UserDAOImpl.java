package user.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import user.dao.UserDAO;
import user.vo.User;

public class UserDAOImpl implements UserDAO{
	private Connection conn;
	private PreparedStatement prepare;
	public UserDAOImpl(Connection conn) {
		this.conn=conn;
	}
	
	
	@Override
	public User findByUsername(String username) throws SQLException {
		User user=new User();
		String operation="select username,password,email from user_detail where username=?";
		prepare=conn.prepareStatement(operation);
		prepare.setString(1, username);
		ResultSet rs=prepare.executeQuery();
		if(rs.next()) {
			user.setUsername(rs.getString(1));
			user.setPassword(rs.getString(2));
			user.setEmail(rs.getString(3));
		}
		return user;
	}
	
	@Override
	public boolean updatePassword(String newPassword,String username) throws SQLException {
		String operation="update user_detail set password=? where username=?";
		prepare=conn.prepareStatement(operation);
		prepare.setString(1, newPassword);
		prepare.setString(2, username);
		return prepare.executeUpdate()>0;
	}
	@Override
	public boolean doInsert(User newUser) throws SQLException {
		String operation="insert into user_detail values(?,?,?)";
		prepare=conn.prepareStatement(operation);
		prepare.setString(1, newUser.getUsername());
		prepare.setString(2, newUser.getPassword());
		prepare.setString(3, newUser.getEmail());
		return prepare.executeUpdate()>0;
	}
	
	@Override
	public String findPhoto(String username) throws SQLException {
		String operation="select photo from user_photo where username=?";
		prepare=conn.prepareStatement(operation);
		prepare.setString(1, username);
		ResultSet rs=prepare.executeQuery();
		if(rs.next())
			return rs.getString(1);
		return null;
	}
}
