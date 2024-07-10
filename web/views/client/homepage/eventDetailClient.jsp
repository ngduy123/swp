<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Tooplate">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

        <title>ArtXibition Ticket Detail Page</title>


        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/bootstrap.min.css">

        <!-- Font Awesome CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/font-awesome.css">

        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/owl-carousel.css">

        <!-- Tooplate ArtXibition CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/tooplate-artxibition.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/your-stylesheet.css">


        <!--
        
        Tooplate 2125 ArtXibition
        
https://www.tooplate.com/view/2125-artxibition

        -->







        <style>
            .container1{
                display: flex;
                flex-direction: column;
                width: 100%;
                min-height: 100vh;
                background: rgb(245, 247, 252);

            }
            .iVXoTn{
                line-height: 1.15;
                text-size-adjust: 100%;
                font-family: Inter, sans-serif;
                font-weight: normal;
                font-size: 14px;
                box-sizing: border-box;
                width: 100%;
                height: max-content;
                padding-block: 2rem;
                padding-inline: 10rem;
                background: linear-gradient(rgb(39, 39, 42) 48.04%, rgb(0, 0, 0) 100%);
                color: rgb(255, 255, 255);
                margin-top: -90px;
            }
            .iVXoTn .content {
                width: 100%;
                height: 100%;
                padding: 0px;
                color: white;
                border-radius: 1.5rem;
                background: linear-gradient(rgb(39, 39, 42) 48.04%, rgb(0, 0, 0) 100%);
                overflow: hidden;
                display: flex;
            }

            @media (min-width: 1024px) {
                .jKvuHi .desktop {
                    display: flex;
                }
            }
            .jKvuHi .desktop {
                display: none;
            }
            @media (min-width: 1440px) {
                .tbox-container {
                    max-width: 1280px;
                    padding-left: 16px;
                    padding-right: 16px;
                }
            }
            @media (min-width: 1024px) {
                .tbox-container {
                    max-width: 100vw;
                    padding-left: 12px;
                    padding-right: 12px;
                }
            }
            @media (min-width: 768px) {
                .tbox-container {
                    max-width: 100vw;
                    padding-left: 12px;
                    padding-right: 12px;
                }
            }
            @media (min-width: 640px) {
                .tbox-container {
                    max-width: 100vw;
                    padding-left: 8px;
                    padding-right: 8px;
                }
            }
            .tbox-container {
                box-sizing: border-box;
                position: relative;
                margin-left: auto;
                margin-right: auto;
            }
            .iVXoTn .content .text-wrapper {
                flex: 1 1 0%;
                background-color: rgb(56, 56, 61);
                position: relative;
                padding: 1.875rem;
            }
            .iVXoTn .content .text-wrapper #circle1 {
                top: 0px;
                right: 0px;
                transform: translate(1.875rem, -1.875rem);
                background-color: rgb(39, 39, 42);
                position: absolute;
                width: 50px;
                height: 50px;
                border-radius: 50%;
            }
            .iVXoTn .content .text-wrapper #circle2 {
                bottom: 0px;
                right: 0px;
                transform: translate(1.875rem, 1.875rem);
                background-color: rgb(2, 2, 3);
                position: absolute;
                width: 50px;
                height: 50px;
                border-radius: 50%;
            }
            .iVXoTn .content .text-wrapper #vertical-dashed {
                position: absolute;
                right: 0px;
                bottom: -8px;
                z-index: 10;
                transform: translate(2px, -2rem);

            }


            .iVXoTn .content .text-wrapper #vertical-dashed-2 {
                position: absolute;
                right: 0px;
                top: 100%;
                z-index: 10;
                transform: translate(2px, 2rem);

            }
            .iVXoTn .content .text-wrapper .text {
                width: 100%;
                height: 100%;
                display: flex;
                flex-direction: column;
                -webkit-box-pack: justify;
                justify-content: space-between;
            }
            .iVXoTn .content .text-wrapper .text .info {
                display: flex;
                flex-direction: column;
                -webkit-box-pack: center;
                justify-content: center;
                overflow: hidden;
            }
            @media (min-width: 1440px) {
                .iVXoTn .content .text-wrapper .text .info #title {
                    font-size: 18px;
                }
            }

            .iVXoTn .content .text-wrapper .text .info #title {
                font-size: 24px;
                overflow: hidden;
                word-break: break-word;
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 3;
            }
            p {
                margin: 0px;
            }
            *, ::before, ::after {
                box-sizing: border-box;
            }
            user agent stylesheet
            p {
                display: block;
                margin-block-start: 1em;
                margin-block-end: 1em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                unicode-bidi: isolate;
            }




            .iVXoTn .content .text-wrapper .text .info #date {
                margin-top: 1rem;
            }
            .iVXoTn .content .text-wrapper .text .info #date #date-text {
                text-transform: capitalize;
                padding-left: 0.5rem;
            }
            .iVXoTn .content .text-wrapper .text .info #venue {
                display: flex;
                -webkit-box-align: center;
                align-items: center;
                margin-top: 1rem;
            }
            .iVXoTn .content .text-wrapper .text .info #location-icon {
                transform: scale(0.65) translateX(-0.4rem);
            }
            .iVXoTn .content .text-wrapper .text .info span {
                color: rgb(45, 194, 117);
                font-weight: bold;
            }
            .iVXoTn .content .text-wrapper .text .info #address {
                font-size: 0.8em;
                color: rgb(196, 196, 207);
                margin-left: 1.5rem;
            }
            .iVXoTn .content .text-wrapper .text .price {
                border-top: 1px solid rgb(196, 196, 207);
            }
            .iVXoTn .content .text-wrapper .text .price #ticket-price {
                display: flex;
                -webkit-box-align: center;
                align-items: center;
                gap: 0.5rem;
                padding-block: 1rem;
                font-size: 16px;
                font-weight: bold;
            }
            .iVXoTn .content .text-wrapper .text .price #ticket-price #price-value {
                display: flex;
                -webkit-box-align: center;
                align-items: center;
                gap: 0.5rem;
                color: rgb(45, 194, 117);
            }
            .iVXoTn .content .text-wrapper .text .price #ticket-price #price-value svg {
                margin-left: 0.5rem;
            }
            .bHHstD {
                width: 100%;
                padding-block: 0.5rem;
                border-radius: 0.25rem;
                font-weight: bold;
                transition: background-color 0.4s ease-in-out 0s;
                color: rgb(255, 255, 255);
                background-color: rgb(45, 194, 117);
            }
            .iVXoTn .content .img-wrapper {
                flex: 2 0 0%;
                display: flex;
                -webkit-box-align: center;
                align-items: center;
                -webkit-box-pack: center;
                justify-content: center;
                overflow: hidden;
                background: linear-gradient(rgb(39, 39, 42) 48.04%, rgb(0, 0, 0) 100%);
            }
            .iVXoTn .content .img-wrapper img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                object-position: center center;
            }

            .eYXroU {

                width: 80%;
                border-radius: 31px;
                margin-top: -100px;
                padding: 45px 3rem;
                background-color: rgb(255 255 255);
                overflow: hidden;
                transform: scale(79%);
                margin-left: 143px;
            }
            .eYXroU #title {
                padding: 0.75rem 0px;
                border-bottom: 1px solid rgb(235, 235, 240);
            }
            .eYXroU #content {
                padding: 0.75rem 0px;
                margin-top: 24px;
            }
            p {
                font-size: 16px;
                line-height: 25px;
                color: white;


            }
            ul, li {
                padding: 3px;
                margin: 0px;
                list-style: none;
                font-size: 19px;
            }
        </style>
    </head>

    <body>

        <c:set var="event" value="${requestScope.event}" />
        <c:set var="area" value="${requestScope.area}" />

        <!-- ***** Preloader Start ***** -->
        <div id="js-preloader" class="js-preloader">
            <div class="preloader-inner">
                <span class="dot"></span>
                <div class="dots">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- ***** Preloader End ***** -->

        <!-- ***** Pre HEader ***** -->
        <jsp:include page="../component/Header.jsp" />
        <!-- ***** Header Area End ***** -->

        <!-- ***** About Us Page ***** -->
        <div class="page-heading-shows-events">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Tickets On Sale Now!</h2>
                        <span>Check out upcoming and past shows & events and grab your ticket right now.</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="container1">
            <div id="banner" class="style__BannerWrapper-sc-56ar6x-0 iVXoTn">
                <div class="tbox-container content desktop">
                    <div class="text-wrapper">
                        <div id="circle1" class="circle"></div>
                        <div id="circle2" class="circle"></div>
                        <svg width="4" height="415" viewBox="0 0 4 415" fill="none" xmlns="http://www.w3.org/2000/svg" id="vertical-dashed"><path stroke="#27272A" stroke-width="4" stroke-linecap="round" stroke-dasharray="4 10" d="M2 2v411"></path></svg>
                        <svg width="4" height="415" viewBox="0 0 4 415" fill="none" xmlns="http://www.w3.org/2000/svg" id="vertical-dashed-2"><path stroke="#27272A" stroke-width="4" stroke-linecap="round" stroke-dasharray="4 10" d="M2 2v411"></path></svg>
                        <div class="text">
                            <div class="info">
                                <p id="title">
                                    <strong>${event.name}</strong>
                                </p>
                                <p id="date">
                                    <!-- Chuyển đổi chuỗi thành đối tượng Date -->
                                    <fmt:parseDate var="parsedDate" value="${event.startDate}" pattern="yyyy-MM-dd" />

                                    <!-- Định dạng đối tượng Date thành chuỗi mới -->
                                    <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" var="formattedDate" />

                                    <fmt:parseDate var="parsedTime" value="${event.startTime}" pattern="HH:mm:ss" />

                                    <!-- Định dạng đối tượng Date thành chuỗi mới -->
                                    <fmt:formatDate value="${parsedTime}" pattern="HH:mm" var="formattedTime" />
                                    <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="icon">
                                    <path d="M4.333.333C4.702.333 5 .632 5 1v.667h4V1a.667.667 0 011.333 0v.667H11a2.667 2.667 0 012.667 2.667v1.333H.333V4.334A2.667 2.667 0 013 1.667h.667V1c0-.368.298-.667.666-.667zM13.667 7H.333v5.334c0 .736.597 1.333 1.334 1.333h10.666c.737 0 1.334-.597 1.334-1.333V7z" fill="#fff"></path>
                                    </svg>
                                    <span id="date-text">${formattedDate} ${formattedTime}</span></p>
                                <p id="venue"><svg width="22" height="28" viewBox="0 0 22 28" fill="none" xmlns="http://www.w3.org/2000/svg" id="location-icon" class="icon">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.031 3.307a10.514 10.514 0 0113.937 0c4.485 3.945 4.955 10.854 1.058 15.392l-7.015 8.17a1.333 1.333 0 01-2.023 0l-7.015-8.17C-.923 14.161-.454 7.252 4.031 3.307zM11 14.667A3.333 3.333 0 1011 8a3.333 3.333 0 000 6.666z" fill="#000"></path>

                                    </svg>
                                    <span class="venue-text">${event.destination}</span></p>
                            </div>
                            <div class="price">
                                <div id="ticket-price">
                                    <span>Giá từ</span>
                                    <a href="#ticket-info" id="price-value">
                                        <span>1.000.000 đ</span>
                                        <svg width="8" height="14" viewBox="0 0 8 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M.293.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L5.586 7 .293 1.707a1 1 0 010-1.414z" fill="#2DC275"></path></svg>
                                    </a>
                                </div>
                                <a href="${pageContext.request.contextPath}/areaDetailController?eventId=${event.id}">
                                    <button id="buynow-btn" class="style__BuynowBtn-sc-56ar6x-1 bHHstD" fdprocessedid="5iuped">Mua vé ngay</button>
                                </a>

                            </div>
                        </div>
                    </div>
                    <div class="img-wrapper">
                        <img src="${event.img_event}" alt="Banner cover">
                    </div>
                </div>
            </div>




            <div class="style__Wrapper-sc-12c1ml7-0 eYXroU">
                <h4 id="title" class="style__Title-sc-12c1ml7-1 kYOHji">Giới thiệu</h4>
                <div id="content" class="style__Content-sc-12c1ml7-2 digqDr">
                    <div class="style__WrapperIntro-sc-e7oelh-0 giRCXh" style="height: auto;">
                        <div class="style__ContentIntro-sc-e7oelh-1 czloHV">
                            <p class="ql-align-justify"><strong>Hạng vé/giá bán:</strong>
                            </p>
                            <ul>
                                <li class="ql-align-justify">Trót Yêu:&nbsp;&nbsp;4.000.000 VND</li>
                                <li class="ql-align-justify">Dấu Mưa:&nbsp;3.300.000 VND</li>
                                <li class="ql-align-justify">Tự Tình:&nbsp;&nbsp;2.700.000 VND</li>
                                <li class="ql-align-justify">Chuyện mưa:&nbsp;2.200.000 VND</li>
                                <li class="ql-align-justify">Chưa bao giờ:&nbsp;1.800.000 VND</li>
                                <li class="ql-align-justify">Gọi mưa:&nbsp;1.000.000 VND</li>
                            </ul>
                            <p class="ql-align-center"><img src="${event.img_position}"></p>
                            <p class="ql-align-justify">&nbsp;</p>
                            <ul>
                                <li class="ql-align-justify">Trong quá trình mua vé, đối với hạng vé ngồi, khách hàng không được chọn vị trí ngồi chính xác. BTC sẽ xuất vé có số ghế ngồi cụ thể cho khách hàng và khách hàng bắt buộc phải ngồi theo đúng số ghế trên vé.</li>
                                <li class="ql-align-justify">Mỗi Vé tương ứng với 01 khách tham gia (không bao gồm trẻ em).</li>
                                <li class="ql-align-justify">Người Mua kiểm tra lại thông tin Vé (tổng số vé, loại vé, số vé từng loại) và số tiền trước khi xác nhận Đơn hàng mua Vé.</li>
                                <li class="ql-align-justify">Vé Sự Kiện là Vé không được đổi hoặc trả lại dưới mọi hình thức, khách hàng vui lòng cân nhắc kỹ trước khi mua.</li>
                                <li class="ql-align-justify">Thời gian giữ Vé: 15 PHÚT/ lượt.</li>
                                <li class="ql-align-justify">Khách hàng được mua tối đa 10 Vé/ 1 loại vé/ 1 giao dịch.</li>
                                <li class="ql-align-justify">Khách hàng có trách nhiệm bảo mật tuyệt đối mã Vé điện tử của mình. Trường hợp có nhiều hơn 1 người check-in bằng 1 mã Vé điện tử thì BTC sẽ chấp nhận người đầu tiên check-in mã Vé đó được tham gia chương trình.</li>
                                <li class="ql-align-justify">Đối với Người Mua đặt qua Ticketbox, sau khi hoàn thành thanh toán tiền mua Vé (Giao dịch thành công), hệ thống sẽ thực hiện gửi Mã Đặt Chỗ thành công cho Người Mua qua email. Chậm nhất trong vòng 5 (năm) ngày làm việc trước ngày sự kiện diễn ra (Hồ Chí Minh - 13/07/2023) BTC sẽ thực hiện gửi (các) Mã Vé QR (dùng để checkin vào cổng) cho Người Mua qua email Người Mua đã cung cấp.&nbsp;</li>
                                <li class="ql-align-justify">Để đảm bảo nhận được Mã Đặt Chỗ và Mã Vé QR, trước khi thực hiện việc đặt mua Vé theo quy trình giao dịch tại Quy chế này, Người Mua nên chủ động kiểm tra và điền đầy đủ, chính xác thông tin email trên các nền tảng bán Vé.</li>
                                <li class="ql-align-justify">Nếu trong vòng 24 giờ kể từ khi mua Vé mà Người Mua vẫn chưa nhận được Mã Đặt Chỗ (đối với Vé đặt qua Ticketbox) thì Người Mua vui lòng liên hệ Hotline: 1900.6408 hoặc email support@ticketbox.vn và Fanpage Facebook https://www.facebook.com/ticketbox.vn</li>
                            </ul>
                            <p class="ql-align-justify">&nbsp;</p>
                            <p class="ql-align-justify"> ${event.description}</p>


                        </div>
                        <div rotate="false" class="style__IconHandleHeight-sc-e7oelh-3 eVsDpA">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6 9l6 6 6-6" stroke="#2A2D34" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round">

                            </path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>


            <!-- *** Subscribe *** -->

        </div>


        <!-- *** Subscribe *** -->

    </div>

    <!-- *** Footer *** -->
    <jsp:include page="../component/Footer.jsp" />



    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/bootstrap.min.js"></script>

    <!-- ScrollReveal JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/scrollreveal.min.js"></script>

    <!-- Waypoints JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/waypoints.min.js"></script>

    <!-- CounterUp JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/jquery.counterup.min.js"></script>

    <!-- ImgFix JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/imgfix.min.js"></script>

    <!-- MixItUp JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/mixitup.js"></script>

    <!-- Accordions JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/accordions.js"></script>

    <!-- Owl Carousel JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/owl-carousel.js"></script>

    <!-- Custom JS -->
    <script src="${pageContext.request.contextPath}/views/client/homepage/assets/js/custom.js"></script>

    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

</body>

</html>
