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
		�̸� : <input type ="text" name="movie_name1"><br>
		���� �̸� : <input type ="text" name="movie_name2"><br>
		���� : <input type="file" name="file"><br>
		���۳⵵ : <input type ="text" name="movie_year"><br>
		�󿵽ð� : <input type ="text" name="movie_time"><br>
		��ȭ���� : <input type ="text" name="movie_content"><br>
		<input type="submit" value="���ε�"><br>
	</form>
</body>
</html>