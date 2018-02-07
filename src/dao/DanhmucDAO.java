package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connetion.DBconnect;
import model.Danhmuc;

public class DanhmucDAO {

	public ArrayList<Danhmuc> getListDanhmuc() {
		ResultSet rs = null;
		ArrayList<Danhmuc> lst = new ArrayList<>();
		Connection con = DBconnect.getConnection();
		try {
			PreparedStatement pr = con.prepareStatement("select * from LoaiSanPham");
			rs = pr.executeQuery();
			while (rs.next()) {
				String ma = rs.getString(1);
				String loai = rs.getString(2);
				Danhmuc h = new Danhmuc(ma, loai);
				lst.add(h);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return lst;
	}

	// thêm mới dữ liệu
	public boolean insertDanhmuc(Danhmuc c) {
		Connection connection = DBconnect.getConnection();
		String sql = "INSERT INTO LoaiSanPham VALUES(?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, c.getMaloai());
			ps.setString(2, c.getTenloai());
			return ps.executeUpdate() == 1;
		} catch (SQLException ex) {
			Logger.getLogger(DanhmucDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

	// cập nhật dữ liệu
	public boolean updateDanhmuc(Danhmuc c) {
		Connection connection = DBconnect.getConnection();
		String sql = "UPDATE LoaiSanPham SET TenLoai = ? WHERE MaLoai = ?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, c.getTenloai());
			ps.setString(2, c.getMaloai());
			return ps.executeUpdate() == 1;
		} catch (SQLException ex) {
			Logger.getLogger(DanhmucDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

	// xóa dữ liệu
	public void deleteDanhmuc_ID(String maloai) {
		Connection connection = DBconnect.getConnection();
		String sql = "DELETE FROM LoaiSanPham WHERE MaLoai = '"+maloai+"' ";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, maloai);
			return;
		} catch (SQLException ex) {
			Logger.getLogger(DanhmucDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return;
	}
	 public static void main(String[] args) throws SQLException {
		
	    }
}
