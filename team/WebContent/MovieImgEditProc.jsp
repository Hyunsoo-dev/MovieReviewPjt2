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
		
		//editOrDelete 가 1 인 경우 edit 을 클릭한 것.
		//2 인 경우 delete 를 클릭한 것.
		
		int editOrDelete = Integer.parseInt(multi.getParameter("editOrDelete"));
		
		/* if(editOrDelete==1){ */
		
		int movie_no = Integer.parseInt(multi.getParameter("movie_no"));
		//사용자가 실제로 업로드 하고자 한 파일을 가져옴.
		String fileName = multi.getOriginalFileName("file");
		
		//실제로 서버에 업로드 된 파일을 가져옴.
		String fileRealName = multi.getFilesystemName("file");
		
		//파일 업로드 메소드 호출해서 파일 업로드함.
		
		new ManagerDAO().editMovieImg(movie_no, fileName, fileRealName);
		
	%>
		<script>
			alert("사진이 변경되었습니다.");
			location.href="index.jsp?center=managerMovieList.jsp";
		</script>
	
		
</body>
</html>