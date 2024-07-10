<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  /* CSS cho footer */
  footer {
    background-color: #ffffff; /* Màu nền footer là trắng */
    color: #000000; /* Màu chữ là đen */
    /* Các thuộc tính CSS khác cho footer */
  }

  .social-links .fa-twitter {
    color: #1DA1F2;
  }

  .social-links .fa-facebook {
    color: #3b5998;
  }

  .social-links .fa-behance {
    color: #1769ff;
  }

  .social-links .fa-instagram {
    color: #C13584;
  }

  /* Thay đổi màu chữ cho các phần tử khác trong footer */
  .address h4,
  .links h4,
  .hours h4,
  .under-footer h4,
  .sub-footer h4,
  .under-footer p,
  .sub-footer .logo span {
    color: #000000; /* Màu chữ là đen */
  }
</style>
<footer>
    <div class="container">
        <div class="row">
            <c:forEach var="footer" items="${footers}">
                <div class="col-lg-4">
                    <div class="address">
                        <h4>Địa điểm</h4>
                        <span>${footer.address}</span>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="links">
                        <h4>Dành cho người dùng</h4>
                        <ul>
                            <li><a href="#">${footer.useful_links}</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="hours">
                        <h4>Giờ làm việc</h4>
                        <ul>
                            <li>${footer.working_hours}</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="under-footer">
                        <div class="row">
                            <div class="col-lg-6">
                                <h4>Email</h4>
                                <p>${footer.email}</p>
                            </div>
                            <div class="col-lg-6">
                                <p class="copyright">Số điện thoại 

                                        <br><a rel="nofollow"  target="_parent">
                                            ${footer.phone_number}</a></p>
                                </div>
                        </div>
                    </div>
                </div>
                 <div class="col-lg-12">
                        <div class="sub-footer">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="logo"><span>Book<em>Show</em></span></div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="menu">
                                        <ul>
                                            <li><a href="/homepage" class="active">Trang chủ</a></li>
                                            <li><a href="/blog">Bài viết</a></li>
                                            <li><a href="rent-venue.html">Rent Venue</a></li>
                                            <li><a href="shows-events.html">Shows & Events</a></li> 
                                            <li><a href="tickets.html">Tickets</a></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="social-links">
                                        <ul>
                                            <li><a href="${footer.zalo}"><i class="fa fa-instagram"></i></a></li>
                                            <li><a href="${footer.facebook}"><i class="fa fa-facebook"></i></a></li>
                                          
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </c:forEach>
        </div>
    </div>
</footer>
