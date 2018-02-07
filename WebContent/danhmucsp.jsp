<%@page import="java.util.List"%>
<%@page import="model.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.SanphamDAO"%>
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
				<div id="maincontent" class="col-xs-12 col-sm-8 col-md-9">
				<div class="boxmain">
						<div class="tit-boxmain">
							<h3><span>Sản Phẩm </span></h3>
						</div>
						
						<div class="ct-boxmain row m0">
							<div class="col-xs-6 col-sm-4 col-md-3 p5">
								<div class="boxsp">
			                		<div class="imgsp">
			                			<a href=""><img class="imgproduct" src=""></a>
			                			<div class="img-label">
			                				<img src="images/hot.png">
			                			</div>
			                		</div>
			                		<div class="namesp">
			                			<a href=""></a>
			                		</div>
			                		<div class="pricesp"></div>
			                		<div class="button-hd">
				                		<a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
				                		<a href=""><i class="fa fa-eye" aria-hidden="true"></i></a>
				                	</div>
			                	</div>
							</div>
						
							
						</div>
					</div>
			
			
			
			
			
			
				</div>
			</section>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>