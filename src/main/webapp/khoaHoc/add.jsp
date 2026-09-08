<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>Thêm khoa hoc</h1>

<form
    action="${pageContext.request.contextPath}/khoa-hoc/add"
    method="post">
    <div class="mb-3">
        <label class="form-label">
            Tên Khoa hoc
        </label>
        <input
            type="text"
            name="tenKH"
            class="form-control"
        >
    </div>
    <div class="mb-3">
        <label class="form-label">
            Code
        </label>
        <input
            type="text"
            name="code"
            class="form-control"
        >
    </div>
    <button class="btn btn-primary">
        Thêm
    </button>
</form>