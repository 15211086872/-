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
	"com.microsoft.sqlserver.jdbc.SQLServerDriver";// ���ݿ������ַ���
private static String url = "jdbc:sqlserver://localhost:1433;DatabaseName=login";// �����ַ���
		private static String user = "sa"; // ���ݿ��û���
		private static String password = "123456"; // �û�����
		//��ȡ���ݿ����Ӷ���
		public  Connection getConnection() {
			Connection conn = null;// �������Ӷ���
			// ��ȡ���Ӳ������쳣
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();// �쳣����
			}
			try {
				conn = DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				e.printStackTrace();// �쳣����
			}
			return conn;// �������Ӷ���
		}

public  void closeAll(Connection conn, Statement stmt, ResultSet rs) {
			if (rs != null) { // �����������Ϊ�գ���ر�
				try {
					rs.close();
				} catch (Exception e) {e.printStackTrace();				}
			}
			if (stmt != null) {  // ��Statement����Ϊ�գ���ر�
				try {
					((Connection) stmt).close();
				} catch (Exception e) {e.printStackTrace();		}
			}
			if (conn != null) {  // �����ݿ����Ӷ���Ϊ�գ���ر�
				try {
					conn.close();
				} catch (Exception e) {	e.printStackTrace();	}
			}
		}
}
