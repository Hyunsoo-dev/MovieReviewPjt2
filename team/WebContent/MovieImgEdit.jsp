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
	/* fieldset 스타일 */
	.editTable{
		width : 80%;
		margin : 0 auto;
		left : 0;
		right : 0;	
		padding : 50px 0px;
	}
	/* 테이블 제목 스타일 */
	 .editTable__title{
		margin : 0 auto;
		left : 0;
		right : 0;
		text-align : center;
	}
	/* 테이블 스타일 */
	.editTable__table{
		
		padding : 30px 30px;
		width : 80%;
		margin : 0 auto;
		left : 0;
		right : 0;	
		text-align : center;
		
		
		
	}
	/* 사진 , edit , delete 포함하는 div */
	.editTable__content{
	border-top : 2px solid #e2e2e2;
		border-bottom : 2px solid #e2e2e2;
		padding : 50px 0px;
		display : flex;
		justify-content: center;
		align-items: center;
		margin-bottom : 50px;
	}
	/* edit , delete 버튼 포함하는 div */
	.MovieImgEdit__btn{
		display : flex;
		
	}
	.MpvieImgEdit__btn-edit{
		margin : 0px 10px;
	}
	.MovieImgEdit__img{
		margin-right : 30px;
	}
	/* 사진 파일  */
	.MovieImgEdit__img-img{
		width : 100px;
		height : 100px;
		border-radius: 50px;
		
	}
	/*  등록 취소 버튼 */
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
								<input type="submit" value="등록" class="movieImgEdit__button">
								<input type="reset" value="취소" class="movieImgEdit__button">
							</div>
						</td>
					</tr>
				</table>
		</fieldset>
	</form> 
</body>
</html>