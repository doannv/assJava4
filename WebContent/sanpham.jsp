
<%@page import="java.util.List"%>
<%@page import="dao.SanphamDAO"%>
<%@page import="model.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div id="maincontent" class="col-xs-12 col-sm-8 col-md-9">
					
				<%
				SanphamDAO sp = new SanphamDAO();
				ArrayList<Sanpham> lst =sp.getListSanpham();
				int batdau=0,kethuc=12;
				if(lst.size()<12){
					kethuc=lst.size();
					
				}
				if (request.getParameter("batdau") != null) {
					batdau = Integer.parseInt(request.getParameter("batdau"));
				}
				if (request.getParameter("ketthuc") != null) {
					kethuc = Integer.parseInt(request.getParameter("ketthuc"));
				}
				ArrayList<Sanpham> list=sp.getPage(lst, batdau,kethuc);
				%>
					
					
			<div class="boxmain">
						<div class="tit-boxmain">
						
							<h3><span>Sản Phẩm  </span></h3>
						</div>
						<%
						for(Sanpham s :list){
						%>
						<div class="ct-boxmain row m0">
							<div class="col-xs-6 col-sm-4 col-md-3 p5">
								<div class="boxsp">
			                		<div class="imgsp">
			                			<a href="chitietsanpham.jsp?MaSanPham=<%=s.getMasp()%>"><img class="imgproduct" src="<%=s.getAnh()%>"></a>
			                			<div class="img-label">
			                				<img src="images/hot.png">
			                			</div>
			                		</div>
			                		<div class="namesp">
			                			<a href=""><%=s.getTensp()%></a>
			                		</div>
			                		<div class="pricesp"><%=s.getDongia()%> Đ</div>
			                		<div class="button-hd">
				                		<a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
				                		<a href="chitietsanpham.jsp?MaSanPham=<%=s.getMasp()%>"><i class="fa fa-eye" aria-hidden="true"></i></a>
				                	</div>
			                	</div>
							</div>
						<%} %>
							
						</div>
					</div>
					<div style="clear: both;"></div>
			<ul class="pagination">


				<%
					int a, b;
					int limit = lst.size() / 12;
					if (limit * 12 < lst.size()) {
						limit += 1;
					}
					for (int i = 1; i <= limit; i++) {
						a = (i - 1) * 12;
						b = i * 12;
						if (b > lst.size()) {
							b = lst.size();
						}
				%>
				<li><a href="index.jsp?batdau=<%=a%>&ketthuc=<%=b%>"><%=i%></a></li>
				<%
					}
				%>
			</ul>
		</div>
			
			
			
			
			
				</div>