<%@page import="manager.ManagerDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String directory = application.getRealPath("/upload/");
		out.print(directory);
		int maxSize = 1024 * 1024 * 100; //100mb
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request , directory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
		//��ȭ �ѱ� �̸�
		String movie_name1 = multi.getParameter("movie_name1");
		//��ȭ ���� �̸�
		String movie_name2 = multi.getParameter("movie_name2");
		
		
		
		//����ڰ� ������ ���ε� �ϰ��� �� ������ ������.
		String fileName = multi.getOriginalFileName("file");
		
		
		//������ ������ ���ε�� ���� ������
		String fileRealName = multi.getFilesystemName("file");
		
		//��ȭ ���۳⵵
		String movie_year = multi.getParameter("movie_year");
		//��ȭ �󿵽ð�
		String movie_time = multi.getParameter("movie_time");
		//��ȭ ����
		String movie_content = multi.getParameter("movie_content");
		
		
		//���� ���ε� �޼ҵ� ȣ���ؼ� ���� ���ε���.
		new ManagerDAO().fileUpload(movie_name1,movie_name2,fileName,fileRealName,movie_year,movie_time,movie_content);
		
		response.sendRedirect("index.jsp?center=managerMovieList.jsp");
	%>
</body>
</html>