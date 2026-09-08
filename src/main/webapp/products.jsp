<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Models.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">

</head>
<body>
	<div style="width: 80%; margin: 0 auto;">
		<h1 style="text-align: center">Product</h1>
		<% // code java dat giua
		// lấy ra products được truyền từ req của servlet
		List<Products> products_old = (List<Products>)request.getAttribute("products");
		%>
		<div style="display: flex; gap: 20px; padding: 20px; flex-wrap: wrap;">
			<% 
		
		// chay vong lap duyet qua ds sp
		for(Products p : products_old ){
			
		%>
			<!-- code HTML -->
			<div
				style="width: 260px; min-height: 300px; border: 2px solid #ff2f55; padding: 18px; border-radius: 8px; box-sizing: border-box; display: flex; flex-direction: column; background-color: white;">
				<p><%=p.getTen() %></p>
				<p><%=p.getGia() %></p>
				<!-- hinhf anrh -->
				<!-- button Xem  -->
			</div>


			<% } %>

		</div>
		<!--
		JSP : cách cũ 
			jsp từ lấy requets 
			↓
			Cast về list<>roduct
			↓
			for Java
			↓ 
			getTen()
			↓
			HTML 
		JSTL: 
			jsp nhận dự liệu trực tiếp ()
			jstl duyệt c: foreach với giá trị nhận được 
			Hiểm thị  luôn 
		
		  -->
		<div style="display: flex; gap: 20px; padding: 20px; flex-wrap: wrap;">
			<!-- items chính là danh sách cần duyệt , nhận từ attribute 
		 	var : Trong mỗi lần lặp, lấy một phần tử của products và 
		 	đặt tên tạm cho phần tử đó là item.
		  -->
			<c:forEach items="${products}" var="item">
				<div
					style="width: 260px; min-height: 300px; border: 2px solid #ff2f55; padding: 18px; border-radius: 8px; box-sizing: border-box; display: flex; flex-direction: column; background-color: white;">
					<!-- item.ten : ten privtae-> tìm getTen lấy ra giá  -->
					<p>${item.ten}</p>
					<p>${item.gia}</p>
				</div>
			</c:forEach>

		</div>


		<hr />
		<!-- test= "bieu thuc dieu kien"  -->
		<c:if test="true">Hello</c:if>
		<!-- bien age = 18 -->
		<!-- c:set tao bien va gan gia tri -->
		<c:set var="age" value="19" />
		<c:if test="${age >= 18}">Ban du 18 tuoi</c:if>
		<!-- xuat du lieu ~ ${age} -->
		<c:out value="${age}" />
		${age}

		<!-- when, choose, otherwise -->
		<c:set var="score" value="7" />
		<p>
			<b>Xep loai: </b>
			<c:choose>
				<c:when test="${score >=9}">
				Gioi
				</c:when>
				<c:when test="${score >=8}">
				Kha
				</c:when>
				<c:otherwise>
				Trung binh
				</c:otherwise>

			</c:choose>
		</p>
		<p>
			<b>c:foreach</b>
			<c:forEach var="i" begin="1" end="5">
				<i>So: </i> ${i}
			</c:forEach>
		</p>
		<p>
			<b>c:forTokens</b> <br>
			<c:forTokens items="Java,C#,Reat,SQL,Golang" delims="," var="item">
				<i>Skill: </i> ${item} <br>
			</c:forTokens>
		</p>
		<c:catch var="err">
			<%int x = 10 / 0 ; %>

		</c:catch>
		${err}
		<c:if test="${err != null}">
		Co loi xay ra vui long thu lai
		</c:if>

		<!-- text-
		center	= text-align: center
		end    	= text-align:right
		start	= text-align: left
		
		
		COLOR text- : color
		danger: do
		success: xanh la
		primary: xanh duong
		warning : vang
		info: xanh duong nhat
		secondary: xam
		light / white: trang
		dark: den
		
		Background : bg- 
		 -->
		<h2 class="text-center text-danger bg-success">BOOSTRAP</h2>
		<p class="text-end text-warning">right</p>
		<p class="text-start text-secondary">left</p>

		<!-- p- padding: m- : margin
			pt- : padding top
			pb- : padding bottom
			ps- : padding left
			pe- : padding right
			
		
		 -->
		<div class="p-5 bg-danger">bg-danger</div>
		<div class="p-4 bg-success">bg-success</div>
		<div class="p-3 bg-warning">bg-warning</div>
		<div class="p-2 bg-primary">bg-primary</div>
		<div class="p-1 bg-info">bg-info</div>
		<div class="p-5 bg-secondary">bg-secondary</div>
		<br>
		<button class="btn btn-success">xem</button>
		<button class="btn btn-outline-success">xem</button>
		<!-- row -->
		<div class="row">
			<div class="col-4 border border-danger-subtle py-5" >1</div>
			<div class="col-4 border border-danger-subtle py-5" >2</div>
			<div class="col-4 border border-danger-subtle py-5" >3</div>
			<div class="col-4 border border-danger-subtle py-5" >4</div>
			<div class="col-1 border border-danger-subtle py-5" >5</div>
			<div class="col-1 border border-danger-subtle py-5" >6</div>
			<div class="col-1 border border-danger-subtle py-5" >7</div>
			<div class="col-1 border border-danger-subtle py-5" >8</div>
			<div class="col-1 border border-danger-subtle py-5" >9</div>
			<div class="col-1 border border-danger-subtle py-5" >10</div>
			<div class="col-1 border border-danger-subtle py-5" >11</div>
			<div class="col-1 border border-danger-subtle py-5" >12</div>
			<div class="col-1 border border-danger-subtle py-5" >13</div>
			
		</div> 
		
		<div class="d-flex justify-content-around align-items-center">
			<div class="px-5 py-4 bg-warning opacity-50"></div>
			<div class="p-5 bg-success opacity-50"></div>
			<div class="p-5 bg-warning opacity-50"></div>
			<div class="p-5 bg-success opacity-50"></div>
		</div>
		
		
		






		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>

</body>
</html>

