<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP file upload page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<form action="fileUploadProc.jsp" method="post" enctype="multipart/form-data">
		이름 : <input type ="text" name="movie_name1"><br>
		영어 이름 : <input type ="text" name="movie_name2"><br>
		파일 : <input type="file" name="file"><br>
		제작년도 : <input type ="text" name="movie_year"><br>
		상영시간 : <input type ="text" name="movie_time"><br>
		영화정보 : <input type ="text" name="movie_content"><br>
		<input type="submit" value="업로드"><br>
	</form>
	
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">영화 업로드</th>
     <!--  <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th> -->
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">이름</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">영어이름</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">파일</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">제작년도</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">상영시간</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">영화정보</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</body>
</html>