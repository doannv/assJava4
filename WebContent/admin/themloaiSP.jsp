<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Them SP</title>
</head>
<body>
	<%
		String error = "";
		if (request.getParameter("error") != null) {
			error = request.getParameter("error");
		}
	%>
	<div id="wrapper">

		<div class="row">
			<h2>Danh Sách Loại Sản Phẩm</h2>
			<div class="table-responsive">
				<h3>Thông tin danh mục</h3>
				<form action="controller/QLDanhMuc" method="post">
					<table width="95%">
						<tr>
							<td style="float: right"><b>Tên danh mục:</b></td>
							<td><input type="text" class="sedang" name="tenLoai"><%=error%></td>
						</tr>
						<tr>
							<td><input type="hidden" name="command" value="insert">
								<input type="submit" class="button" value="Lưu dữ liệu">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.0.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>