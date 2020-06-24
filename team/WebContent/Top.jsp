

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
 <meta name = "viewport" content ="width=dvice=width",initial-scale='1'> 	
  <meta charset="UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>watcha</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/landing-page.min.css" rel="stylesheet">
		
	<title>watcha</title>
	


</head>
<body>
 <script>
function press(f){
	if(f.keyCode ==13){
		search.submit();
	}
} 
</script>
 <%
	String userID = null;
	if(session.getAttribute("userID")!=null){
		userID = (String)session.getAttribute("userID");
	}
	
%>

  <%
		if(userID == null){
		
		
		%>
  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">WATCHA</a>
      
      
   <form  action="MovieList.jsp" role="search" method="post" name="search" >
        <div class="form-row">
         <input type="text" class="form-control form-control-lg" placeholder="작품 제목, 배우, 감독을 검색해 보세요." name="movieName" onkeypress="JavaScript:press(this.form)">
            </div>
      </form>
      
      
      <a class="btn btn-primary" href="login.jsp">접속하기</a>
    </div>
  </nav>
<%
		}else if(userID.equals("admin")) {
		%>	

  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">WATCHA</a>
      
           
   <form  action="MovieList.jsp" role="search" method="post" name="search" >
        <div class="form-row">
          <input type="text" class="form-control form-control-lg" placeholder="작품 제목, 배우, 감독을 검색해 보세요." name="movieName" onkeypress="JavaScript:press(this.form)">
        
         
            </div>
      </form>
      
    <a class="btn btn-primary" href="logoutAction.jsp">로그아웃</a>
    </div>
  </nav>
  	<%
		}else{
		%>
		
		<nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">WATCHA</a>
          
   <form  action="MovieList.jsp" role="search" method="post" name="search" >
        <div class="form-row">
       <input type="text" class="form-control form-control-lg" placeholder="작품 제목, 배우, 감독을 검색해 보세요." name="movieName" onkeypress="JavaScript:press(this.form)">
        
         
            </div>
      </form>
      <a class="btn btn-primary" href="logoutAction.jsp">로그아웃</a>
    </div>
  </nav>
  
  <%
  
		}
  %>
		
  
 <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>