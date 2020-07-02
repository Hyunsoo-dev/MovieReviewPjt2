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
		
		
		//영화 한글 이름
		String movie_name1 = multi.getParameter("movie_name1");
		//영화 영어 이름
		String movie_name2 = multi.getParameter("movie_name2");
		
		
		
		//사용자가 실제로 업로드 하고자 한 파일을 가져옴.
		String fileName = multi.getOriginalFileName("file");
		
		
		//실제로 서버에 업로드된 파일 가져옴
		String fileRealName = multi.getFilesystemName("file");
		
		//영화 제작년도
		String movie_year = multi.getParameter("movie_year");
		//영화 상영시간
		String movie_time = multi.getParameter("movie_time");
		//영화 정보
		String movie_content = multi.getParameter("movie_content");
		
		
		//파일 업로드 메소드 호출해서 파일 업로드함.
		new ManagerDAO().fileUpload(movie_name1,movie_name2,fileName,fileRealName,movie_year,movie_time,movie_content);
		
		response.sendRedirect("index.jsp?center=managerMovieList.jsp");
	%>
</body>
</html>