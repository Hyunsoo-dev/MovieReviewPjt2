<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="user.UserDAO" %>
   <%@ page import="user.User" %>
   <%@ page import="java.io.PrintWriter" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=UTF-8">
<title>전시포유</title>
</head>
<body>
<%
String userID = null;
if(session.getAttribute("userID")!=null){
	userID = (String)session.getAttribute("userID");
}
UserDAO us = new UserDAO();
%>
<script>
 var result = confirm("정말로 탈퇴하시겠습니까?");
	if(result == true){
		<%us.delete(userID);%>
		<%session.setAttribute("userID",null);%>
		alert("회원탈퇴가 되었습니다.");
		location.replace('main.jsp');

	}else{
		history.back();
	}

</script>
</body>
</html>