package model;

public class User {
	String user;
	String pass;
	String hoten;
	String gioitinh;
	String diachi;
	int rol;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public int getRol() {
		return rol;
	}
	public void setRol(int rol) {
		this.rol = rol;
	}
	public User(String user, String pass, String hoten, String gioitinh, String diachi, int rol) {
		super();
		this.user = user;
		this.pass = pass;
		this.hoten = hoten;
		this.gioitinh = gioitinh;
		this.diachi = diachi;
		this.rol = rol;
	}
	public User() {
		
	}
	
	
	

}
