package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DanhmucDAO;

@WebServlet("/QLDanhMuc")
public class QLdanhmuc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DanhmucDAO dmDAO = new DanhmucDAO();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String rundelete = request.getParameter("rundelete");
		String a1 = "";
		if (request.getParameter("MaLoai") != null) {
			a1 = request.getParameter("MaLoai");
		}
		String url = "";
		try {
			switch (rundelete) {
			case "delete":
				dmDAO.deleteDanhmuc_ID(a1);
				url = "qlydanhmuc.jsp";
				break;
			}
		} catch (Exception e) {
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	// protected void doPost(HttpServletRequest request, HttpServletResponse
	// response)
	// throws ServletException, IOException {
	//
	// request.setCharacterEncoding("utf-8");
	// response.setCharacterEncoding("utf-8");
	// String command = request.getParameter("command");
	// String tenLoai = request.getParameter("tenLoai");
	// String maloai=request.getParameter("MaLoai");
	// String url = "", error = "";
	// if (tenLoai.equals("")) {
	// error = "Vui lòng nhập tên loại!";
	// request.setAttribute("error", error);
	// }
	//
	// try {
	// if (error.length() == 0) {
	// switch (command) {
	// case "insert":
	// danhmucDAO.insertDanhmuc(new Danhmuc(maloai, tenLoai));
	// url = "/admin/qlydanhmuc.jsp";
	// break;
	// case "update":
	// danhmucDAO.updateDanhmuc(
	// new Danhmuc((request.getParameter("MaLoai")), tenLoai));
	// url = "/admin/qlydanhmuc.jsp";
	// break;
	// }
	// } else {
	// url = "/admin/themloaiSP.jsp";
	// }
	// } catch (Exception e) {
	// }
	// RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	// rd.forward(request, response);
	// }

}
