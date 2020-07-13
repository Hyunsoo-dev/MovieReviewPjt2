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
	input[type="file"] ,input[type="button"] {
		display:none;
	}
	.inputImg__btn , .movieImgEdit__button{
		width : 100px;
		border: 1px solid #ccc;
	    display: inline-block;
	    padding: 6px 12px;
	    cursor: pointer;
	    background-color : white;
	}
	/* fieldset ��Ÿ�� */
	.editTable{
		width : 80%;
		margin : 0 auto;
		left : 0;
		right : 0;	
		padding : 50px 0px;
	}
	/* ���̺� ���� ��Ÿ�� */
	 .editTable__title{
		margin : 0 auto;
		left : 0;
		right : 0;
		text-align : center;
	}
	/* ���̺� ��Ÿ�� */
	.editTable__table{
		
		padding : 30px 30px;
		width : 80%;
		margin : 0 auto;
		left : 0;
		right : 0;	
		text-align : center;
		
		
		
	}
	/* ���� , edit , delete �����ϴ� div */
	.editTable__content{
	border-top : 2px solid #e2e2e2;
		border-bottom : 2px solid #e2e2e2;
		padding : 50px 0px;
		display : flex;
		justify-content: center;
		align-items: center;
		margin-bottom : 50px;
	}
	/* edit , delete ��ư �����ϴ� div */
	.MovieImgEdit__btn{
		display : flex;
		
	}
	.MpvieImgEdit__btn-edit{
		margin : 0px 10px;
	}
	.MovieImgEdit__img{
		margin-right : 30px;
	}
	/* ���� ����  */
	.MovieImgEdit__img-img{
		width : 100px;
		height : 100px;
		border-radius: 50px;
		
	}
	/*  ��� ��� ��ư */
	.movieImgEdit{
		margin : 0 auto;
		left : 0;
		right : 0;
		display:flex;
		justify-content:center;
		padding-bottom: 50px;
		border-bottom : 2px solid #e2e2e2;
	}
	.movieImgEdit__button{
		margin : 0px 20px;
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
	<form action="MovieImgEditProc.jsp" method="post" enctype="multipart/form-data">
		<fieldset class="editTable">
			<legend class="editTable__title">Edit Movie Img</legend>
				<table class="editTable__table">
					<tr>
						<th scope="row"></th>
						<td>
							<div class="editTable__content">
								<div class="MovieImgEdit__img">
									<img src="upload/<%= rbean.getMovie_foster() %>" class="MovieImgEdit__img-img">
								</div>
								<div class="MovieImgEdit__btn">
									<div class="MpvieImgEdit__btn-edit">
										<label for="inputImg" class="inputImg__btn">Edit
											<input type="file" id="inputImg" name="file">
											<input type="hidden" id="inputImg" name="movie_no" value="<%= movie_no %>">
											<input type="hidden" id="inputImg" name="editOrDelete" value="1">
										</label>
									</div>
									<div class="MpvieImgEdit__btn-edit">
										<label for="inputImg2" class="inputImg__btn">delete
											<input type="button" id="inputImg2" onclick="location.href='MovieImgDelete.jsp?movie_no=<%=movie_no%>'">
										</label>
									</div>	
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row"></th>
						<td>
							<div class="movieImgEdit">
								<input type="submit" value="���" class="movieImgEdit__button">
								<input type="reset" value="���" class="movieImgEdit__button">
							</div>
						</td>
					</tr>
				</table>
		</fieldset>
	</form> 
</body>
</html>