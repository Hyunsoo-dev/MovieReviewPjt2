<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="user.UserDAO" %>
   <%@ page import="user.User" %>
   <%@ page import="java.io.PrintWriter" %>
   <% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id ="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID")!=null){
		userID = (String)session.getAttribute("userID");
	}

	 String userPassword = request.getParameter("userPassword"); 	 
	UserDAO userDAO =new UserDAO();
	User us = userDAO.mypage(userID);



	if(userPassword == null || us.getUserPassword()==null){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('다시 입력해 주세요.')");
		script.println("history.back()");
		script.println("</script>");

	}if(!userPassword.equals(us.getUserPassword())){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀렸습니다.')");
		script.println("history.back()");
		script.println("</script>");
	
	}if(userPassword .equals(us.getUserPassword())){
		session.setAttribute("userID",userID);
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("location.href = 'mypage2.jsp'");
		script.println("</script>");
	}


%>
</body>
</html>