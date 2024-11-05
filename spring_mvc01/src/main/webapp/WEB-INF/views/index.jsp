<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>    
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>main</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" href="/resources/css/main.css">
        <link rel="stylesheet" href="/resources/css/weather.css"><!-- 날씨 위웻 추가-->

        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
        <script defer src="/resources/js/swiper_controller2.js"></script>

        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- 날씨 위웻 추가 -->
        <script src="/resources/js/weather.js"></script><!-- 날씨 위웻 추가 -->
    </head>

    <body>
        <div id="container">
            <div class="wrap">
                <h1 style="text-align: center;">
                    <img src="./images/logo.png" alt="logo">
                </h1>
            </div>
            <div class="nav-left visible-xs">
                <div class="button" id="btn">
                    <div class="bar top"></div>
                    <div class="bar middle"></div>
                    <div class="bar bottom"></div>
                </div>
            </div>
            <!-- nav-left -->
            <main class="move-to-left2">
                <div class="contents">

                    <ul class="search_container">
                        <li class="search">
                            <div class="search_div">
                                <form action="/Integrated Search.html">
                                    <input type="text" name="" id="" placeholder="주소 혹은 지역명을 입력해주세요">
                                    <span class="material-icons">search</span>
                                </form>
                            </div>
                        </li>
                        <li class="gnb_menu">
                            <ul class="gnb">
                                <li onclick="location.href='login.html'">
                                    <span class="material-icons">person</span>
                                    <p>로그인</p>
                                </li>
                                <li onclick="location.href='join.html'">
                                    <span class="material-icons">login</span>
                                    <p>회원가입</p>
                                </li>
                                <li onclick="location.href='customer.html'">
                                    <span class="material-icons">headphones</span>
                                    <p>고객센터</p>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <section class="garosu_main_contents">
                        <ul>
                            <li>
                                <div class="garosu_slider">
                                    <!-- Slider main container -->
                                    <div class="swiper">
                                        <!-- Additional required wrapper -->
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide" onclick="location.href='sub1-2.html'" style="background-image: url('./images/main_slide_1.jpg');">
                                                <div class="text_box">
                                                    <h2>공원찾기</h2>
                                                    <p>공원을 지역별로 찾을 수 있습니다.</p>
                                                </div>
                                            </div>
                                            <div class="swiper-slide" onclick="location.href='sub2-2.html'" style="background-image: url('./images/main_slide_2.jpg');">
                                                <div class="text_box">
                                                    <h2>가로수길 찾기</h2>
                                                    <p>가로수길을 지역별로 찾을 수 있습니다.</p>
                                                </div>
                                            </div>
                                            <div class="swiper-slide" onclick="location.href='sub3-2.html'" style="background-image: url('./images/main_slide_3.jpg');">
                                                <div class="text_box">
                                                    <h2>보호수 찾기</h2>
                                                    <p>보호수를 지역별로 찾을 수 있습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- If we need pagination -->
                                        <!-- <div class="swiper-pagination"></div> -->
                        
                                        <!-- If we need navigation buttons -->
                                        <div class="swiper-button-prev">
                                            <div class="material-icons">arrow_back</div>
                                        </div>
                                        <div class="swiper-button-next">
                                            <div class="material-icons">arrow_forward</div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="garosu_find" onclick="location.href='sub2-1.html'">
                                    <p>가로수길 찾기</p>
                                    <em>
                                        원하시는 가로수길 산책 경로를 <br> 
                                        찾을 수 있습니다.
                                    </em>
                                </div>
                                <div class="garosu_status" onclick="location.href='sub3-3.html'">
                                    <p>보호수 현황</p>
                                    <em>
                                        대한민국의 보호수는 생물학적, 역사적, <br> 
                                        문화적 가치를 지닌 나무로, 법적으로  <br>
                                        보호받는 대상입니다. 
                                    </em>
                                </div>
                            </li>
                        </ul>
                    </section>

                    <section class="event_find_contents">
                        <p class="title">녹지행사찾기</p>
                        <ul>
                            <li>
                                <div class="event_slider">
                                    <!-- Slider main container -->
                                    <div class="swiper">
                                        <!-- Additional required wrapper -->
                                        <div class="swiper-wrapper">
                                            <!-- Slides -->
                                            <div class="swiper-slide"  onclick="location.href='sub4-1.html'">
                                                <img src="./images/event_banner_1.jpg" alt="event_banner_1">
                                                <div>
                                                    <span>녹지행사</span>
                                                    <h3>2024 상상스타터클래스 2024 상상스타터클래스 2024 상상스타터클래스</h3>
                                                    <p>
                                                        강의 : 2024.10.31~2024.11.30 <br>
                                                        접수 : 2024.09.26~2024.10.21
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="swiper-slide"  onclick="location.href='sub4-1.html'">
                                                <img src="./images/event_banner_2.jpg" alt="event_banner_2">
                                                <div>
                                                    <span>녹지행사</span>
                                                    <h3>2024 상상스타터클래스 2024 상상스타터클래스 2024 상상스타터클래스</h3>
                                                    <p>
                                                        강의 : 2024.10.31~2024.11.30 <br>
                                                        접수 : 2024.09.26~2024.10.21
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="swiper-slide"  onclick="location.href='sub4-1.html'">
                                                <img src="./images/event_banner_3.jpg" alt="event_banner_3">
                                                <div>
                                                    <span>녹지행사</span>
                                                    <h3>2024 상상스타터클래스 2024 상상스타터클래스 2024 상상스타터클래스</h3>
                                                    <p>
                                                        강의 : 2024.10.31~2024.11.30 <br>
                                                        접수 : 2024.09.26~2024.10.21
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="swiper-slide"  onclick="location.href='sub4-1.html'">
                                                <img src="./images/event_banner_4.jpg" alt="event_banner_4">
                                                <div>
                                                    <span>녹지행사</span>
                                                    <h3>2024 상상스타터클래스 2024 상상스타터클래스 2024 상상스타터클래스</h3>
                                                    <p>
                                                        강의 : 2024.10.31~2024.11.30 <br>
                                                        접수 : 2024.09.26~2024.10.21
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="swiper-slide"  onclick="location.href='sub4-1.html'">
                                                <img src="./images/event_banner_5.jpg" alt="event_banner_5">
                                                <div>
                                                    <span>녹지행사</span>
                                                    <h3>2024 상상스타터클래스 2024 상상스타터클래스 2024 상상스타터클래스</h3>
                                                    <p>
                                                        강의 : 2024.10.31~2024.11.30 <br>
                                                        접수 : 2024.09.26~2024.10.21
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                        
                                        <!-- If we need navigation buttons -->
                                        <div class="swiper-button-prev">
                                            <div class="material-icons">arrow_back</div>
                                        </div>
                                        <div class="swiper-button-next">
                                            <div class="material-icons">arrow_forward</div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="calendar">
                                
                            </li>
                        </ul>
                    </section>

                    <section class="notice_contents">
                        <p class="title">공지사항</p>
                        <ul>
                            <li onclick="location.href='notice_read.html'" >
                                <span class="category">카테고리</span>
                                <p class="title">공지사항 타이틀 입니다. 공지사항 타이틀 입니다.공지사항 타이틀 입니다.공지사항 타이틀 입니다.</p>
                                <em>2024.00.00</em>
                            </li>
                            <li onclick="location.href='notice_read.html'">
                                <span class="category">카테고리</span>
                                <p class="title">공지사항 타이틀 입니다.</p>
                                <em>2024.00.00</em>
                            </li>
                            <li onclick="location.href='notice_read.html'">
                                <span class="category">카테고리</span>
                                <p class="title">공지사항 타이틀 입니다.</p>
                                <em>2024.00.00</em>
                            </li>
                            <li onclick="location.href='notice_read.html'">
                                <span class="category">카테고리</span>
                                <p class="title">공지사항 타이틀 입니다.</p>
                                <em>2024.00.00</em>
                            </li>
                        </ul>
                        <button onclick="location.href='notice.html'">전체보기</button>
                    </section>

                    <section class="review_contents">
                        <p class="title">리뷰</p>
                        <ul>
                            <li onclick="location.href='riview_read.html'">
                                <img src="./images/rewiew_1.jpg" alt="rewiew_1">
                                <div class="contents_box">
                                    <p>타이틀입니다. 타이틀입니다. 타이틀입니다. 타이틀입니다.</p>
                                    <em>내용입니다.</em>
                                </div>
                            </li>
                            <li onclick="location.href='riview_read.html'">
                                <img src="./images/rewiew_2.jpg" alt="rewiew_2">
                                <div class="contents_box">
                                    <p>타이틀입니다.</p>
                                    <em>내용입니다.</em>
                                </div>
                            </li>
                            <li onclick="location.href='riview_read.html'">
                                <img src="./images/rewiew_3.jpg" alt="rewiew_3">
                                <div class="contents_box">
                                    <p>타이틀입니다.</p>
                                    <em>내용입니다.</em>
                                </div>
                            </li>
                            <li onclick="location.href='riview_read.html'">
                                <img src="./images/rewiew_4.jpg" alt="rewiew_4">
                                <div class="contents_box">
                                    <p>타이틀입니다.</p>
                                    <em>내용입니다.</em>
                                </div>
                            </li>
                            <li onclick="location.href='riview_read.html'">
                                <img src="./images/rewiew_5.jpg" alt="rewiew_5">
                                <div class="contents_box">
                                    <p>타이틀입니다.</p>
                                    <em>내용입니다.</em>
                                </div>
                            </li>
                            <li onclick="location.href='riview_read.html'">
                                <img src="./images/rewiew_6.jpg" alt="rewiew_6">
                                <div class="contents_box">
                                    <p>타이틀입니다.</p>
                                    <em>내용입니다.</em>
                                </div>
                            </li>
                        </ul>
                        <button onclick="location.href='review.html'">전체보기</button>
                    </section>

                    <section class="customer_contents">
                        <ul>
                            <li onclick="location.href='customer.html'">
                                <p>고객의 소리</p>

                            </li>
                            <li onclick="location.href='faq.html'">
                                <p>자주하는 질문</p>
                            </li>
                        </ul>
                    </section>
                </div>

                

                <footer>
                    <ul>
                        <li>
                            <img src="./images/logo.png" alt="logo">
                            
                            <p>
                                TEL : <a href="tel:02-739-7235">02-739-7235</a> | FAX : 
                                <a href="tel:02-733-3460">02-733-3460</a><br>
                                주소 : 서울특별시 마포구 백범로 23, 3층 (신수동, 케이터틀)
                            </p>
                            
                            <ul class="f_menu">
                                <li onclick="location.href='qna.html'">개인정보처리방침</li>
                                <li onclick="location.href='qna.html'">이용약관</li>
                                <li onclick="location.href='customer.html'">고객센터</li>
                                <li onclick="location.href='notice.html'">공지사항</li>
                            </ul>
                            <p>© Green Spot Finder. All Rights Reserved.</p>
                        </li>
                        <li>
                            <ul class="icon">
                                <li class="kakaotalk"></li>
                                <li class="instagram"></li>
                                <li class="youtube"></li>
                            </ul>
                        </li>
                    </ul>
                </footer>

                <!-- nav-right -->
                <!-- <nav>
                    <div class="nav-right hidden-xs">
                        <div class="button" id="btn">
                            <div class="bar top"></div>
                            <div class="bar middle"></div>
                            <div class="bar bottom"></div>
                        </div>
                    </div>
                </nav> -->
            </main>

            <div class="sidebar active sidebar_pc">

                <ul class="container">
                    <h1>
                        <img src="./images/logo.png" alt="logo">
                    </h1>

                    <ul class="slider_gnb">
                        <li>
                            <a href="">로그인</a>
                        </li>
                        <li>
                            <a href="">회원가입</a>
                        </li>
                        <li>
                            <a href="">고객센터</a>
                        </li>
                    </ul>

                    <li class="main_menu">
                        <div class="main_menu_area">
                            <h3 class="title">
                                공원찾기
                            </h3>
                        </div>
                        <div class="answer">
                            <p class="text" onclick="location.href='sub1-1.html'">
                                공원 이야기
                            </p>
                            <p class="text" onclick="location.href='sub1-2.html'">
                                지역별 공원찾기
                            </p>
                            <p class="text" onclick="location.href='sub1-3.html'">
                                면적별 공원 찾기
                            </p>
                            <p class="text" onclick="location.href='sub1-4.html'">
                                공원 연락하기
                            </p>
                        </div>
                        <button class="btn">
                            <i class="fa-solid fa-chevron-up icon open"></i>
                            <i class="fa-solid fa-chevron-down icon close"></i>
                        </button>
                    </li>
                    <li class="main_menu">
                        <div class="main_menu_area">
                            <h3 class="title">
                                가로수길 찾기
                            </h3>
                        </div>
                        <div class="answer">
                            <p class="text" onclick="location.href='sub2-1.html'">
                                가로수길 걷기
                            </p>
                            <p class="text" onclick="location.href='sub2-2.html'">
                                지역별 가로수길 찾기
                            </p>
                            <p class="text" onclick="location.href='sub2-3.html'">
                                산책코스 찾기
                            </p>
                            <p class="text" onclick="location.href='sub2-4.html'">
                                가로수길 수목 조회
                            </p>
                        </div>
                        <button class="btn">
                            <i class="fa-solid fa-chevron-up icon open"></i>
                            <i class="fa-solid fa-chevron-down icon close"></i>
                        </button>
                    </li>
                    <li class="main_menu">
                        <div class="main_menu_area">
                            <h3 class="title">
                                지역 속 보호수
                            </h3>
                        </div>
                        <div class="answer">
                            <p class="text" onclick="location.href='sub3-1.html'">
                                보호수란?
                            </p>
                            <p class="text" onclick="location.href='sub3-2.html'">
                                지역별로 찾기
                            </p>
                            <p class="text" onclick="location.href='sub3-3.html'">
                                보호수 현황표
                            </p>
                        </div>
                        <button class="btn">
                            <i class="fa-solid fa-chevron-up icon open"></i>
                            <i class="fa-solid fa-chevron-down icon close"></i>
                        </button>
                    </li>
                    <li class="main_menu">
                        <div class="main_menu_area">
                            <h3 class="title">
                                녹지 행사
                            </h3>
                        </div>
                        <div class="answer">
                            <p class="text" onclick="location.href='sub4-1.html'">
                                날짜별 행사 찾기
                            </p>
                            <p class="text" onclick="location.href='sub4-2.html'">
                                지역별로 행사 찾기
                            </p>
                        </div>
                        <button class="btn">
                            <i class="fa-solid fa-chevron-up icon open"></i>
                            <i class="fa-solid fa-chevron-down icon close"></i>
                        </button>
                    </li>
                    <li class="main_menu">
                        <div class="main_menu_area">
                            <h3 class="title">
                                커뮤니티
                            </h3>
                        </div>
                        <div class="answer">
                            <p class="text" onclick="location.href='notice.html'">
                                공지사항
                            </p>
                            <p class="text" onclick="location.href='review.html'">
                                리뷰
                            </p>
                            <p class="text" onclick="location.href='customer.html'">
                                고객의 소리
                            </p>
                            <p class="text" onclick="location.href='faq.html'">
                                자주하는 질문
                            </p>
                            <p class="text" onclick="location.href='qna.html'">
                                1:1 문의
                            </p>
                        </div>
                        <button class="btn">
                            <i class="fa-solid fa-chevron-up icon open"></i>
                            <i class="fa-solid fa-chevron-down icon close"></i>
                        </button>
                    </li>
                </ul>
                <div class="weather-widget">    
        			<div class="temperature"><p id="temperature"></p></div>
				    <div class="status"><p id="condition"></p></div>
				    <div class="location">신수동</div>
				    <div class="feels-like">22° / 15° 체감온도 22°</div>
				    <div class="weather-icon">
				    	<img id="img_icon" src="/resources/images/free-icon-01.png">
				    </div>        			
                </div>
            </div>
        </div>


        <button id="goTop">
            <span class="material-icons">arrow_upward</span>
        </button>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
            
            $(document).ready(function () {
                function toggleSidebar() {
                    $(".button").toggleClass("active");
                    $("main").toggleClass("move-to-left");
                    $(".sidebar-item").toggleClass("active");
                    $(".sidebar-item").toggleClass("active");
                }

                $(".button").on("click tap", function () {
                    toggleSidebar();
                });
            });

            
            const btns = document.querySelectorAll(".main_menu_area, .btn");

            btns.forEach((btn) => {
                btn.addEventListener("click", () => {
                    const faqItem = btn.parentNode;
                    const isActive = faqItem.classList.contains("active");

                    removeActiveClasses();

                    if (!isActive) {
                        faqItem.classList.add("active");
                    }
                });
            });

            function removeActiveClasses() {
                btns.forEach((btn) => {
                    btn.parentNode.classList.remove("active");
                });
            }
                

            function open_chatroom(){
                var windowWidth = $( window ).width(); 

                if(windowWidth > 1000) {
                    //창 가로 크기가 1000px 이상일 경우  
                    console.log("1000px 이상");

                    $("main").addClass("move-to-left2");
                    $("main").addClass("move-to-left0");
                    $(".button").removeClass("active");

                } else if(windowWidth > 768) {
                    //창 가로 크기가 500 미만일 경우  
                    console.log("768px 이상");

                    if($("#btn").hasClass("active") === true) {
                        // class가 존재함.
                        
                    } else {
                        // class가 존재하지 않음	
                        $("main").removeClass();
                    }

                    $(".sidebar").removeClass("sidebar_pc");
                    $("main").removeClass("move-to-left2");

                } else if(windowWidth > 480) {
                    //창 가로 크기가 500 미만일 경우  
                    console.log("480px 이상");

                    $(".sidebar").removeClass("sidebar_pc");
                    $("main").removeClass("move-to-left2");

                } else if(windowWidth > 320) {
                    //창 가로 크기가 500 미만일 경우  
                    console.log("320px 이상");

                    $(".sidebar").removeClass("sidebar_pc");
                    $("main").removeClass("move-to-left2");
                    

                    function toggleSidebar() {
                        $(".button").toggleClass("active");
                        $("main").toggleClass("move-to-left");
                    }
                }
            }

            
            open_chatroom();

            $( window ).resize(function() {
                //창크기 변화 감지
                open_chatroom();
            });

            // sroll top Script
            const basicScrollTop = function () {
                // The button
                const btnTop = document.querySelector('#goTop');
                // Reveal the button
                const btnReveal = function () {
                    if (window.scrollY >= 300) {
                        btnTop.classList.add('is-visible');
                    } else {
                        btnTop.classList.remove('is-visible');
                    }
                }
                // Smooth scroll top
                // Thanks to => http://stackoverflow.com/a/22610562
                const TopscrollTo = function () {
                    if (window.scrollY != 0) {
                        setTimeout(function () {
                            window.scrollTo(0, window.scrollY - 30);
                            TopscrollTo();
                        }, 5);
                    }
                }
                // Listeners
                window.addEventListener('scroll', btnReveal);
                btnTop.addEventListener('click', TopscrollTo);

            };
            basicScrollTop();

            AOS.init();
        </script>
    </body>

</html>
