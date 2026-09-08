<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Css Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">

<title><sitemesh:title default="Java web" /></title>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/style.css">
</head>
<body>
	<%@ include file="../layout/header.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<%@ include file="../layout/sidebar.jsp"%>

			<!-- render nooij dung cua pac jsp page lam con -->
			<main class="col-md-9 col-lg-10 px-md-4 py-4 content">

				<sitemesh:body />

			</main>
		</div>

	</div>
	<%@ include file="../layout/footer.jsp"%>




	<!-- Script Bootstrap  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>
</body>
</html>