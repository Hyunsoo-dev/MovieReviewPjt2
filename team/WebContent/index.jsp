<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table{
		width : 100%;
		
		item-align : center;
	}
	
	.bottom{
		position : static;
		bottom : 0px;
		width : 100%;
	}
</style>
</head>
<body>
<!-- 관리자로 로그인 시 처음 나오는 페이지 입니다. -->

<%	
	request.setCharacterEncoding("euc-kr");
	String center = request.getParameter("center");
	if(center == null){
		center = "manager.jsp";
	}
%>
<table>
<tr>
	<td>
		 <jsp:include page="Top.jsp" /> 
	</td>
</tr>
<tr>
	<div class ="container">
	<div class="centerPage">
	<td>
		<jsp:include page="<%=center %>" />
	</div>
	</div>
	</td>

<tr>

 <tr>
 	<td>
 		<div class="bottom">
 			<jsp:include page="Bottom.jsp" /> 
 		</div>
 	</td>
 </tr>

</table>
</body>
</html>