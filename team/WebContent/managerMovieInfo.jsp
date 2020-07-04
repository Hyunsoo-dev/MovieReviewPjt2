<%@page import="manager.ManagerDAO"%>
<%@page import="manager.ManagerBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<!-- 
	
	������ ����Ʈ ���������� 
	����Ʈ�� Ŭ������ ��� 
	��ȭ ������ �Բ� ����, ���� ����� �����ϴ� ������
	
	
 -->

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
      <th class="rowTitle" scope="row">���� 1</th>
      <td class="content" colspan="2"><%= rbean.getMovie_name1() %></td>
    </tr>
    <tr>
     <th scope="row">���� 2</th>
      
      <td colspan="2" ><%= rbean.getMovie_name2() %></td>
      
    </tr>
    <tr>
      <th scope="row">���۳⵵</th>
      <td colspan="2" ><%= rbean.getMovie_year() %></td>
     
    </tr>
    <tr>
      <th scope="row">�󿵽ð�</th>
      <td colspan="2" ><%= rbean.getMovie_time() %></td>
     
    </tr>
    <tr>
      <th scope="row">����</th>
      <td colspan="2" ><%= rbean.getMovie_content() %></td>
      
    </tr>
    <tr>
    	<td colspan = "3">
    		
    	</td>
    </tr>
  
  </tbody>
 
</table>

     <div class="movieInfo__btn">
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=managerMovieList.jsp'">��ü ����Ʈ ����</button>
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=managerUpdate.jsp?no=<%=rbean.getMovie_no()%>'">����</button>
	<button class="btn btn-primary btn-sm" onclick="location.href='index.jsp?center=managerDelete.jsp?no=<%=rbean.getMovie_no()%>'">����</button>
</div>

</main>	
</body>
</html>