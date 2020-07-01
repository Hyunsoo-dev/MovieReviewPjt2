<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "user.UserDAO" %>  <%--라이브러리 불러오기--%> 
 <%@ page import = "user.User" %> 
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body> 
	<%
		String userID = null;
		if(session.getAttribute("userID") != null)
		{
			userID = (String) session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}	
		
	
	
	
			if(request.getParameter("userName").equals("") ||request.getParameter("userEmail") .equals("")||request.getParameter("userPassword")  .equals(""))
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else
			{
				UserDAO dao = new UserDAO();
				int result = dao.userupdate( request.getParameter("userName"), request.getParameter("userEmail"),request.getParameter("userPassword"),userID);
				if (result == -1)
				{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('정보 수정에 실패했습니다..')");
					script.println("history.back()");
					script.println("</script>");
				}
				else
				{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('정보 수정 성공')");
					script.println("location.href = 'mypage2.jsp'");
					script.println("</script>");
					
				
				
				}
			}
		
	%>
</body>
</html>