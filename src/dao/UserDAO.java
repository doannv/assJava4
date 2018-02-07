package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connetion.DBconnect;

public class UserDAO {
	public boolean CheckLogin(String user, String pass, int rol) {
		Connection con=DBconnect.getConnection();
		try {
			PreparedStatement pr =con.prepareStatement("select * from taikhoan where username=? and password=? and rol=?");
			pr.setString(1, user);
			pr.setString(2, pass);
			pr.setInt(6, rol);
			ResultSet rs=pr.executeQuery();
			boolean result=rs.next();
				rs.close();
				pr.close();
				con.close();
				if(result) {
					return true;
				}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
