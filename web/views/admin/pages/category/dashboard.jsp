

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

        <title>Loại sự kiên</title>
    </head>
    <body>
        <!--alert messsage-->

        <!-- get all role-->
        <c:set var="role" value="${requestScope.role}"/>  
        <!-- end-->

        <c:set var="permission" value="${applicationScope.permission}"  />


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

        <!--End alert message-->



        <c:if test="${fn:contains(permission, 'view_category')}">
            <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
                <!-- Vertical Navbar -->
                <c:import url="/views/admin/component/NavBar.jsp" />
                <!-- Main content -->
                <c:if test="${fn:contains(permission, 'view_category')}">
                    <div class="h-screen flex-grow-1 overflow-y-lg-auto">
                        <!-- Header -->
                        <header class="bg-surface-primary border-bottom pt-6">
                            <div class="container-fluid">
                                <div class="mb-npx">
                                    <div class="row align-items-center">
                                        <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                                            <!-- Title -->
                                            <h1 class="h2 mb-0 ls-tight">Danh sách loại sự kiện </h1>
                                        </div>
                                        <!-- Actions -->
                                        <div class="col-sm-6 col-12 text-sm-end">
                                            <c:if test="${fn:contains(permission, 'add_category')}">
                                                <div class="mx-n1">

                                                    <a href="/admin/category/create/form" class="btn d-inline-flex btn-sm btn-primary mx-1">
                                                        <span class=" pe-2">
                                                            <i class="bi bi-plus"></i>
                                                        </span>
                                                        <span>Tạo loại sự kiện mới</span>
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



                                    <div class="table-responsive">
                                        <table class="table table-hover table-nowrap">

                                            <thead class="thead-light">
                                                <tr>
                                                    <th scope="col">Tên sự kiện</th>
                                                    <th scope="col"> </th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <c:forEach var="item" items="${category}">

                                                    <tr>

                                                        <td>${item.description}</td>
                                                        <td class="text-end">
                                                            <c:if test="${fn:contains(permission, 'edit_category')}">
                                                                <a href="/admin/category/edit/form/${item.id}"  class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                                                    <span class=" pe-2">
                                                                        <i class="bi bi-pencil"></i>
                                                                    </span>
                                                                    <span>Chỉnh sửa</span>
                                                                </a>
                                                            </c:if>

                                                            <c:if test="${fn:contains(permission, 'delete_category')}">
                                                                <button type="button" remove-button idCategory="${item.id}" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                                                    <i class="bi bi-trash" > </i>
                                                                </button> 

                                                            </c:if>
                                                        </td> 
                                                    </tr>


                                                </c:forEach>

                                            </tbody>

                                        </table>

                                    </div>

                                </div>
                            </div>
                        </main>
                    </div>
                </c:if>


            </div>

        </c:if>



    </body>
    <script src="../../../../public/admin/js/dashboard.js"></script>
    <script src="../../../../public/admin/js/alert.js"></script>
    <script src="../../../../public/admin/js/EditCategoryDashboard.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</html>