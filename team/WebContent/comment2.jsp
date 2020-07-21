
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  	<%@ page import="board.boardDTO" %>
	<%@ page import ="board.boardDAO" %>
	<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%   //영화이름으로 검색할시 영화이름에 따른 코멘트 리스트를 뽑아온다
 
	boardDAO dao = new boardDAO ();
	Vector<boardDTO> alist = dao.getboardList();  //alist arraylist로반환
	
//	for(int i=1; i<alist.size(); i++){
	//	if(i==6){
	//		break;
	//	}
	
	boardDTO dto = new boardDTO();  
	
%>

	<div class="container">
  <h2 align="left">코멘트<%= dao.count()%> </h2>  <div> <a href="plus.jsp"> 더보기</a></div>
  <!--사용자 db  -->
  <table class="table table-bordered">

		
		 <tbody>
    <tr>
        <td><%= dto.getBoard_subject()%></td> <!-- 제목 -->
        
       </tr>
  
      <tr>  
        <td><%= dto.getBoard_content()%></td> <!-- 내용 -->
          
      </tr>
      
      <tr>
      <!-- 좋아요 버튼  그림  -->
        <td><img src="<%= request.getContextPath()%>/img/like.png" width="20"></td>
        	  <!-- 좋아요 누를시 카운트  -->
      </tr>
      <tr>
        <td><button type="button" class="btn btn-outline-primary">좋아요</button></td>
        
      </tr>
       <tr>
        <td><%= dto.getReadcount()%> 숫자     댓글  숫자</td>
        
      </tr>
       <tr>
        <td><a href="write.jsp"> 글쓰기</a> </td>
         	<!-- 코멘트  적는 부분-->
      </tr>
    </tbody>

	</table>

  
  
  
</div>
</body>
</html>