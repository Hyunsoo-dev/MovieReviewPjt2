<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP file upload page</title>
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
</body>
</html>