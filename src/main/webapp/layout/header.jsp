<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<nav class="navbar navbar-dark bg-dark navbar-expand-lg">
    <div class="container-fluid">

        <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/home">
            <i class="bi bi-speedometer2"></i>
            SiteMesh Demo
        </a>

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarContent">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarContent">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="bi bi-bell"></i>
                    </a>
                </li>

                <li class="nav-item dropdown">

                    <a class="nav-link dropdown-toggle"
                       href="#"
                       role="button"
                       data-bs-toggle="dropdown">

                        <i class="bi bi-person-circle"></i>
                        Admin
                    </a>

                    <ul class="dropdown-menu dropdown-menu-end">

                        <li>
                            <a class="dropdown-item" href="#">
                                <i class="bi bi-person"></i>
                                Profile
                            </a>
                        </li>

                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item" href="#">
                                <i class="bi bi-box-arrow-right"></i>
                                Logout
                            </a>
                        </li>

                    </ul>

                </li>

            </ul>

        </div>
    </div>
</nav>