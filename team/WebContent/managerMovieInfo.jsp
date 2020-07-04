<%@page import="manager.ManagerDAO"%>
<%@page import="manager.ManagerBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<!-- 
	
	관리자 리스트 페이지에서 
	리스트를 클릭했을 경우 
	영화 정보와 함께 수정, 삭제 기능을 제공하는 페이지
	
	
 -->

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
	int movie_no = Integer.parseInt(request.getParameter("movie_no"));
	ManagerDAO rdao = new ManagerDAO();
	ManagerBean rbean = rdao.getOneList(movie_no);
%>  

<main class="movieInfo">

<table class="table table-hover">

  <thead>
    <tr>
      
     <th colspan="3" scope="col">
      	<div class="table__img">
			<img src="upload/<%= rbean.getMovie_foster() %>" class="img-fluid" alt="Responsive image">
		</div>
	</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th class="rowTitle" scope="row">제목 1</th>
      <td class="content" colspan="2"><%= rbean.getMovie_name1() %></td>
    </tr>
    <tr>
     <th scope="row">제목 2</th>
      
      <td colspan="2" ><%= rbean.getMovie_name2() %></td>
      
    </tr>
    <tr>
      <th scope="row">제작년도</th>
      <td colspan="2" ><%= rbean.getMovie_year() %></td>
     
    </tr>
    <tr>
      <th scope="row">상영시간</th>
      <td colspan="2" ><%= rbean.getMovie_time() %></td>
     
    </tr>
    <tr>
      <th scope="row">정보</th>
      <td colspan="2" ><%= rbean.getMovie_content() %></td>
      
    </tr>
    <tr>
    	<td colspan = "3">
    		
    	</td>
    </tr>
  
  </tbody>
 
</table>

     <div class="movieInfo__btn">
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=managerMovieList.jsp'">전체 리스트 보기</button>
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=managerUpdate.jsp?no=<%=rbean.getMovie_no()%>'">수정</button>
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=managerDelete.jsp?no=<%=rbean.getMovie_no()%>'">삭제</button>
</div>

</main>	
</body>
</html>