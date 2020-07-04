<%@page import="user.UserDAO"%>
<%@page import="manager.ManagerBean"%>
<%@page import="manager.ManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<style>
	input[type="file"] ,input[type="button"]{
		display:none;
	}
	.inputImg__btn{
		 border: 1px solid #ccc;
	    display: inline-block;
	    padding: 6px 12px;
	    cursor: pointer;
	}
</style>
</head>
<body>
<!-- 
	������ ���� ���������� ��ȭ ������ Ŭ���� ��� 
	������ edit , delete �� �� �ִ� ������ �Դϴ�. 
	
	���� �۾� �� �ٽ� managerMovieUpdate �� �Ѿ�� ������ �����մϴ�.



 -->
<%
	request.setCharacterEncoding("euc-kr");
	int movie_no = Integer.parseInt(request.getParameter("movie_no"));
	
	UserDAO udao = new UserDAO();
		
	
	ManagerBean rbean = new ManagerBean();
	ManagerDAO rdao = new ManagerDAO();
	rbean = rdao.getOneList(movie_no);
	
	

%>
	<form id="profileForm" action="MovieImgEditProc.jsp" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>Edit Movie Img</legend>
				<table>
					<tr>
						<th scope="row">Photo</th>
						<td>
							<div class="MovieImgEdit__img">
								<img src="upload/<%= rbean.getMovie_foster() %>">
							</div>
							<div class="MovieImgEdit__btn">
								<span class="MpvieImgEdit__btn-edit">
									<label for="inputImg" class="inputImg__btn">Edit
										<input type="file" id="inputImg" name="file">
									</label>
								</span>
								<span class="MpvieImgEdit__btn-edit">
									<label for="inputImg" class="inputImg__btn">delete
										<input type="button" id="inputImg"  onclick="#">
									</label>
								</span>
								
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">NickName</th>
						<td>
							<div class="MovieImgNickName">
								<input type="text" name="NickName" placeholder="������">
							</div>
						</td>
					</tr>
				</table>
		</fieldset>
	</form> 
</body>
</html>