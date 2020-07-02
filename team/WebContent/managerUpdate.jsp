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
	/* ��ü ���� Ʋ */
	.main{
		position :relative;
	}
	/* ���̺� �� �̹��� ��Ÿ�� */
	.table__img{
		text-align:center;
		
	}
	/* ���̺� ��Ÿ�� */
	.table{
		position :relative;
		left : 350px;
		width : 50%;
		text-align:center;
	}
	/* ��ư ��Ÿ�� */
	.movieInfo__btn{
		position :relative;
		left : 350px;
		width : 50%;
		text-align:center;
		display:flex;
		justify-content:flex-end;
	}
		/* ���̺� ���� �κ�  */
	.rowTitle{
		width : 200px;
	}
	/* ���̺� ���� �κ� */
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
      <th class="rowTitle" scope="row">���� 1</th>
      <td class="content" colspan="2" >
      	<input type="text" name="movie_name1" value="<%= rbean.getMovie_name1() %>">
      </td>
    </tr>
    <tr>
     <th scope="row">���� 2</th>
      
      <td colspan="2" >
      	<input type="text" name="movie_name2" value="<%= rbean.getMovie_name2() %>">
      </td>
      
    </tr>
    <tr>
      <th scope="row">���۳⵵</th>
      <td colspan="2">
      	<input type="text" name="movie_year" value="<%= rbean.getMovie_year() %>">
      </td>
     
    </tr>
    <tr>
      <th scope="row">�󿵽ð�</th>
      <td colspan="2">
      	<input type="text" name="movie_time" value="<%= rbean.getMovie_time() %>">
      </td>
     
    </tr>
    <tr>
      <th scope="row">����</th>
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
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=manager.jsp'">��ü ����Ʈ ����</button>
	<input type="hidden" name="movie_no" value="<%= rbean.getMovie_no() %>">
	<input type="submit" value="����" class="btn btn-primary btn-sm">
	<input type="reset" value="���" onclick="href=index.jsp?center=manager.jsp" class="btn btn-primary btn-sm">
</div>
</form>
</main>	
</body>
</html>