<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lịch sử giao dịch</title>
        <link rel="stylesheet" href="../../../../public/admin/css/dashBoardCss.css"/>
        <link rel="stylesheet" href="../../../../public/admin/css/DashboarCss.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="../../../../public/admin/css/transactionCss.css"/>
    </head>
    <style>
        .btn-pagination {
            display: inline-block;
            padding: 8px 16px;
            margin: 0 4px;
            border: 1px solid #007bff;
            color: #007bff;
            text-decoration: none;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-pagination:hover {
            background-color: #007bff;
            color: #fff;
        }

        .btn-pagination.current {
            background-color: #007bff;
            color: #fff;
            border-color: #007bff;
            pointer-events: none; /* Ngăn chặn sự kiện click khi là trang hiện tại */
        }
    </style>
    <body>
        <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
            <!-- Vertical Navbar -->
            <c:import url="/views/admin/component/NavBar.jsp" />
            <!-- Main content -->
            <c:if test="${fn:contains(permission, 'view_ticket')}">
                <div class="h-screen flex-grow-1 overflow-y-lg-auto">
                    <!-- Header -->
                    <header class="bg-surface-primary border-bottom pt-6">
                        <div class="container-fluid">
                            <div class="mb-npx">
                                <div class="row align-items-center">
                                    <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                                        <!-- Title -->
                                        <h1 class="h2 mb-0 ls-tight">Lịch sử giao dich</h1>
                                    </div>
                                    <!-- Actions -->
                                    <div class="col-sm-6 col-12 text-sm-end"></div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main -->
                    <main class="py-6 bg-surface-secondary">
                        <div class="container-fluid">
                            <!-- Card stats -->
                            <div class="card shadow border-0 mb-7">
                                <div class="card-header"></div>
                                <div class="table-responsive">
                                    <div class="content">
                                        <div class="content2">
                                            <div class="online_orders shadow">
                                                <div class="online_orders_1">Số giao dịch</div>
                                                <div class="online_orders_2">${fn:length(report)}</div>
                                            </div>
                                            <div class="amount_recieved shadow">
                                                <c:set var="sum" value="0" />
                                                <c:forEach var="item" items="${report}">
                                                    <c:set var="num" value="${item.total + 0}" />
                                                    <c:set var="sum" value="${sum + num}" />
                                                </c:forEach>
                                                <div class="amount_recieved_1">Tổng tiền hiện tại</div>
                                                <div class="amount_recieved_2"><fmt:formatNumber value="${sum}" type="currency" currencySymbol="₫" currencyCode="VND" /></div>
                                            </div>
                                        </div>
                                        <div class="shadowforlastbox">
                                            <div class="content4"></div>
                                            <div class="content5">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th>Email</th>
                                                            <th>Ngày giao dịch</th>
                                                            <th>Tổng số tiền</th>
                                                            <th>Phương thức thanh toán</th>
                                                            <th>Loại vé</th>
                                                            <th>Giá</th>
                                                            <th>Số lượng mua</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="item" items="${report}">
                                                            <tr>
                                                                <td>${item.email}</td>
                                                                <!-- Chuyển đổi chuỗi thành đối tượng Date -->
                                                                <fmt:parseDate var="parsedDate" value="${item.date}" pattern="yyyy-MM-dd HH:mm:ss.S" />
                                                                <!-- Định dạng đối tượng Date thành chuỗi mới -->
                                                                <fmt:formatDate value="${parsedDate}" pattern="HH:mm dd/MM/yyyy" var="formattedDate" />
                                                                <td>${formattedDate}</td>
                                                                <td><fmt:formatNumber value="${item.total}" type="currency" currencySymbol="₫" currencyCode="VND" /></td>
                                                                <td style="text-align: center">${item.paymentMethod}</td>
                                                                <td style="text-align: center">${item.areaName}</td>
                                                                <td style="text-align: center"><fmt:formatNumber value="${item.price}" type="currency" currencySymbol="₫" currencyCode="VND" /></td>
                                                                <td style="text-align: center">${item.quantity}</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- Phần phân trang -->
                                            <div class="content6">
                                                <div class="content6_1">
                                                    <c:if test="${currentPage > 1}">
                                                        <a href="?page=${currentPage - 1}" class="btn btn-pagination">Trước</a>
                                                    </c:if>
                                                </div>
                                                <div class="content6_2">
                                                    <c:forEach var="i" begin="1" end="${totalPages}">
                                                        <a href="?page=${i}" class="btn <c:if test='${i == currentPage}'>btn-pagination current</c:if>">${i}</a>
                                                    </c:forEach>
                                                </div>
                                                <div class="content6_3">
                                                    <c:if test="${currentPage < totalPages}">
                                                        <a href="?page=${currentPage + 1}" class="btn btn-pagination">Tiếp</a>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </main>
                </div>
            </c:if>
        </div>
    </body>
</html>
