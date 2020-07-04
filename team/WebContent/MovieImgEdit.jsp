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
	관리자 수정 페이지에서 영화 사진을 클릭한 경우 
	사진을 edit , delete 할 수 있는 페이지 입니다. 
	
	사진 작업 후 다시 managerMovieUpdate 로 넘어가서 수정을 진행합니다.



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
								<input type="text" name="NickName" placeholder="김현수">
							</div>
						</td>
					</tr>
				</table>
		</fieldset>
	</form> 
</body>
</html>