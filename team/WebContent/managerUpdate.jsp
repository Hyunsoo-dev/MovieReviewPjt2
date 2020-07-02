<%@page import="manager.ManagerBean"%>
<%@page import="manager.ManagerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>managerUpdate page</title>
<style>
	/* 전체 메인 틀 */
	.main{
		position :relative;
	}
	/* 테이블 안 이미지 스타일 */
	.table__img{
		text-align:center;
		
	}
	/* 테이블 스타일 */
	.table{
		position :relative;
		left : 350px;
		width : 50%;
		text-align:center;
	}
	/* 버튼 스타일 */
	.movieInfo__btn{
		position :relative;
		left : 350px;
		width : 50%;
		text-align:center;
		display:flex;
		justify-content:flex-end;
	}
		/* 테이블 제목 부분  */
	.rowTitle{
		width : 200px;
	}
	/* 테이블 내용 부분 */
	.content{
		width : 300px;
	}
</style>
</head>
<body>
	<%	
		request.setCharacterEncoding("euc-kr");
		int movie_no = Integer.parseInt(request.getParameter("no"));
		ManagerDAO rdao = new ManagerDAO();
		ManagerBean rbean = rdao.getOneList(movie_no);
	%>
	
	<main class="movieInfo">
<form action="managerUpdateProc.jsp" method="post">
<table class="table table-hover">

  <thead>
    <tr>
      
     <th colspan="3" scope="col">
      	<div class="table__img">
			<img src="img/Harry01.jpg" class="img-fluid" alt="Responsive image">
		</div>
	</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th class="rowTitle" scope="row">제목 1</th>
      <td class="content" colspan="2" >
      	<input type="text" name="movie_name1" value="<%= rbean.getMovie_name1() %>">
      </td>
    </tr>
    <tr>
     <th scope="row">제목 2</th>
      
      <td colspan="2" >
      	<input type="text" name="movie_name2" value="<%= rbean.getMovie_name2() %>">
      </td>
      
    </tr>
    <tr>
      <th scope="row">제작년도</th>
      <td colspan="2">
      	<input type="text" name="movie_year" value="<%= rbean.getMovie_year() %>">
      </td>
     
    </tr>
    <tr>
      <th scope="row">상영시간</th>
      <td colspan="2">
      	<input type="text" name="movie_time" value="<%= rbean.getMovie_time() %>">
      </td>
     
    </tr>
    <tr>
      <th scope="row">정보</th>
      <td colspan="2" >
      	<input type="text" name="movie_content" value="<%= rbean.getMovie_content() %>">
      </td>
      
    </tr>
    <tr>
    	<td colspan = "3">
    		
    	</td>
    </tr>
  
  </tbody>
 
</table>

     <div class="movieInfo__btn">
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=manager.jsp'">전체 리스트 보기</button>
	<input type="hidden" name="movie_no" value="<%= rbean.getMovie_no() %>">
	<input type="submit" value="수정" class="btn btn-primary btn-sm">
	<input type="reset" value="취소" onclick="href=index.jsp?center=manager.jsp" class="btn btn-primary btn-sm">
</div>
</form>
</main>	
</body>
</html>