package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import connetion.DBconnect;
import model.Danhmuc;
import model.Sanpham;

public class SanphamDAO {
	public SanphamDAO(){
		
	}
	public ArrayList<Sanpham> getListSanpham(){
		ResultSet rs=null;
		ArrayList<Sanpham> lst = new ArrayList<>();
		Connection con=DBconnect.getConnection();
		
		try {
			PreparedStatement pr=con.prepareStatement("select * from sanpham");
			rs=pr.executeQuery();
			while(rs.next()) {
				Sanpham sp = new Sanpham();
				sp.setMasp(rs.getString("MaSanPham"));
				Danhmuc dm = new Danhmuc(rs.getString("MaLoai"),"");
				sp.setMa(dm);
				sp.setTensp(rs.getString("TenSanPham"));
				sp.setAnh(rs.getString("Anh"));
				sp.setDongia(rs.getFloat("Dongia"));
				sp.setSoluong(rs.getInt("SoLuong"));
				sp.setChitiet(rs.getString("ChiTiet"));
				sp.setGhichu(rs.getString("GhiChu"));
				lst.add(sp);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lst;
	}
	
	public ArrayList<Sanpham> getPage(ArrayList<Sanpham> lt, int batdau,int ketthuc){
		ArrayList<Sanpham> lst = new ArrayList<>();
		for(int i=batdau;i<ketthuc;i++) {
			lst.add(lt.get(i));
		}
		return lst;
	}
	public Sanpham getChitietSanPham(String ma) {
		ResultSet rs=null;
		Connection con=DBconnect.getConnection();
		Sanpham sp = new Sanpham();
		try {
			PreparedStatement pr=con.prepareStatement("select * from sanpham where MaSanPham='"+ma+"'");
			rs=pr.executeQuery();
			
			while(rs.next()) {
				
				sp.setMasp(rs.getString("MaSanPham"));
				Danhmuc dm = new Danhmuc(rs.getString("MaLoai"),"");
				sp.setMa(dm);
				sp.setTensp(rs.getString("TenSanPham"));
				sp.setAnh(rs.getString("Anh"));
				sp.setDongia(rs.getFloat("Dongia"));
				sp.setSoluong(rs.getInt("SoLuong"));
				sp.setChitiet(rs.getString("ChiTiet"));
				sp.setGhichu(rs.getString("GhiChu"));
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sp;
	}
	public ArrayList<Sanpham> getSanphamtheodanhmuc(String ma) {
		ResultSet rs=null;
		Connection con=DBconnect.getConnection();
		ArrayList<Sanpham> list = new ArrayList<>();
		Sanpham sp = new Sanpham();
		try {
			PreparedStatement pr=con.prepareStatement("select * from sanpham where MaLoai='"+ma+"'");
			rs=pr.executeQuery();
			
			while(rs.next()) {
				
				sp.setMasp(rs.getString("MaSanPham"));
				Danhmuc dm = new Danhmuc(rs.getString("MaLoai"),"");
				sp.setMa(dm);
				sp.setTensp(rs.getString("TenSanPham"));
				sp.setAnh(rs.getString("Anh"));
				sp.setDongia(rs.getFloat("Dongia"));
				sp.setSoluong(rs.getInt("SoLuong"));
				sp.setChitiet(rs.getString("ChiTiet"));
				sp.setGhichu(rs.getString("GhiChu"));
				list.add(sp);
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}	 

	
	


