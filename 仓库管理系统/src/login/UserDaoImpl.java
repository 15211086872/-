package login;

import java.sql.*;
import login.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public  class UserDaoImpl implements UserDao{
	public boolean selectUser(User user) {
		boolean flag;
		Connection conn = null;
		PreparedStatement prst = null;
		ResultSet rs;
		String sql = "select * from login where username=?";
		Database dataBase = new Database();
		try {
			conn = dataBase.getConnection();
			prst = conn.prepareStatement(sql);
			prst.setString(1, user.getName());	
			rs = prst.executeQuery();// ִ��
			// �ж��û����Ƿ����
			System.out.print(user.getName());
			if (rs.next()) {// �ж������Ƿ���ȷ
				String realPass = rs.getString("password");
				System.out.print(realPass);
				if (user.getPass().equals(realPass)) {
					flag=true; 
				} else {// �������
					flag=false;
				}
			} else {// �û���������
				flag=false;	 
			}
		} catch (SQLException e) {
			e.printStackTrace();
			flag=false;
		}

		return flag;
	}
}

