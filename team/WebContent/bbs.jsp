<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import ="bbs.MoviebbsDTO" %>
	<%@ page import ="bbs.MoviebbsDAO" %>
<!DOCTYPE html>
<html>
<head>
	<meta name = "viewport" content ="width=dvice=width",initial-scale='1'> 	
	<meta charset="UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Landing Page - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">
		
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="#">WATCHA</a>
      <a class="btn btn-primary" href="#">Sign In</a>
    </div>
  </nav>
    <%   //영화이름으로 검색할시 영화이름을 받음
    request.setCharacterEncoding("UTF-8");
  	String MovieName = request.getParameter("MovieName");  
 	
    MoviebbsDAO dao = new MoviebbsDAO();
  	 MoviebbsDTO dto = dao.infoSelect(MovieName); 
 	%>
 	
  <!-- Masthead -->
	<div align="center">
	<!-- <form action="uploadAction.jsp" method="post" enctype="multipart/form-data"> -->
	<img src="<%=request.getContextPath()%>/img/01.png" width="200">
	<%--  <%= dto.movie_realfoster() %>    영화 포스터--%>	
	<!-- </form> -->
	</div>
	
	<div align="center">
	<h1><%= dto.getMovie_name1() %></h1>
	</div>
	&nbsp;&nbsp;&nbsp;
	<div align="center">
	 <Table width="500" border="1">
	<tr align="center">
		<td>기본 정보</td>
	</tr>
	<tr align="center">
		<td><%= dto.getMovie_name2() %></td>
	</tr>
	<tr align="center">
		<td><%= dto.getMovie_year() %></td>
	</tr>
	<tr align="center">
		<td><%= dto.getMovie_time() %></td>
	</tr>
	<tr align="center">
		<td><%= dto.getMovie_contents() %></td>
	</tr>
	<tr align="center">
		<td><a href="plus.jsp"> 더보기</a></td>
	</tr>
	</Table>
	
	</div>
	
	
	<!-- <section>
	<div align="center">
	<header></header> 
	
	<br>
	<span></span>
	<span></span>
	<div>
	<article>
	
	<br>
	<a href="plus.jsp"> 더보기</a>
	</article>
	</div>
	</div>
	</section>
	 -->
	
	


 

  <!-- Testimonials -->
  

  <!-- Call to Action -->
  

  <!-- Footer -->
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
          <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2019. All Rights Reserved.</p>
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

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>