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
		�̸� : <input type ="text" name="movie_name1"><br>
		���� �̸� : <input type ="text" name="movie_name2"><br>
		���� : <input type="file" name="file"><br>
		���۳⵵ : <input type ="text" name="movie_year"><br>
		�󿵽ð� : <input type ="text" name="movie_time"><br>
		��ȭ���� : <input type ="text" name="movie_content"><br>
		<input type="submit" value="���ε�"><br>
	</form>
	
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">��ȭ ���ε�</th>
     <!--  <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th> -->
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">�̸�</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">�����̸�</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">����</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">���۳⵵</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">�󿵽ð�</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">��ȭ����</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</body>
</html>