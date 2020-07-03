<%@page import="movie.movieBean"%>
<%@page import="java.util.Vector"%>
<%@page import="movie.movieDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
 .more-btn{
 	position: absolute;
 	right : 230px;
 	top : 90px;
 }
 .movielist, .searchresult{
 	position : relative;
 	
 }
 .noResult{
 	text-align : center;
 	font-style: italic;
 }
</style>



</head>
<body>


<%
//검색한 영화 이름 가져오기 
	request.setCharacterEncoding("euc-kr");

	String movieName = request.getParameter("movieName").trim(); 
	if(movieName == null || movieName.length() == 0){
		
%>
	<script>
		alert("검색어를 입력하세요.");
		location.href = "form.jsp";
	</script>
<% 
	
	}
%>
	 
	
   <!--  <header class="masthead text-white text-center">
  <div class="overlay"></div>-->
	
	
	
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
		<ul class="navbar-nav">
		    <li class="nav-item active">
		      <a class="nav-link" href="#">상위 검색 결과</a>
		    </li>
		</ul>
			
	</nav>
	<br>
	
	<section class="searchresult">
	<div class="more-btn">
				<a href="MovieListMore.jsp?movieName=<%= movieName%>" data-toggle="tooltip" title="more">더 보기</a>
	</div>
	<table>	
	<%
			movieDAO edao = new movieDAO();
			Vector<movieBean> v = edao.getMovieList(movieName);
			
			//검색 결과가 없는 경우
			if(v.isEmpty()){
	%>
			<div class="noResult">검색 결과가 없습니다.</div>
				
	<%
			}else{
				
				for(int i = 0; i < v.size(); i++){
					if(i == 7) {			
						break;
					}
			
				movieBean ebean = v.get(i);
	%>
		
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td class = "text-info">
				
	
				
				<div class="searchresult__list">
					<div class="searchresult__list-img">
						<a href ="bbs.jsp?movieName=<%=movieName%>"><!-- bbs.jsp로 영화 이름 넘기기 -->
							<img src = "img/<%= ebean.getImg()%>" height ="200" width = "140" /><br>
						</a>
					</div>
					<div class="searchresult__list-content">
						<a href ="bbs.jsp?movieName=<%=movieName%>"><!-- bbs.jsp로 영화 이름 넘기기 -->		
							<%= ebean.getName1()%><br>
							<%= ebean.getMakingYear() %>
						</a>
					</div>	
				</div>		
				</td>
		
	<%
				}
			}
	%>
			
			
			
	</table>
	<hr size="1px" color="gray">
	
	</section> 	
	
	
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
		<ul class="navbar-nav">
		    <li class="nav-item active">
		      <a class="nav-link" href="#">영화</a>
		    </li>
		</ul>
			
	</nav>
	<br>
	<section class="movielist">
	<div class="more-btn">
				<a href="MovieListMore.jsp?movieName=<%= movieName%>" data-toggle="tooltip" title="more">더 보기</a>
	</div>
	
	<table>
		<%
			//검색 결과가 없는 경우
		if(v.isEmpty()){
		%>
			<div class="noResult">검색 결과가 없습니다.</div>
		<%	
		
		}else{
			
			for(int i = 0; i < v.size(); i++){
			
				if(i!=0 && i%3==0) {			
		%>
		
				<tr height="20"></tr>
			
		<%		
			
				}
			
				movieBean ebean = v.get(i);
		%>
		
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<div class="movielist__list">
				<td>
					<div class="movielist__list-img">
						<a href ="bbs.jsp?movieName=<%=movieName%>">
							<img src = "img/<%= ebean.getImg()%>" height ="80" width = "100" /><br>
						</a>
					</div>
				</td>
					<td width = "200" align = "center" class = "text-info">
					<div class="movielist__list-content">
						<a href ="bbs.jsp?movieName=<%=movieName%>">
						<%= ebean.getName1()%><br>
						<%= ebean.getMakingYear() %><br>
						</a>
					</div>	
					</td>
				</div>




        <%
				}
			}
		%>
		
		
	</table>
	</section>
   <!-- </header> -->
  <!-- Bootstrap core JavaScript -->
 <!--  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

	<hr size="1px" color="gray">

</body>
</html>