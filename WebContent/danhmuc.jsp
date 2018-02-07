<%@page import="model.Danhmuc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DanhmucDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="featured">
				<div class="hidden-xs col-sm-4 col-md-3">
					<div class="boxleft">
						<div class="titboxl">
							<i class="fa fa-bars fa-x2 fa-lg" aria-hidden="true"></i> <span>Danh
								mục sản phẩm</span>
						</div>
						
						<div class="ctboxleft">
							<ul class="mnboxl">
							<%
						DanhmucDAO p = new DanhmucDAO();
						ArrayList<Danhmuc> list=p.getListDanhmuc();
						for(int i=0;i<list.size();i++){
						%>
								<li><a href="danhmucsp.jsp?Maloai=<%=list.get(i).getMaloai()%>"><%=list.get(i).getMaloai()%></a></li>
								<%} %>
							</ul>
							
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-9">
					<div class="slider-wrapper theme-default">
						<div id="slider" class="nivoSlider">
							<a href=""><img src="images/slide1.jpg" alt="" /></a> 
							<a href="">
							<img src="images/slide2.jpg" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="banner clearfix">
					<div class="col-xs-12 col-sm-6">
						<img src="images/banner1.png" alt="">
					</div>
					<div class="col-xs-12 col-sm-6">
						<img src="images/banner2.png" alt="">
					</div>
				</div>
			</section>