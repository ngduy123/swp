<%-- 
    Document   : DashBoard
    Created on : May 30, 2024, 10:58:44 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../../../public/admin/css/DashboarCss.css"/>
        <link rel="stylesheet" href="../../../../public/admin/css/alert.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Tài khoản</title>

    </head>
    <body>

        <c:set var="account" scope="page" value="${requestScope.account}"/>  

        <c:if test="${sessionScope.error != null}">
            <div class="message info">
                <div class="alert alert-danger" show-alert data-time="3000"> ${sessionScope.error}  <span close-alert>x</span> </div>
            </div>
            ${sessionScope.remove("error")}
        </c:if>
        <c:if test="${sessionScope.success != null}">
            <div class="message info">
                <div class="alert alert-success" show-alert data-time="3000"> ${sessionScope.success}  <span close-alert>x</span> </div>
            </div>
            ${sessionScope.remove("success")}
        </c:if>
        <c:set var="permission" value="${applicationScope.permission}"  />

        <!-- Banner -->

        <!--          div(class="alert alert-success" show-alert data-time=time  <span close-alert>x</span>-->

        <!-- Dashboard -->

        <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
            <!-- Vertical Navbar -->
            <c:import url="/views/admin/component/NavBar.jsp" />
            <!-- Main content -->
            <c:if test="${fn:contains(permission, 'view_account')}">
                <div class="h-screen flex-grow-1 overflow-y-lg-auto">
                    <!-- Header -->
                    <header class="bg-surface-primary border-bottom pt-6">
                        <div class="container-fluid">
                            <div class="mb-npx">
                                <div class="row align-items-center">
                                    <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                                        <!-- Title -->
                                        <h1 class="h2 mb-0 ls-tight">Danh sách tài khoản </h1>
                                    </div>
                                    <!-- Actions -->
                                    <div class="col-sm-6 col-12 text-sm-end">
                                        <c:if test="${fn:contains(permission, 'add_account')}">

                                            <div class="mx-n1">

                                                <a href="/admin/account/create/form" class="btn d-inline-flex btn-sm btn-primary mx-1">
                                                    <span class=" pe-2">
                                                        <i class="bi bi-plus"></i>
                                                    </span>
                                                    <span>Tạo tài khoản</span>
                                                </a>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main -->
                    <main class="py-6 bg-surface-secondary">
                        <div class="container-fluid">
                            <!-- Card stats -->

                            <div class="card shadow border-0 mb-7">
                                <div class="card-header">
                                    <h5 class="mb-0">Nhân viên</h5>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-nowrap">
                                        <thead class="thead-light">
                                            <tr>

                                                <th scope="col">Tên tài khoản</th>

                                                <th scope="col">Email</th>
                                                <th scope="col">Vai trò</th>
                                                <th scope="col">Trạng thái</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${fn:length(account) > 0 }">  
                                                <c:forEach var="item" items="${account}">  
                                                    <c:if test="${item.role ne 'customer'}">
                                                        <tr>
                                                            <!--                                                            <td>
                                                                                                                            <input type="checkbox" id="id" name="name" value="${item
                                                                                                                .id}">
                                                        
                                                                                                                    </td>-->
                                                            <td>
                                                                <img alt="..." src="https://scontent.fhan14-4.fna.fbcdn.net/v/t1.30497-1/143086968_2856368904622192_1959732218791162458_n.png?stp=cp0_dst-png_p40x40&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=RgLVRluimRUQ7kNvgFhbIaS&_nc_ht=scontent.fhan14-4.fna&oh=00_AYCch0edJ9aVBi2xxFILcKP8hQbx-4dh8wXhRFnwQI6yRQ&oe=668333F8" class="avatar avatar-sm rounded-circle me-2">
                                                                <a class="text-heading font-semibold" href="#">
                                                                    ${item.username}
                                                                </a>
                                                            </td>

                                                            <td>
                                                                ${item.email}
                                                            </td>
                                                            <td>
                                                                ${item.role == null ? "Khách hàng" : item.role}
                                                            </td>

                                                            <td>
                                                                <c:if test="${fn:contains(permission, 'edit_account')}">
                                                                    <span class="badge badge-lg badge-dot">
                                                                        <i class=${item.status == "active" ? "bg-success" : "bg-danger"}></i><a href="javascript:" id="${item.id}" status="${item.status}" btn-change-status >  ${item.status == "active" ? "Hoạt động" : "Tạm khóa"}</a>
                                                                    </span>
                                                                </c:if>

                                                                <c:if test="${!fn:contains(permission, 'edit_account')}">
                                                                    <span class="badge badge-lg badge-dot">
                                                                        <i class=${item.status == "active" ? "bg-success" : "bg-danger"}></i><a  id="${item.id}" status="${item.status}" style="color: black" >  ${item.status == "active" ? "Hoạt động" : "Tạm khóa"}</a>
                                                                    </span>
                                                                </c:if>
                                                            </td>
                                                            <td class="text-end">
                                                                <c:if test="${fn:contains(permission, 'edit_account')}">
                                                                    <a href="/admin/account/editform/${item.id}" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                                                        <span class=" pe-2">
                                                                            <i class="bi bi-pencil"></i>
                                                                        </span>
                                                                        <span>Chỉnh sửa</span>
                                                                    </a>
                                                                </c:if>


                                                                <c:if test="${fn:contains(permission, 'delete_account')}">
                                                                    <button type="button" remove-button class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                                                        <i class="bi bi-trash" delete-btn id=${item.id}> </i>
                                                                    </button>
                                                                </c:if>
                                                            </td>
                                                        </tr>
                                                    </c:if>

                                                </c:forEach>  

                                            </c:if>

                                            <c:if test="${fn:length(account) == 0 }">    
                                                <tr>
                                                    <td> <b>Không có tài khoản nào có sẵn</b></td>
                                                </tr>
                                            </c:if>
                                        </tbody>

                                    </table>

                                </div>

                                <div class="card-header">
                                    <h5 class="mb-0">Khách hàng</h5>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-nowrap">
                                        <thead class="thead-light">
                                            <tr>

                                                <th scope="col">Tên tài khoản</th>

                                                <th scope="col">Email</th>
                                                <th scope="col">Vai trò</th>
                                                <th scope="col">Trạng thái</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${fn:length(account) > 0 }">  
                                                <c:forEach var="item" items="${account}">  
                                                    <c:if test="${item.role eq 'customer'}">
                                                        <tr>
                                                            <!--                                                            <td>
                                                                                                                            <input type="checkbox" id="id" name="name" value="${item
                                                                                                                .id}">

                                                        </td>-->
                                                            <td>
                                                                <img alt="..." src="https://scontent.fhan14-4.fna.fbcdn.net/v/t1.30497-1/143086968_2856368904622192_1959732218791162458_n.png?stp=cp0_dst-png_p40x40&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=RgLVRluimRUQ7kNvgFhbIaS&_nc_ht=scontent.fhan14-4.fna&oh=00_AYCch0edJ9aVBi2xxFILcKP8hQbx-4dh8wXhRFnwQI6yRQ&oe=668333F8" class="avatar avatar-sm rounded-circle me-2">
                                                                <a class="text-heading font-semibold" href="#">
                                                                    ${item.username}
                                                                </a>
                                                            </td>

                                                            <td>
                                                                ${item.email}
                                                            </td>
                                                            <td>
                                                                ${item.role == null ? "Khách hàng" : item.role}
                                                            </td>
                                                            <td>
                                                                <c:if test="${fn:contains(permission, 'edit_account')}">
                                                                    <span class="badge badge-lg badge-dot">
                                                                        <i class=${item.status == "active" ? "bg-success" : "bg-danger"}></i><a href="javascript:" id="${item.id}" status="${item.status}" btn-change-status >  ${item.status == "active" ? "Hoạt động" : "Tạm khóa"}</a>
                                                                    </span>
                                                                </c:if>

                                                                <c:if test="${!fn:contains(permission, 'edit_account')}">
                                                                    <span class="badge badge-lg badge-dot">
                                                                        <i class=${item.status == "active" ? "bg-success" : "bg-danger"}></i><a   status="${item.status}"  >  ${item.status == "active" ? "Hoạt động" : "Tạm khóa"}</a>
                                                                    </span>
                                                                </c:if>

                                                            </td>
                                                            <td class="text-end">

                                                                <c:if test="${fn:contains(permission, 'edit_account')}">
                                                                    <a href="/admin/account/editform/${item.id}" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                                                        <span class=" pe-2">
                                                                            <i class="bi bi-pencil"></i>
                                                                        </span>
                                                                        <span>Chỉnh sửa</span>
                                                                    </a>
                                                                </c:if>

                                                                <c:if test="${fn:contains(permission, 'delete_account')}">
                                                                    <button type="button" remove-button class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                                                        <i class="bi bi-trash" delete-btn id=${item.id}> </i>
                                                                    </button>
                                                                </c:if>

                                                            </td>
                                                        </tr>
                                                    </c:if>

                                                </c:forEach>  
                                                        
                                            </c:if>

                                            <c:if test="${fn:length(account) == 0 }">    
                                                <tr>
                                                    <td> <b>Không có tài khoản nào có sẵn</b></td>
                                                </tr>
                                            </c:if>

                                        </tbody>

                                    </table>
                                    
                                </div>

                                <div class="card-footer border-0 py-5">
                                    <span class="text-muted text-sm">${fn:length(account)} trong ${fn:length(account)}</span>

                                </div>
                                 
                            </div>
                        </div>
                                    
                    </main>
                </div>
            </c:if>
            <c:if test="${!fn:contains(permission, 'view_account')}">
                <h1>Bạn không có quyền tại đây</h1>
            </c:if>
        </div>
    </body>

    <script src="../../../../public/admin/js/dashboard.js"></script>
    <script src="../../../../public/admin/js/changeStatus.js"></script>
    <script src="../../../../public/admin/js/alert.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</html>
