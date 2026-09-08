<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>Thêm Role</h1>

<form
    action="${pageContext.request.contextPath}/role/add"
    method="post">
    <div class="mb-3">
        <label class="form-label">
            Tên Role
        </label>
        <input
            type="text"
            name="name"
            class="form-control"
        >
    </div>
    <div class="mb-3">
        <label class="form-label">
            Mô tả
        </label>
        <input
            type="text"
            name="description"
            class="form-control"
        >
    </div>
    <button class="btn btn-primary">
        Thêm
    </button>
</form>