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
<title>Quản Lý Tài Khoản</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="css/plugins/morris.css" rel="stylesheet">
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<jsp:include page="_top.jsp"></jsp:include>
			<jsp:include page="_menu.jsp"></jsp:include>			
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Quản Lý <small>Tài Khoản</small>
						</h1>
						<ol class="breadcrumb">
							<li class="active"><i class="fa fa-dashboard"></i> <a href="">Thêm Tài Khoản</a></li>
						</ol>
					</div>
				</div>
					<h2>Danh Sách Tài Khoản</h2>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Mã Tài Khoản</th>
									<th>Mật Khẩu</th>
									<th>Họ Tên</th>
									<th>Giới Tính</th>
									<th>Địa Chỉ</th>
									<th>Role</th>
									<th>Edit</th>
									<th>Remove</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>/index.html</td>
									<td>1265</td>
									<td>32.3%</td>
									<td>$321.33</td>
									<td>/index.html</td>
									<td>1265</td>
									<td><a href="">Edit</a></td>
									<td><a href="">Remove</a></td>
								</tr>
							</tbody>
						</table>
					</div>	
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.0.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>
</body>
</html>
