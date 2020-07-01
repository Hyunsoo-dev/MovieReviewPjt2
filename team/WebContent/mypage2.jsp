<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name = "viewport" content ="width=dvice=width",initial-scale='1'> 	
	<meta charset="UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
 <%@ page import = "user.UserDAO" %>  <%--라이브러리 불러오기--%> 
 <%@ page import = "user.User" %>  <%--라이브러리 불러오기--%> 
  <title>WATCHA</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">
		
	<title>mypage</title>
	<jsp:include page="Top.jsp" />
	<style type="text/css">
	a, a:hover{
	color : #000000;
	text-decoration: none;
  text-align:center;
    text-item:center;
	}
	
	  table {

    border: 1px solid #444444;
	margin-left: auto;
	 margin-right: auto;
   text-align:center;
    text-item:center;
    align:"center";
	BORDER:3; 
 }
  th, td,tr {
    border: 1px solid #444444;
    text-align:center;
    text-item:center;
  padding:10px; 
  font-size:15px;
   align:"center";
  }

  
</style>
</head>
<body>
<%
String userID = null;
if(session.getAttribute("userID")!=null){
	userID = (String)session.getAttribute("userID");
}
System.out.println(userID);
User us = new UserDAO().mypage(userID);

%>
<br>

	<form name="mypage" >
         <h1 style="text-align:center; text-item:center;">회 원 정 보</h1>
        <table>
            <tr>
                 <td style="width: 120px;">이름</td>
                <td style="width: 500px;"><%=us.getUserName() %></td>
            </tr>
            <tr>
              
                <td style="width: 120px;">아이디</td>
                <td style="width: 500px;"><%=userID%></td>
            </tr>
            
            <tr>
            <td style="width: 120px;">이메일</td>
                <td style="width: 500px;"><%=us.getUserEmail() %></td>
               
            </tr>
        <tr>
   		          
 	 	              <td COLSPAN="2"><a href ="mypageupdate.jsp?userID=<%=userID%>"class="btn btn-primary" >회원정보 수정</a>
 	 	             <a href ="userexit.jsp?userID=<%=userID%>" class="btn btn-primary" >회원탈퇴</a></td>
		           </tr>
        </table>
</form>


	<hr size="1px" color="gray">
<jsp:include page="Bottom.jsp" />
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>