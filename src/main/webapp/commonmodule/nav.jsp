<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="Ex02_JDBC_Main.jsp">Member DB</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <div class="sb-sidenav-footer">
                  <div class="small">
                     <c:set var="userid" value="${member}"/>
                     <c:if test="${!empty userid}">
                     <b>[${userid.id }]</b> 로그인 상태
                     </c:if>
                     <c:if test="${empty userid}">
                     <b>[로그인이 필요합니다.]</b>
                     </c:if>
                  </div>
               <div>
                    
                    
                        
                            <c:if test="${!empty userid}">
                        <li><a class="dropdown-item" href="Ex02_JDBC_Logout.do">logout</a></li>
                     </c:if>
                     <c:if test="${empty userid}">
                        <li><a class="dropdown-item" href="Ex02_JDBC_Login.do">login</a></li>
                     </c:if>
                    </ul>
                </li>
            </ul>
        </nav>