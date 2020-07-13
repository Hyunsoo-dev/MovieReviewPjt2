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
			//����Ʈ ���������� ������ ��ư Ŭ�� �� �˻����� ���� �Ѱ���.
			request.setCharacterEncoding("euc-kr");
			String movieName = request.getParameter("movieName");
			
			
			ManagerDAO rdao = new ManagerDAO();
			Vector<ManagerBean> v = null;
			
			
			/* 
			 * �����ڷ� �α��� �� ���
			 * ���� ���������� ��ȭ ����Ʈ�� Ŭ���� ����
			 * �˻�â�� ��ȭ�� �˻��� ���� ����.
			 */			
			if(movieName == null){
				 v = rdao.getAllList();	
			}else{
				 v = rdao.getMovieList(movieName);
			} 
			
			
		
			//�˻� ����� ���� ���
			if(v.isEmpty()){
	
	%>
				<div class="noResult">�˻� ����� �����ϴ�.</div>
					
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