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
<title>watcha</title>
</head>
<body>
<%



	
	if(user.getUserName() == null || user.getUserEmail() == null){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다..')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		UserDAO userDAO =new UserDAO();
		String userID = userDAO.fuserid(user.getUserEmail(),user.getUserName());
	
		if(userID == null){
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않은 아이디입니다..')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			session.setAttribute("userEmail",user.getUserEmail());
			session.setAttribute("userName",user.getUserName());
			PrintWriter script= response.getWriter();
			script.println("<script>");
			script.println("location.href = 'check.jsp'");
			script.println("</script>");
		}
	}
	



%>
</body>
</html>