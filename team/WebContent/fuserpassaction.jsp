<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="user.UserDAO" %>
   <%@ page import="user.User" %>
   <%@ page import="java.io.PrintWriter" %>
   <% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id ="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userEmail"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userID"/>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%



	
	if(user.getUserName() == null || user.getUserEmail() == null|| user.getUserID() == null){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다..')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		UserDAO userDAO =new UserDAO();
		String userPassword = userDAO.fuserpass(user.getUserEmail(),user.getUserName(),user.getUserID());
		System.out.println(userPassword );
		if(userPassword  == null){
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않은 아이디입니다..')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			session.setAttribute("userPassword",userPassword );
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("location.href = 'checkpass.jsp'");
			script.println("</script>");
		}
	}
	



%>
</body>
</html>