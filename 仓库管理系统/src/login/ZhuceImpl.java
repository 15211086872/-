package login;

import java.beans.Statement;
import java.sql.*;
import login.User;
public  class ZhuceImpl {
	
		private static String driver = 
		"com.microsoft.sqlserver.jdbc.SQLServerDriver";// ���ݿ������ַ���
	private static String url = "jdbc:sqlserver://localhost:1433;DatabaseName=login";// �����ַ���
			private static String user = "sa"; // ���ݿ��û���
			private static String password = "123456"; // �û�����
			//��ȡ���ݿ����Ӷ���
			PreparedStatement prst2 = null;
			String sql2 = "insert into login values(?,?)" ;
			ResultSet rs2;
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
					prst2 = conn.prepareStatement(sql2);
					User user=new User();
					prst2.setString(1, user.getName1());
					prst2.setString(2, user.getPass1());
					rs2 = prst2.executeQuery();// ִ��
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

	