package user.dao;

import java.sql.SQLException;

import user.vo.User;

public interface UserDAO {

	/**
	 * 根据name信息返回User
	 * @param uname
	 * @return User
	 */
	public User findByUsername(String username) throws SQLException;
	/**
	 * 修改用户密码
	 * @param uname
	 * @return 如果修改成功返回true,否则返回false
	 * @throws SQLException
	 */
	public boolean updatePassword(String newPassword,String username) throws SQLException;
	/**
	 * 
	 * @param newUser 需要插入的新用户信息
	 * @return 如果插入成功返回true，否则返回false
	 * @throws SQLException
	 */
	public boolean doInsert(User newUser) throws SQLException;
	/**
	 * 通过用户名来查询用户的头像保存路径
	 * @param username 需要查询头像的用户名
	 * @return 用户的头像保存路径，如果没有头像返回null
	 * @throws SQLException
	 */
	public String findPhoto(String username) throws SQLException;
}
