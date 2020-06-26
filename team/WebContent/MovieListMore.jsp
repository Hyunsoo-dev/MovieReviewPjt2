<%@page import="movie.movieBean"%>
<%@page import="java.util.Vector"%>
<%@page import="movie.movieDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<jsp:include page="Top.jsp" />
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
		<ul class="navbar-nav">
		    <li class="nav-item active">
		      <a class="nav-link" href="#">영화</a>
		    </li>
		</ul>
			
	</nav>
	<br>
	<section class="movieListMore">
	<%		
			//리스트 페이지에서 더보기 버튼 클릭 시 검색값을 같이 넘겨줌.
			request.setCharacterEncoding("euc-kr");
			String movieName = request.getParameter("movieName");
			
			
			movieDAO edao = new movieDAO();
			Vector<movieBean> v = edao.getMovieList(movieName);
		
		for(int i = 0; i < v.size(); i++){

			movieBean ebean = v.get(i);
	%>	<table>
			
			<tr height = "20">
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<div class="movieListMore__list-img">
						<a href ="bbs.jsp?movieName=<%=movieName%>">
							<img src = "img/<%= ebean.getImg()%>" height ="100" width = "100">
						</a>
					</div>	
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>	
				
					<div class="movieListMore__list-content">
						<a href ="bbs.jsp?movieName=<%=movieName%>">
							<%= ebean.getName1()%><br>
							<%= ebean.getMakingYear() %>
						</a>
					</div>
				</td>
			</tr>
			<tr>	
				<hr class="hr" size="1px" color="white">
				
			</tr>	
	</table>
	
	<%
		}
	%>
		<hr size="1px" color="gray">
	</section>
<jsp:include page="Bottom.jsp" />
</body>
</html>