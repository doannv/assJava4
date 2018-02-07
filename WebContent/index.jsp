<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="home">
		<div class="container">
			<jsp:include page="danhmuc.jsp"></jsp:include>
			<section id="main">
				<jsp:include page="left.jsp"></jsp:include>
				<jsp:include page="sanpham.jsp"></jsp:include>
			</section>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>