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
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap">
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
                            <a href="#">Главная</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <c:if test="${empty user && empty admin}">
                <div class="col-lg-2">
                    <div class="login">
                        <a href="${contextPath}/login.jsp">Войти</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${!empty user || !empty admin}">
                <div class="col-lg-2">
                    <div class="login">
                        <a href="${contextPath}/logout">Выйти</a>
                    </div>
                </div>
            </c:if>
        </div>
        <c:if test="${!empty user}">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h2>Привет, ${user.name} ${user.lastname}</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="menu__item">
                        <a href="${contextPath}/enter">В кабинет</a>
                    </h2>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty admin}">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h2>Привет, админ</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="menu__item">
                        <a href="${contextPath}/enterAdmin">В кабинет</a>
                    </h2>
                </div>
            </div>
        </c:if>

        <c:if test="${empty user && empty admin}">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h2>Привет, гость</h2>
                </div>
            </div>
        </c:if>

        <div class="row">
            <div class="col-lg-6">
                <div class="main">
                    <h3 class="main__title">
                        О нашей компании
                    </h3>
                    <div class="main__intro">
                        Компания Vulkan Soft это недавно рожденная, но уже процветающая компания
                    </div>
                    <p class="main__text">
                        Vulkan Soft занимается разработкой игр: от романтческих визуальных новел до животного 3д экшена. Сотрудников компании еще пока что немного, а именно 2. Но это не значит, что это конец. После выхода очередной игры-хита планируется набор персонала.

                    </p>
                    <ul class="icons d-flex">
                        <li class="icons__item"><a href="#"><img src="${contextPath}/icons/ig.png" width="44px"></a></li>
                        <li class="icons__item"><a href="#"><img src="${contextPath}/icons/tg.png" width="44px"></a></li>
                        <li class="icons__item"><a href="#"><img src="${contextPath}/icons/fb.png" width="44px"></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6">
                <img src="${contextPath}/vs.png" alt="Community" class="community">
            </div>
        </div>
    </div>
</header>
<section class="info" id="info">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 ">
                <div class="title">
                    <h2 class="title_main">
                        Хотим представить вам проэкты, над которыми работает компания Vulkan Soft
                    </h2>
                    <p class="title__text">
                        В данный момент наша компания планирует выпустить файтинг, в котором вы погрузитесь в невероятный мир животных.
                        Пока что мы вам не скажем, за кого вы будете играть, но мы можем показать элементы 3д графики и дать некоторые подсказки.
                    </p>
                </div>
            </div>
        </div>

        <div class="row" >
            <div class="col-lg-12">
                <div class="feature ">

                    <div class="feature__block">
                        <h3 class="feature__title">
                            Игровые персонажи
                        </h3>
                        <div class="feature__text">
                            У игрока будет возможность кастомизировать своего игрока
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-lg-12 ">
                <div class="feature">

                    <div class="feature__block">
                        <h3 class="feature__title">
                            Мультиплеер
                        </h3>
                        <div class="feature__text">
                            Игрок сможет играть как онлайн, привязавшись к своему аккаунту, так и на одном экране
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

<section id="carousel" class="carousel">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="swiper-container main-slider" id="myCarousel">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide slider-bg-position" style="background:url(${contextPath}/img/car1.jpg)" data-hash="slide1">
                        </div>
                        <div class="swiper-slide slider-bg-position" style="background:url(${contextPath}/img/car2.png)" data-hash="slide2">
                        </div>
                        <div class="swiper-slide slider-bg-position" style="background:url(${contextPath}/img/car3.png)" data-hash="slide3">
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-prev"><i class="fa fa-chevron-left"></i></div>
                    <div class="swiper-button-next"><i class="fa fa-chevron-right"></i></div>
                </div>
            </div>
        </div>
    </div>
</section>

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
<script src="${contextPath}/js/carousel.js"></script>
</body>
</html>