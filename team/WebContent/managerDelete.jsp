<%@page import="manager.ManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>managerDelete page</title>
</head>
<body>


			<%
				request.setCharacterEncoding("euc-kr");
				int Movie_no = Integer.parseInt(request.getParameter("no"));
				ManagerDAO rdao = new ManagerDAO();
				
				rdao.managerDelete(Movie_no);
				
				
			%>
				<script>
					location.href="index.jsp?center=manager.jsp";
				</script>
			
					
</body>
</html>