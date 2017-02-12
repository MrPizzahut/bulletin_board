<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>password check</title>
    <link rel="stylesheet" href="../css/board.css" type="text/css" />	
  </head>
  
  <body>
    <center>
    <h2>password check</h2>
    
    <form action="checkAction.action" method="post">
    <s:hidden name="seqarg" value="%{seqarg}" />
    <s:hidden name="currentPage" value="%{currentPage}" />
      
      <table width="250" border="0" cellspacing="0" cellpadding="0">
      
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>
        </tr>
      
        <tr>
          <td width="100" bgcolor="#F4F4F4">  input password</td>
          <td width="150" bgcolor="#FFFFFF">
            &nbsp;&nbsp;<s:password name="pwdarg" theme="simple" cssStyle="width:100px" maxlength="20"/>
            &nbsp;&nbsp;<input name="submit" type="submit" value="submit" class="inputb">
          </td>
        </tr>
      
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>
        </tr>
      </table>
    </form>
    </center>
  </body>
</html>
