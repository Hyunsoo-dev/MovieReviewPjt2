<%@page import="manager.ManagerBean"%>
<%@page import="manager.ManagerDAO"%>
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

</head>
<body>

	
	<section class="movieListMore">
	<%		
			//����Ʈ ���������� ������ ��ư Ŭ�� �� �˻����� ���� �Ѱ���.
			request.setCharacterEncoding("euc-kr");
			String movieName = request.getParameter("movieName");
			
			
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
						<a href ="index.jsp?center=managerMovieInfo.jsp?movie_no=<%= rbean.getMovie_no()%>">
							<img src = "upload/<%= rbean.getMovie_foster() %>" height ="100" width = "100">
						</a>
					</div>	
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>	
				
					<div class="movieListMore__list-content">
						<a href ="index.jsp?center=managerMovieInfo.jsp?movie_no=<%= rbean.getMovie_no()%>">
							<%= rbean.getMovie_name1() %><br>
							<%= rbean.getMovie_year() %>
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

</body>
</html>