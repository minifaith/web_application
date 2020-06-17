<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Landing Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="${contextPath}/css/animate.css">
    <link rel="stylesheet" href="${contextPath}/css/main.css">
    <link rel="stylesheet" href="${contextPath}/css/carousel.css">
</head>
<body>
<header id="header" class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-5" style="font-size: 28px">
                Vulkan Soft
            </div>
            <div class="col-lg-5">
                <nav>
                    <ul class="menu d-flex justify-content-center">
                        <li class="menu__item">
                            <a href="${contextPath}/index.jsp">Главная</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-2">
                <div class="login">
                    <a href="${contextPath}/logout">Выйти</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <br>
                <h2>Привет, админ</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="main">
                    <h3 class="main__title">
                        Данные пользователей
                    </h3>
                    <div class="main__intro">
                        На этой странице администратор может заблокировать пользователя.
                    </div>
                    <p class="main__text">
                        Помимо блокировки, можно посмотреть имя и фамилию пользователя, что, в принципе, вполне нужная информация для набора персонала в компанию.
                    </p>
                </div>
            </div>
            <div class="col-lg-6">
                <h3 class="main text-center">Список всех пользователей</h3>
                <br>
                <div align="center">
                    <table class="tg">
                        <tr>
                            <th>Пользователь</th>
                            <th>Доступ</th>
                            <th>Заблокировать/Разблокировать</th>
                        </tr>
                        <c:forEach items="${allUsers}" var="user" varStatus="status">
                            <tr valign="top">
                                <td>${user.lastname} ${user.name}</td>
                                <td>
                                    <c:if test = "${user.access == true}">
                                        Активный
                                    </c:if>
                                    <c:if test = "${user.access == false}">
                                        Заблокирован
                                    </c:if>
                                </td>
                                <td align="center">
                                    <c:if test = "${user.access == true}">
                                        <a href="${contextPath}/blockUser?access=false&id_user=${user.id}">Заблокировать</a>
                                    </c:if>
                                    <c:if test = "${user.access == false}">
                                        <a href="${contextPath}/blockUser?access=true&id_user=${user.id}">Разблокировать</a>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>    
</header>

<footer class="footer" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="credits">
                    Віра Вдовицька ЕСТМ-18-1
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>