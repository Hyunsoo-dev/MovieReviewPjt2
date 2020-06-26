<%@page import="manager.ManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>managerUpdateProc page</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="rbean" class="manager.ManagerBean" >
	<jsp:setProperty name="rbean" property="*" />
</jsp:useBean>

<%
	
	ManagerDAO rdao = new ManagerDAO();
	rdao.managerUpdate(rbean);
	
	
%>
	<script>
		alert("수정되었습니다.");
		location.href="index.jsp?center=manager.jsp";
	</script>

</body>
</html>