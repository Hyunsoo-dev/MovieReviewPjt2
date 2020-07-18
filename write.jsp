<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>
<html>
 <head>
 <title>코멘트 적기</title>  <!--코멘트는 로그인이 되어있는 상태에서만 가능하다 코멘트는 글의   -->
 </head>
 <body>
 <script language = "javascript"> 

	function writeCheck()  //유효성검사 메소드
  {
   var form = document.writeform;
   
  
  if( !form.board_subject.value )
   {
    alert( "제목을 적어주세요" );
    form.board_subject.focus();
    return;
   }
 
  if( !form.board_content.value )
   {
    alert( "내용을 적어주세요" );
    form.board_content.focus();
    return;
   }
 
  form.submit();
  }
 </script>



 
 <FORM name="writeform" action="write_ok.jsp" method="post">
 <Div align="center">
<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style= "text-align:center;">
      <td>글쓰기</td> 
    </table>
   <table>
   
   
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="board_subject" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="board_content" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록" onclick="javascript:writeCheck();"> <!-- 유효성검사 -->
       <input type=button value="취소" onclick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
 </Div>
  </FORM>
</body>
