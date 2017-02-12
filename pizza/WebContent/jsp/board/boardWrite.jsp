<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>struts2 board</title>
	<link rel="stylesheet" href="../css/board.css" type="text/css" />	
	
	<SCRIPT type="text/javascript">
		function validation() {		
			var frm = document.forms[0];			
			if(frm.title.value == "") {
				alert("Input title.");
				return false;
			} 
			else if(frm.writer.value == "") {
				alert("Input writer.");
				return false;
			}
			else if(frm.pwd.value == "") {
				alert("Input password.");
				return false;
			}
			else if(frm.content.value == "") {
				alert("Input contents.");
				return false;			
			}
			return true;
		}
	</SCRIPT>
</head>

<body>
<center>
<table width="600"  border="0" cellspacing="0" cellpadding="2">
	<tr>
		<td align="center"><h3>struts2 board</h3></td>
	</tr>
</table>

<s:if test="boardVo==null">
	<form action="writeAction.action" method="post" onsubmit="return validation();">
</s:if>
<s:else>
	<form action="modifyAction.action"  method="post" >		
		<s:hidden name="currentPage" value="%{currentPage}" />
		<s:hidden name="seqarg" value="%{seqarg}" />
</s:else>

<table width="600" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td align="right" colspan="2">
			<font color="#FF0000">*</font>is necessary.
		</td>
	</tr>

	<tr bgcolor="#777777">
		<td height="1" colspan="2"></td>
	</tr>
	

	<tr>
		<td width="100" bgcolor="#F4F4F4">
			<font color="#FF0000">*</font>  title
		</td>
		<td width="500" bgcolor="#FFFFFF">
		<s:textfield name="title" theme="simple" maxlength="50" 
			value="%{boardVo.title}"  cssStyle="width:370px"/>
		</td>
	</tr>
	<tr bgcolor="#777777">
		<td height="1" colspan="2"></td>
	</tr>

	<tr>
		<td bgcolor="#F4F4F4"><font color="#FF0000">*</font>  writer </td>
		<td bgcolor="#FFFFFF">
			<s:textfield name="writer" theme="simple" maxlength="20"
			value="%{boardVo.writer}" cssStyle="width:100px" />
		 </td>
	</tr>
	<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>	
	</tr>
 
	<tr>
		<td bgcolor="#F4F4F4"><font color="#FF0000">*</font>  password </td>
		<td bgcolor="#FFFFFF">
			<s:password name="pwd" theme="simple" maxlength="20"
			value="%{boardVo.pwd}" cssStyle="width:100px" />
		</td>
	</tr>
	<tr bgcolor="#777777">
		<td height="1" colspan="2"></td>	
	</tr>

	<tr>
		<td bgcolor="#F4F4F4"><font color="#FF0000">*</font>  contents </td>
		<td bgcolor="#FFFFFF">
			<s:textarea name="content" theme="simple" 
			value="%{boardVo.content}" cols="50" rows="10" />
		</td>
	</tr>
    <tr bgcolor="#777777">
      <td height="1" colspan="2"></td>  
    </tr>
  
    <tr>
      <td height="10" colspan="2"></td>
    </tr>

	<tr>
		<td align="right" colspan="2">
			<input name="submit" type="submit" value="submit" class="inputb">
			<input name="list" type="button" value="list" class="inputb" onClick=
"javascript:location.href='listAction.action?currentPage=<s:property value="currentPage" />'">
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>