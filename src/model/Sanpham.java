package model;

public class Sanpham {
	String masp;
	Danhmuc ma;
	String tensp;
	String anh;
	float dongia;
	int soluong;
	String chitiet;
	String ghichu;
	
	public Sanpham() {
	
	}

	

	public String getMasp() {
		return masp;
	}

	public void setMasp(String masp) {
		this.masp = masp;
	}

	

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public float getDongia() {
		return dongia;
	}

	public void setDongia(float dongia) {
		this.dongia = dongia;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getChitiet() {
		return chitiet;
	}

	public void setChitiet(String chitiet) {
		this.chitiet = chitiet;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public Sanpham(String masp, Danhmuc ma, String tensp, String anh, float dongia, int soluong, String chitiet,
			String ghichu) {
		super();
		this.masp = masp;
		this.ma = ma;
		this.tensp = tensp;
		this.anh = anh;
		this.dongia = dongia;
		this.soluong = soluong;
		this.chitiet = chitiet;
		this.ghichu = ghichu;
	}

	public Danhmuc getMa() {
		return ma;
	}

	public void setMa(Danhmuc ma) {
		this.ma = ma;
	}
	
	
	
	
	
	
}
