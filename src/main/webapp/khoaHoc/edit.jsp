<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Chinh sua khoa hoc</h1>

<form
    action="${pageContext.request.contextPath}/khoa-hoc/edit"
    method="post">
    <div class="mb-3">
        <label class="form-label">
            Id
        </label>
        <input
            type="text"
            name="id"
            class="form-control"
            value="${khoaHoc.id}"
            readonly="readonly"
        >
    </div>
    <div class="mb-3">
        <label class="form-label">
            Tên Khoa hoc
        </label>
        <input
            type="text"
            name="tenKH"
            value="${khoaHoc.tenKH}"
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
            value="${khoaHoc.code}"
            class="form-control"
        >
    </div>
    <button class="btn btn-primary">
        Sua
    </button>
</form>