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
		
		//editOrDelete �� 1 �� ��� edit �� Ŭ���� ��.
		//2 �� ��� delete �� Ŭ���� ��.
		
		int editOrDelete = Integer.parseInt(multi.getParameter("editOrDelete"));
		
		/* if(editOrDelete==1){ */
		
		int movie_no = Integer.parseInt(multi.getParameter("movie_no"));
		//����ڰ� ������ ���ε� �ϰ��� �� ������ ������.
		String fileName = multi.getOriginalFileName("file");
		
		//������ ������ ���ε� �� ������ ������.
		String fileRealName = multi.getFilesystemName("file");
		
		//���� ���ε� �޼ҵ� ȣ���ؼ� ���� ���ε���.
		
		new ManagerDAO().editMovieImg(movie_no, fileName, fileRealName);
		
	%>
		<script>
			alert("������ ����Ǿ����ϴ�.");
			location.href="index.jsp?center=managerMovieList.jsp";
		</script>
	
		
</body>
</html>