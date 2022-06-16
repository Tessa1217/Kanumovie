<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <header class="header">
        <div class="container">
            <div class="salesrow">	
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="home.do">
                            <img src="img/kanumovielogo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="home.do">Homepage</a></li>
                                <li><a href="genreSelectList.do">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="genreSelectList.do">Categories</a></li>
                                        <li><a href="./anime-details.html">Anime Details</a></li>
                                        <li><a href="./anime-watching.html">Anime Watching</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                    <div width="34%">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                    </div>  
                      <!--  <a href="loginForm.do"><span class="icon_profile"></span></a> -->
                      <div width="34%">
                      <c:if test="${not empty email}">
                        <a href="userManageForm.do"><span><div class="anime__review__item__pic"><img alt="${fileName}" src="img/profile/${fileName}"></div></span></a>
                      </c:if>
                      </div>
                        <!--  임시 프로필 확인용 -->
                        <div width="34%">
                                <c:choose>
	                                <c:when test="${not empty email}">
	                                <a href="logout.do">Logout</a>
	                                </c:when>
	                                <c:otherwise>
                                        <a href="signUpForm.do">Sign Up</a>
                                        <a href="loginForm.do">Login</a>
	                                </c:otherwise>
	                            </c:choose>
	                      </div>
                        </div> 
                      </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
</body>
</html>