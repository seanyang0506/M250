package user.dbc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private static final String DBDRIVER="com.mysql.jdbc.Driver";
	private static final String DBURL="jdbc:mysql://127.0.0.1:3306/userinfo?characterEncoding=UTF-8";
	private static final String USER="root";
	private static final String PASSWORD="admin";
	private Connection conn=null;
	public DatabaseConnection() {
		try {
			Class.forName(DBDRIVER);
			this.conn=DriverManager.getConnection(DBURL, USER, PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 返回数据库连接
	 * @return Connection
	 */
	public Connection getConnection() {
		return this.conn;
	}
	/**
	 * 进行数据库关闭
	 */
	public void close() {
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

