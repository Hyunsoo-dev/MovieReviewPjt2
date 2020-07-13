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
<style>
 .noResult{
 	text-align : center;
 	font-style: italic;
 }
 
  .managerMovieList__list{
 	display:flex;
 	justify-content:flex-start;
 	
 	
 	
 }
  .managerMovieList__list-content{
  
 }

 .managerMovieList__list-img{
 	padding-right : 10px;
 }

</style>
</head>
<body>

	
	<section class="managerMovieList">
	<%		
			//리스트 페이지에서 더보기 버튼 클릭 시 검색값을 같이 넘겨줌.
			request.setCharacterEncoding("euc-kr");
			String movieName = request.getParameter("movieName");
			
			
			ManagerDAO rdao = new ManagerDAO();
			Vector<ManagerBean> v = null;
			
			
			/* 
			 * 관리자로 로그인 한 경우
			 * 메인 페이지에서 영화 리스트를 클릭한 경우와
			 * 검색창에 영화를 검색한 경우로 나눔.
			 */			
			if(movieName == null){
				 v = rdao.getAllList();	
			}else{
				 v = rdao.getMovieList(movieName);
			} 
			
			
		
			//검색 결과가 없는 경우
			if(v.isEmpty()){
	
	%>
				<div class="noResult">검색 결과가 없습니다.</div>
					
	<%}
			else{
				
				for(int i = 0; i < v.size(); i++){

				ManagerBean rbean = v.get(i);
	%>	
	<table>
			
			<tr>
				<td>
				<div class="managerMovieList__list">			
					<div class="managerMovieList__list-img">
						<a href ="index.jsp?center=managerMovieInfo.jsp?movie_no=<%= rbean.getMovie_no()%>">
							<img src = "upload/<%= rbean.getMovie_foster() %>" height ="130" width = "150">
						</a>
					</div>
					 <div class="managerMovieList__list-content">	
						 <a href ="index.jsp?center=managerMovieInfo.jsp?movie_no=<%= rbean.getMovie_no()%>">
							<%= rbean.getMovie_name1() %>
							<br>
							<%= rbean.getMovie_year() %>
						</a>
					</div>	
				</div>	
				 </td>
						<%-- <div class="managerMovieList__list-content">
							<a href ="index.jsp?center=managerMovieInfo.jsp?movie_no=<%= rbean.getMovie_no()%>">
								<%= rbean.getMovie_name1() %><br>
								<%= rbean.getMovie_year() %>
							</a>
						</div> --%>
			   
			</tr>
			<tr>	
				<hr class="hr" size="1px" color="white">
				
			</tr>	
	</table>
	
	<%
			}
		}
	%>
		<hr size="1px" color="gray">
	</section>

</body>
</html>