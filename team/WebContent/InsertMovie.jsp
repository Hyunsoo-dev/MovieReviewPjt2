<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<jsp:include page="Top.jsp" />


</head>
<body>
	<%
		String center = request.getParameter("center");
		if(center == null){
			center = "Center.jsp";
		}
		
		//�˻��� ��ȭ �̸� �������� 
		String movieName = request.getParameter("movieName");
	%>
	<header>
			<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			<ul class="navbar-nav">
			    <li class="nav-item active">
			      <a class="nav-link" href="manager.jsp">��ȭ ����Ʈ</a>
			    </li>
			 </ul>
		</nav>
	</header>
	
	
  
   <header class="masthead text-white text-center">
    <div class="overlay"></div>
	<div>��ȭ ���� �Է�</div>
	
	<form action="insertMovieProc.jsp" method = "get">
		<table>
			<tr>
				<td>��ȭ�̸�</td>
				<td><input type = "text" name = "name1"></td>
			</tr>
			<tr>
				<td>���۳⵵</td>
				<td><input type = "text" name = "makingYear"></td>
			</tr>
			
			
		</table>
	</form>
	
</body>
</html>