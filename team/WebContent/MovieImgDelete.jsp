<%@page import="manager.ManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int movie_no = Integer.parseInt(request.getParameter("movie_no"));
		new ManagerDAO().deleteMovieImg(movie_no, "basic.jpg","basic.jpg" );
		
		
		
		
	%>
		<script>
			alert("사진이 삭제되었습니다.");
			location.href="index.jsp?center=managerMovieList.jsp";
		</script>
</body>
</html>