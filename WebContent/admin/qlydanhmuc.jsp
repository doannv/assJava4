<%@page import="dao.DanhmucDAO"%>
<%@page import="model.Danhmuc"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Quản Lý Danh Mục</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%
		DanhmucDAO dmDAO1 = new DanhmucDAO();
		ArrayList<Danhmuc> listDanhmuc = dmDAO1.getListDanhmuc();
	%>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<jsp:include page="_top.jsp"></jsp:include>
			<jsp:include page="_menu.jsp"></jsp:include>
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-12">
							<h1 class="page-header">
								Quản Lý <small>Danh Mục</small>
							</h1>
							<ol class="breadcrumb">
								<li class="active"><i class="fa fa-dashboard"></i> <a
									href="themloaiSP.jsp">Thêm Loại Sản Phẩm</a></li>
							</ol>
						</div>
					</div>
				</div>
				<div class="row">
					<h2>Danh Sách Loại Sản Phẩm</h2>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>STT</th>
									<th>Mã Loại Sản Phẩm</th>
									<th>Tên Loại Sản Phẩm</th>
									<th>Edit</th>
									<th>Remove</th>
								</tr>
							</thead>
							<%
								int count = 0;
								for (Danhmuc dm : listDanhmuc) {
									count++;
							%>
							<tbody>
								<tr>
									<td><%=count%></td>
									<td><%=dm.getMaloai()%></td>
									<td><%=dm.getTenloai()%></td>
									<td><a href="">Edit</a></td>
									<td><a href="controller/QLdanhmuc?rundelete=delete&MaLoai=<%=dm.getMaloai()%>">Delete</a></td>
									
								</tr>
							</tbody>
							<%
								}
							%>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.0.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>
