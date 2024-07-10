<!DOCTYPE html>
<html lang="en">
    <%@ page import="java.util.List" %>
    <%@ page import="schema.Blog_client" %>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Tooplate">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

        <style>
            .anh{
                margin-top: 50px;
                margin-bottom: 50px;
                display: flex;
                color: #28a745;
                letter-spacing: 2px;
                justify-content: center;
                font-family: "Courier New", Courier, monospace;
                font-weight: 700;
            }
            .blog-posts {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
                gap: 20px;
                margin-top: 100px;
                margin-bottom: 100px;
            }

            .blog-post {
                padding: 15px;
                border: 1px solid #ddd;
                border-radius: 8px;
                background-color: #f9f9f9;
                display: flex;
                flex-direction: column;
                height: 100%;
            }

            .blog-post-content {
                flex: 1;
                overflow: hidden;
            }

            .blog-post h3 {
                margin-top: 0;
                font-size: 1.5rem;
                color: #6c757d;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                font-family: 'Arial', sans-serif;
                font-weight: 600;
            }

            .blog-post p {
                font-size: 1rem;
                line-height: 1.5;
                margin-bottom: 10px;
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
                white-space: normal;
            }

            .blog-post img {
                width: 100%;
                height: 200px;
                object-fit: cover;
                border-radius: 8px;
            }
            .view-button {
                display: block;
                width: 100%;
                text-align: center;
                padding: 8px 12px;
                margin-top: 10px;
                background-color: #28a745;
                color: #fff;
                border: none;
                border-radius: 4px;
                text-decoration: none;
                font-size: 14px;
                font-weight: 600;
                cursor: pointer;
            }

            .view-button:hover {
                background-color: #218838;

            }
        </style>
        <style>
            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }

            .pagination a {
                color: #28a745;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color 0.3s;
                border: 1px solid #ddd;
                margin: 0 4px;
                border-radius: 4px;
            }

            .pagination a.active {
                background-color: #28a745;
                color: white;
            }

            .pagination a:hover:not(.active) {
                background-color: #ddd;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/bootstrap.min.css">

        <!-- Font Awesome CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/font-awesome.css">

        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/owl-carousel.css">

        <!-- Tooplate ArtXibition CSS -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/tooplate-artxibition.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/client/homepage/assets/css/your-stylesheet.css">


    </head>

    <body>

        <!-- ***** Preloader Start ***** -->
        <!-- ***** Header Area Start ***** -->
        <jsp:include page="../component/Header.jsp" />
        <!-- ***** Header Area End ***** -->

        <!-- ***** About Us Page ***** -->
        <div class="page-heading-shows-events">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Bài viết sự kiện</h2>

                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="anh">Bài viết</h2>
                    <div class="blog-posts">
                        <c:choose>
                            <c:when test="${not empty blogsPage}">
                                <c:forEach var="blog" items="${blogsPage}">
                                    <div class="blog-post">
                                        <h3>${blog.title}</h3>
                                        <p><strong>Author:</strong> ${blog.author}</p>
                                        <p><strong>Published on:</strong> ${blog.publishDate}</p>
                                        <img src="${blog.image}" alt="${blog.title}">
                                        <a href="blogdetail?blog_id=${blog.blog_id}" class="view-button">Chi tiết</a>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <p>No blogs found.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div class="pagination">
                        <c:if test="${currentPage > 1}">
                            <a href="blog?page=${currentPage - 1}">Previous</a>
                        </c:if>
                        <c:forEach var="i" begin="1" end="${totalPages}">
                            <a href="blog?page=${i}" class="${i == currentPage ? 'active' : ''}">${i}</a>
                        </c:forEach>
                        <c:if test="${currentPage < totalPages}">
                            <a href="blog?page=${currentPage + 1}">Next</a>
                        </c:if>
                    </div>

                </div>
            </div>
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

    </body>

</html>
