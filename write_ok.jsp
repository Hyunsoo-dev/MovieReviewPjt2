<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="dao" class="board.boardDAO"/>
<jsp:useBean id="dto" class="board.boardDTO"/>
<jsp:setProperty name="dto" property="*" />


<%
	request.setCharacterEncoding("euc-kr");

	dao.insertWrite(dto);
	

%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="bbs.jsp"; 

</script>
