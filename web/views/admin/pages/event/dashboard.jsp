<%-- 
    Document   : DashBoard
    Created on : May 30, 2024, 10:58:44 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <style>
    .pagination {
        margin-top: 20px;
        text-align: center;
    }

    .pagination a {
        display: inline-block;
        margin: 0 5px;
        padding: 5px 10px;
        text-decoration: none;
        color: white; /* Màu chữ cho các nút */
        border: 1px solid #007bff; /* Viền của các nút */
        border-radius: 3px; /* Đường cong của các nút */
    }

    .pagination a.current {
        background-color: #007bff; /* Màu nền của nút hiện tại */
        color: #fff; /* Màu chữ của nút hiện tại */
    }

    .pagination a:hover {
        background-color: #0056b3; /* Màu nền khi di chuột qua các nút */
        border-color: #0056b3; /* Màu viền khi di chuột qua các nút */
    }

    .pagination .btn-secondary {
        background-color: #6c757d;
        border-color: #6c757d;
    }

    /* Để căn giữa các nút phân trang */
    .pagination {
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../../../public/admin/css/DashboarCss.css"/>
        <link rel="stylesheet" href="../../../../public/admin/css/alert.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="../../../../public/admin/css/detailEvent.css"/>
        <title>Danh sách các sự kiện</title>

    </head>
    <body>


        <c:set var="permission" value="${applicationScope.permission}"  />
        <c:set var="event" value="${requestScope.event}"  />







        <c:set var="account" scope="page" value="${requestScope.account}"/>  


        <c:if test="${sessionScope.error != null}">
            <div class="message info">
                <div class="alert alert-danger" show-alert data-time="3000"> ${sessionScope.error}  <span close-alert><b>X</b></span> </div>
            </div>
            ${sessionScope.remove("error")}
        </c:if>





        <c:if test="${sessionScope.success != null}">
            <div class="message info">
                <div class="alert alert-success" show-alert data-time="3000"> ${sessionScope.success}  <span close-alert><b>X</b></span> </div>
            </div>
            ${sessionScope.remove("success")}
        </c:if>


        <!-- Banner -->

        <!--          div(class="alert alert-success" show-alert data-time=time  <span close-alert>x</span>-->

        <!-- Dashboard -->

        <c:if test="${fn:contains(permission, 'view_ticket')}">
            <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
                <!-- Vertical Navbar -->
                <c:import url="/views/admin/component/NavBar.jsp" />
                <!-- Main content -->

                <div class="h-screen flex-grow-1 overflow-y-lg-auto">
                    <!-- Header -->
                    <header class="bg-surface-primary border-bottom pt-6">
                        <div class="container-fluid">
                            <div class="mb-npx">
                                <div class="row align-items-center">
                                    <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                                        <!-- Title -->
                                        <h1 class="h2 mb-0 ls-tight">Danh sách các sự kiện</h1>
                                    </div>
                                    <!-- Actions -->
                                    <div class="col-sm-6 col-12 text-sm-end">
                                        <div class="mx-n1">
                                            <c:if test="${fn:contains(permission, 'add_ticket')}">
                                                <a href="/admin/event/create/form" class="btn d-inline-flex btn-sm btn-primary mx-1">
                                                    <span class=" pe-2">
                                                        <i class="bi bi-plus"></i>
                                                    </span>
                                                    <span>Tạo sự kiện mới</span>
                                                </a>
                                            </c:if>

                                        </div>
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
                                <!--                            <div class="card-header">
                                                                <h5 class="mb-0">Dan</h5>
                                                            </div>-->
                                <div class="table-responsive">
                                    <!---table event-->
                                    <div class="products" ng-app="app" ng-controller="AppCtrl">
                                        <md-content layout-padding>

                                            <div class="table-responsive">
                                                <table class="table table-hover table-nowrap">
                                                    <thead><tr>

                                                            <th>Tên sự kiện</th>
                                                            <th>Thể loại</th>
                                                            <th>Ảnh</th>
                                                            <th>Ngày diễn ra</th>
                                                            <th>Trạng thái</th>
                                                            <th>Tổ chức</th>
                                                            <th>Hành động</th>
                                                        </tr></thead>
                                                    <tbody>

                                                        <c:forEach var="item" items="${event}">
                                                            <tr>
                                                                <!--- convert date-->
                                                                <c:set var="originalDateString" value="${item.startDate}" />


                                                                <fmt:parseDate value="${originalDateString}" pattern="yyyy-MM-dd" var="dateObject" />


                                                                <fmt:formatDate value="${dateObject}" pattern="dd/MM/yyyy" var="formattedDate" />
                                                                <!----->

                                                                <td >${item.name}</td>
                                                                <td>${item.category}</td>
                                                                <td><img img-demo idEvent="${item.id }" src="${item.img_event}" style="width: 400px; height: 300" alt="alt"/></td>
                                                                <td>${formattedDate}</td>
                                                                <td> 
                                                                    <c:if test="${item.status == 'active'}">
                                                                        <div class="alert-success"> <b>Đang hoạt động</b> </div> 
                                                                    </c:if>
                                                                    <c:if test="${item.status == 'inactive'}">
                                                                        <div class="alert-danger"> <b>Không hoạt động</b> </div> 
                                                                    </c:if>
                                                                    <c:if test="${item.status == 'expired'}">
                                                                        <div class="alert-secondary"> <b>Đã kết thúc</b> </div> 
                                                                    </c:if>
                                                                </td>
                                                                <td> <p style="white-space: normal">${item.organizer} </p> </td>
                                                                <td>
                                                                    <table>

                                                                        <tr>
                                                                            <td>
                                                                                <c:if test="${fn:contains(permission, 'view_ticket')}">
                                                                                    <a href="/admin/event/detail/${item.id}" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                                                                        <span class=" pe-2">
                                                                                            <i class="bi bi-info-circle"></i>
                                                                                        </span>
                                                                                        <span>Chi tiết</span>
                                                                                    </a>
                                                                                </c:if>
                                                                            </td>

                                                                        </tr>
                                                                        <tr>
                                                                            <td> <c:if test="${fn:contains(permission, 'edit_ticket')}">
                                                                                    <a href="/admin/event/edit/form/${item.id}" class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                                                                        <span class=" pe-2">
                                                                                            <i class="bi bi-pencil"></i>
                                                                                        </span>
                                                                                        <span>Chỉnh sửa</span>
                                                                                    </a>
                                                                                </c:if> </td>
                                                                        </tr>

                                                                    </table>



                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                                <div class="pagination">
                                                    <c:if test="${currentPage > 1}">
                                                        <a href="?page=${currentPage - 1}" class="btn btn-sm btn-primary">previous</a>
                                                    </c:if>

                                                    <c:forEach var="pageNum" begin="1" end="${totalPages}">
                                                        <c:choose>
                                                            <c:when test="${pageNum == currentPage}">
                                                                <a href="?page=${pageNum}" class="btn btn-sm btn-secondary">${pageNum}</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a href="?page=${pageNum}" class="btn btn-sm btn-primary">${pageNum}</a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>

                                                    <c:if test="${currentPage < totalPages}">
                                                        <a href="?page=${currentPage + 1}" class="btn btn-sm btn-primary">next</a>
                                                    </c:if>
                                                </div>
                                            </div>
                                    </div>
                                    </md-content>
                                </div>

                            </div>
                            <div class="card-footer border-0 py-5">
                                <span class="text-muted text-sm">1000 trong 1000</span>

                            </div>
                        </div>
                </div>
            </main>
        </div>
    </div>
</c:if>



</body>




<script src="../../../../public/admin/js/dashboard.js"></script>
<script src="../../../../public/admin/js/dashboardEvent.js"></script>
<script src="../../../../public/admin/js/alert.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</html>
