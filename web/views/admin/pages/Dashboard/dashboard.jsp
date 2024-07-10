<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quản lý sự kiện</title>
    <link rel="stylesheet" href="../../../../public/admin/css/dashBoardCss.css"/>
    <link rel="stylesheet" href="../../../../public/admin/css/DashboarCss.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
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
                                    <h1 class="h2 mb-0 ls-tight">Quản lý sự kiện</h1>
                                </div>
                                <!-- Actions -->
                                <div class="col-sm-6 col-12 text-sm-end">
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
                            </div>
                            <div class="table-responsive">
                                <section class="main-content">
                                    <div class="app">
                                        <section class="app-content">
                                            <header>
                                                <div class="searchbox" style="border: solid 0.1px black;">
                                                    <div class="icon"> <i class="fa fa-search" aria-hidden="true"></i> </div>
                                                    <input type="text" name="search" placeholder="Tìm sự kiện" class="search-text" onkeyup="filterEvents()"> 
                                                </div>
                                                <div class="app-list-options">
                                                    <div>
                                                        <b>Sắp xếp theo</b>
                                                        <select id="sort-option" onchange="sortEvents(this.value)">
                                                            <option value="ticket-asc">Tiến độ bán vé (tăng dần)</option>
                                                            <option value="ticket-desc">Tiến độ bán vé (giảm dần)</option>
                                                            <option value="date-asc">Ngày diễn ra (tăng dần)</option>
                                                            <option value="date-desc">Ngày diễn ra (giảm dần)</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </header>
                                            <ul class="projects" id="event-list">
                                                <c:forEach var="item" items="${report}">
                                                    <li class="project-item">
                                                        <div>
                                                            <img src="${item.img}" alt="Image 001" style="width: auto; height: auto; border-radius: 5%" />
                                                        </div>
                                                        <div class="title-row">
                                                            <h5><b>${item.nameEvent}</b></h5>
                                                            <div class="progress-row">
                                                                <h6>Số vé đã bán: <b>${item.ticketSold}</b></h6>
                                                                <h6>Số vé còn lại: <b>${item.ticketLeft}</b></h6>
                                                                <h6>Tổng số lượng vé: <b>${item.totalTicket}</b></h6>
                                                                <h6>Tiến độ bán vé</h6>
                                                                <p class="value-label" style="width:${item.percentSold}%" data-value="${item.percentSold}"></p>
                                                                <progress max="${item.totalTicket}" value="${item.ticketSold}" data-value="${item.ticketSold}">${item.percentSold}%</progress>
                                                            </div>
                                                            <div class="footer-row">
                                                                <c:if test="${item.dayLeft < 0}">
                                                                    <div class="alert-dark">
                                                                        <i class="fa fa-clock-o icon" aria-hidden="true"></i> Đã kết thúc ${item.dayLeft * -1} ngày trước
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${item.dayLeft == 0}">
                                                                    <div class="alert-success">
                                                                        <i class="fa fa-clock-o icon" aria-hidden="true"></i> Diễn ra trong ngày hôm nay
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${item.dayLeft > 0}">
                                                                    <div class="alert-success">
                                                                        <i class="fa fa-clock-o icon" aria-hidden="true"></i> Diễn ra sau ${item.dayLeft} ngày
                                                                    </div>
                                                                </c:if>
                                                                <div class="users">
                                                                    <button type="button" class="btn btn-default btn-sm" idEvent="${item.idEvent}" detailBtn style="border: solid 1px black">
                                                                        <i class="bi bi-info-circle"></i> Chi tiết
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </section>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </c:if>
    </div>
    <script src="../../../../public/admin/js/reportDashboardJs.js"></script>
    <script>
        function filterEvents() {
            const input = document.querySelector('.search-text').value.toLowerCase();
            const eventList = document.querySelectorAll('.project-item');
            eventList.forEach(event => {
                const eventName = event.querySelector('.title-row h5 b').textContent.toLowerCase();
                if (eventName.includes(input)) {
                    event.style.display = '';
                } else {
                    event.style.display = 'none';
                }
            });
        }

        function sortEvents(option) {
            let events = Array.from(document.querySelectorAll('.project-item'));

            switch (option) {
                case 'ticket-asc':
                    events.sort((a, b) => {
                        let soldA = parseInt(a.querySelector('.progress-row h6:nth-of-type(1) b').textContent);
                        let soldB = parseInt(b.querySelector('.progress-row h6:nth-of-type(1) b').textContent);
                        return soldA - soldB;
                    });
                    break;
                case 'ticket-desc':
                    events.sort((a, b) => {
                        let soldA = parseInt(a.querySelector('.progress-row h6:nth-of-type(1) b').textContent);
                        let soldB = parseInt(b.querySelector('.progress-row h6:nth-of-type(1) b').textContent);
                        return soldB - soldA;
                    });
                    break;
                case 'date-asc':
                    events.sort((a, b) => {
                        let dateA = getDateValue(a);
                        let dateB = getDateValue(b);
                        return dateA - dateB;
                    });
                    break;
                case 'date-desc':
                    events.sort((a, b) => {
                        let dateA = getDateValue(a);
                        let dateB = getDateValue(b);
                        return dateB - dateA;
                    });
                    break;
                default:
                    break;
            }

            // Xóa các sự kiện hiện tại
            let eventList = document.getElementById('event-list');
            eventList.innerHTML = '';

            // Thêm các sự kiện đã sắp xếp vào danh sách
            events.forEach(event => eventList.appendChild(event));
        }

        function getDateValue(element) {
            // Lấy giá trị ngày tháng từ các phần tử trong phần tử project-item
            const dateString = element.querySelector('.footer-row .alert-dark, .footer-row .alert-success').textContent;
            const days = dateString.match(/-?\d+/)[0];
            return parseInt(days);
        }
    </script>
</body>
</html>
