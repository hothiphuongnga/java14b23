<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="col-md-3 col-lg-2 bg-dark sidebar">
    <div class="pt-3">
        <p class="text-secondary px-3 text-uppercase small">
            Menu
        </p>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/home">
                    <i class="bi bi-house me-2"></i>
                    Trang chủ
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/user">
                    <i class="bi bi-house me-2"></i>
                    User
                </a>
            </li>
             <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/products">
                    <i class="bi bi-house me-2"></i>
                    Product
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/role">
                    <i class="bi bi-house me-2"></i>
                    Role
                </a>
            </li>
            
        </ul>
    </div>
</div>