<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Role</title>
</head>
<body>
	<div class="d-flex justify-content-between align-items-center mb-4">
		<h1>Quản lý Role</h1>
		<p>${text}</p>
		<a class="btn btn-primary" href="${pageContext.request.contextPath}/role/add">
			<i class="bi bi-plus-lg"></i> Thêm Role
		</a>
	</div>
	<div class="card  shadow-sm border-0">
		<div class="card-body">
			<table class="table table-hover">
				<thead class="table-dark">
					<tr>
						<th>#</th>
						<th>Tên Role</th>
						<th>Mô tả</th>
						<th>Trạng thái</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${roles}" var="role">
						<tr>
							<td>${role.id}</td>
							<td>${role.name}</td>
							<td>${role.description}</td>
							<td>${role.status}</td>
							<td>
								<button class="btn btn-sm btn-warning">Sửa</button>

								<button class="btn btn-sm btn-danger">Xoá</button>

							</td>

						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</div>
</body>
</html>