<%@page import="manager.ManagerBean"%>
<%@page import="java.util.Vector"%>
<%@page import="manager.ManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.movieListMore{
		
	
		
	}
</style>
<meta charset="EUC-KR">
<title>manager page</title>
<jsp:include page="Top.jsp" />

</head>
<body>
	<header>
		<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			<ul class="navbar-nav">
			    <li class="nav-item active">
			      <a class="nav-link" href="manager.jsp">영화 리스트</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="InsertMovie.jsp">영화 정보 입력</a>
			    </li>
			 </ul>
		</nav>
	</header>
	<section class="movieListMore">
	<%
		ManagerDAO rdao = new ManagerDAO();
		Vector<ManagerBean> v = rdao.getAllList(); 

		for(int i = 0; i < v.size(); i++){

			ManagerBean rbean = v.get(i);
	%>
		<table>
			
			<tr height = "20">
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<div class="movieListMore__list-img">
						<a href ="#">
							<img src = "img/<%= rbean.getMovie_foster() %>" height ="100" width = "100">
						</a>
					</div>	
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>	
				
					<div class="movieListMore__list-content">
						<a href ="#">
							<%= rbean.getMovie_name1() %>
							<br>
							<%= rbean.getMovie_name2() %>
						</a>
					</div>
				</td>
			</tr>
			<tr>	
				<hr class="hr" size="1px" color="white">
				
			</tr>
	<%
		}
	%>	
	</table>
	
	</section>
</body>
</html>