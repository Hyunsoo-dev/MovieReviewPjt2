<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP file upload page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<style>
	.table{
		border : 1px solid black;
		padding : 20px;
		display : flex;
		justify-content: center;
		
	}
	.table__head{
		text-align : center;
		font-size : 20px;
		background-color: dodgerblue;
	}
	.btn__submit{
		text-align:center;
	}
</style>
</head>
<body>
<!-- 
	파일 업로드 페이지 입니다. 	
	
 -->
	
	
	
<form action="fileUploadProc.jsp" method="post" enctype="multipart/form-data">	
<table class="table table-hover">
    <tr>
      <th class = "table__head" colspan="4" >영화 업로드</th>
     <!--  <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th> -->
    </tr>
    <tr>
      <th scope="row">이름</th>
      <td colspan="3">
      	<input type ="text" name="movie_name1">
      </td> 
    </tr>
    <tr>
      <th scope="row">영어이름</th>
     <td colspan="3">
     	<input type ="text" name="movie_name2">
     </td>
    </tr>
    <tr>
      <th scope="row">파일</th>
      <td colspan="3">
      	<input type="file" name="file">
      </td>
    </tr>
     <tr>
      <th scope="row">제작년도</th>
      <td colspan="3">
      	<input type ="text" name="movie_year">
      </td>
    </tr>
     <tr>
      <th scope="row">상영시간</th>
      <td colspan="3">
      	<input type ="text" name="movie_time">
      </td>
    </tr>
     <tr>
      <th scope="row">영화정보</th>
      <td colspan="3">
      	<input type ="text" name="movie_content">
      </td>
    </tr>
     <tr>
      <td colspan="4">
      	<div class="btn__submit">
	      	<input type ="submit" class="btn btn-primary" value="등록">
	      	<input type ="button" class="btn btn-primary" value="취소" onclick="location.href=index.jsp?center=managerMovieList.jsp">
      	</div>
      </td>
    </tr>
</table>
</form>
</body>
</html>