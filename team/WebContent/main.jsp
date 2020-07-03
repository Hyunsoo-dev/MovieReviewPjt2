<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name = "viewport" content ="width=dvice=width",initial-scale='1'> 	
	<meta charset="UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>WATCHA</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">
		
	<title>watcha</title>
	
</head>

<body>
<%-- <%
	String userID = null;
	if(session.getAttribute("userID")!=null){
		userID = (String)session.getAttribute("userID");
	}
	
%>

  <%
		if(userID == null){
		
		
		%>
  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">WATCHA</a>
 <ul class = "nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class ="dropdown-toggle"여기서 #은 없음을 의미 
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href = "join.jsp">회원가입</a></li>
			</ul>
			</li>
		</ul>
    </div>
  </nav>
<%
		}else if(userID.equals("admin")) {
		%>	

  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">WATCHA</a>
  <ul class = "nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class ="dropdown-toggle"여기서 #은 없음을 의미 
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="user.jsp">회원관리</a></li>
				<li><a href = "logoutAction.jsp">로그아웃</a></li>
			</ul>
			</li>
		</ul>
    </div>
  </nav>
  	<%
		}else{
	%>
		
		<nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">WATCHA</a>
     <ul class = "nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class ="dropdown-toggle"여기서 #은 없음을 의미 
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">마이페이지<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="mypage1.jsp">마이페이지</a></li>
				<li><a href = "logoutAction.jsp">로그아웃</a></li>
			</ul>
			</li>
		</ul>
    </div>
  </nav>
  
  <%
  
		}
  %>
		
   --%>
  
  <%
   // 관리자로 로그인 한 경우
   	 String userID = null; 
  	if(session.getAttribute("userID")!=null){
  		userID = (String)session.getAttribute("userID");
  	}
  	
  	if(userID == null || (!userID.equals("admin"))){
  		
  		
  	
  %>	
 <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">WATCHA</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form action="index.jsp?center=MovieList.jsp" role="search" method="post">
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                 <input type="text" name="movieName" class="form-control form-control-lg" placeholder="작품 제목, 배우, 감독을 검색해 보세요." >
            </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">검색</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>
 
 
  
  
	<%	
  	}else if(userID.equals("admin")){
  		
  	
	%>

<!-- admin 으로 로그인 8한 경우  -->
	 <!-- Masthead -->
  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">WATCHA</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form action="index.jsp?center=managerMovieList.jsp" role="search" method="post">
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                 <input type="text" name="movieName" class="form-control form-control-lg" placeholder="작품 제목, 배우, 감독을 검색해 보세요." >
            </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">검색</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>
 <%
  	}
 %>

  <!-- Testimonials -->
  <section class="testimonials text-center bg-light">
    <div class="container">
      <h2 class="mb-5">삼 대 장</h2>
      <div class="row">
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-1.jpg" alt="">
            <h5>김 현 수</h5>
            <p class="font-weight-light mb-0">"Father of speed"</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-2.jpg" alt="">
            <h5>이 경 환</h5>
            <p class="font-weight-light mb-0">"ㄴr는  ㄱㅏ끔 눈물을 흘린댜......"</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-3.jpg" alt="">
            <h5>김 상 욱</h5>
            <p class="font-weight-light mb-0">"특기 : 삼각김밥으로 사람 겁주기"</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Call to Action -->
  <section class="call-to-action text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h2 class="mb-4">고민 접어두고 우리랑 영화 즐겨요!</h2>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form  action="join.jsp"  method="post">
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                <input type="email" name="userEmail" id="userEmail" class="form-control form-control-lg" placeholder="이메일을 입력하세요.">
              </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">회원 가입!</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>



  <!-- Footer -->
   <!--
  <footer class="footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <ul class="list-inline mb-2">
            <li class="list-inline-item">
              <a href="#">About</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Contact</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
          </ul>
          <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2020. All Rights Reserved.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
          <ul class="list-inline mb-0">
            <li class="list-inline-item mr-3">
              <a href="#">
                <i class="fab fa-facebook fa-2x fa-fw"></i>
              </a>
            </li>
            <li class="list-inline-item mr-3">
              <a href="#">
                <i class="fab fa-twitter-square fa-2x fa-fw"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-instagram fa-2x fa-fw"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
 -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src ="js/bootstrap.js"></script>
	<script src="js/slid.js"></script>
</body>
</html>