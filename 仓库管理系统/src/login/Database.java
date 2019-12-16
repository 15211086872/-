package login;

import java.beans.Statement;
import java.sql.*;


//public class Database {
//	public static Connection getConnection()
//	{
//		Connection con=null;
//	 	String CLASSFORNAME="com.microsoft.sqlserver.jdbc.SQLServerDriver";
//	    String SERVANDDB="jdbc:sqlserver://localhost:1433;DatabaseName=login";
//	    String USER="sa";
//	    String PWD="123456"; 
//	    try
//	    {
//	    	Class.forName(CLASSFORNAME);
//			con = DriverManager.getConnection(SERVANDDB,USER,PWD);
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		return con;
//	}
//}
public class Database {
	private static String driver = 
	"com.microsoft.sqlserver.jdbc.SQLServerDriver";// 数据库驱动字符串
private static String url = "jdbc:sqlserver://localhost:1433;DatabaseName=login";// 连接字符串
		private static String user = "sa"; // 数据库用户名
		private static String password = "123456"; // 用户密码
		//获取数据库连接对象。
		public  Connection getConnection() {
			Connection conn = null;// 数据连接对象
			// 获取连接并捕获异常
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();// 异常处理
			}
			try {
				conn = DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				e.printStackTrace();// 异常处理
			}
			return conn;// 返回连接对象
		}

public  void closeAll(Connection conn, Statement stmt, ResultSet rs) {
			if (rs != null) { // 若结果集对象不为空，则关闭
				try {
					rs.close();
				} catch (Exception e) {e.printStackTrace();				}
			}
			if (stmt != null) {  // 若Statement对象不为空，则关闭
				try {
					((Connection) stmt).close();
				} catch (Exception e) {e.printStackTrace();		}
			}
			if (conn != null) {  // 若数据库连接对象不为空，则关闭
				try {
					conn.close();
				} catch (Exception e) {	e.printStackTrace();	}
			}
		}
}
