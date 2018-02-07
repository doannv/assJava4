package model;

public class Danhmuc {
	String maloai;
	String tenloai;
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public Danhmuc(String maloai, String tenloai) {
		
		this.maloai = maloai;
		this.tenloai = tenloai;
	}
	public Danhmuc() {
		
	}
	
	

}
