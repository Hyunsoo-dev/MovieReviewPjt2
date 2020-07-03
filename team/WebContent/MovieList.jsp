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
//�˻��� ��ȭ �̸� �������� 
	request.setCharacterEncoding("euc-kr");

	String movieName = request.getParameter("movieName").trim(); 
	if(movieName == null || movieName.length() == 0){
		
%>
	<script>
		alert("�˻�� �Է��ϼ���.");
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
		      <a class="nav-link" href="#">���� �˻� ���</a>
		    </li>
		</ul>
			
	</nav>
	<br>
	
	<section class="searchresult">
	<div class="more-btn">
				<a href="MovieListMore.jsp?movieName=<%= movieName%>" data-toggle="tooltip" title="more">�� ����</a>
	</div>
	<table>	
	<%
			movieDAO edao = new movieDAO();
			Vector<movieBean> v = edao.getMovieList(movieName);
			
			//�˻� ����� ���� ���
			if(v.isEmpty()){
	%>
			<div class="noResult">�˻� ����� �����ϴ�.</div>
				
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
						<a href ="bbs.jsp?movieName=<%=movieName%>"><!-- bbs.jsp�� ��ȭ �̸� �ѱ�� -->
							<img src = "img/<%= ebean.getImg()%>" height ="200" width = "140" /><br>
						</a>
					</div>
					<div class="searchresult__list-content">
						<a href ="bbs.jsp?movieName=<%=movieName%>"><!-- bbs.jsp�� ��ȭ �̸� �ѱ�� -->		
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
		      <a class="nav-link" href="#">��ȭ</a>
		    </li>
		</ul>
			
	</nav>
	<br>
	<section class="movielist">
	<div class="more-btn">
				<a href="MovieListMore.jsp?movieName=<%= movieName%>" data-toggle="tooltip" title="more">�� ����</a>
	</div>
	
	<table>
		<%
			//�˻� ����� ���� ���
		if(v.isEmpty()){
		%>
			<div class="noResult">�˻� ����� �����ϴ�.</div>
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