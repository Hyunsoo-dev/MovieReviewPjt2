<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>
<html>
 <head>
 <title>�ڸ�Ʈ ����</title>  <!--�ڸ�Ʈ�� �α����� �Ǿ��ִ� ���¿����� �����ϴ� �ڸ�Ʈ�� ����   -->
 </head>
 <body>
 <script language = "javascript"> 

	function writeCheck()  //��ȿ���˻� �޼ҵ�
  {
   var form = document.writeform;
   
  
  if( !form.board_subject.value )
   {
    alert( "������ �����ּ���" );
    form.board_subject.focus();
    return;
   }
 
  if( !form.board_content.value )
   {
    alert( "������ �����ּ���" );
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
      <td>�۾���</td> 
    </table>
   <table>
   
   
     <tr>
      <td>&nbsp;</td>
      <td align="center">����</td>
      <td><input name="board_subject" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">����</td>
      <td><textarea name="board_content" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="���" onclick="javascript:writeCheck();"> <!-- ��ȿ���˻� -->
       <input type=button value="���" onclick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
 </Div>
  </FORM>
</body>
