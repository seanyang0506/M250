package user.service;

import java.sql.SQLException;
import user.vo.User;

public interface UserService {
	public User get(String username) throws SQLException;
	public boolean updatePassword(String newPassword,String username) throws SQLException;
	public boolean insert(User newUser) throws SQLException;
	public String getPhoto(String username) throws SQLException;
}
