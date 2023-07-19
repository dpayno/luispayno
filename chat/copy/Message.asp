<%
Option Explicit
Dim ChatID
ChatID = Request("ChatID")
If ( (ChatID = "") OR (NOT Application.StaticObjects.Item("ASPChat").Exists(ChatID)) ) Then
	Response.Redirect "Expired.asp"
	Response.End
End If
%>
<!-- #include file="constants.inc" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>CHAT :: Construcci&oacute;n Instrumentos Tradicionales :: </title>
	<link rel="stylesheet" type="text/css" href="Chat.css">
		<script LANGUAGE="JavaScript">
	<!--
	function frmControl_onSubmit()
	{
		document.frmControl.message.select();
		document.frmControl.message.focus();
	}
	// -->
	</script>
</head>

<body bgcolor="#FFCC66" LeftMargin="0" TopMargin="0" RightMargin="0" BottomMargin="0" MarginWidth="0" MarginHeight="0">
<table border="0" cellspacing="0" cellpadding="2" width="100%" height="8">
  <form method="POST" name="frmControl" target="History" action="History.asp" onSubmit="frmControl_onSubmit();">
	<input type="hidden" name="mode" value="message">
	<input type="hidden" name="ChatID" value="<%=ChatID%>">
	<tr>
		
      <td width="553"> 
        <input type="text" class="editField" name="message" size="20" taborder="1" style="width: 100%;">
		</td>
		
      <td width="44"> 
        <input type="image" src="images/okbutton.gif" title="Enviar mensaje" taborder="2" name="submit" border="0" width="25" height="25" align="bottom">	
        <font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><font face="Verdana, Arial, Helvetica, sans-serif" color="#993399"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><img src="../img/tras.gif" width="8" height="24" align="absbottom"></font></b></font></font></font> 
      </td>
		
      <td width="39" valign="bottom"> 
        <div align="right">
          <input type="image" src="images/Out.gif" title="SALIR del CHAT" name="logoff" taborder="3" border="0" align="bottom">
        </div>
      </td>
		
      <td width="9"><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><font face="Verdana, Arial, Helvetica, sans-serif" color="#993399"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><img src="../img/tras.gif" width="12" height="22" align="absbottom"></font></b></font></font></font></td>
	</tr>
	</form>
</table>
<script language="JavaScript">
<!-- // hide from challenged browsers
function RefreshFrame(FrameName, PageName)
{
	eval("parent." + FrameName + ".location='" + PageName + "'");
	document.frmControl.message.select();
	document.frmControl.message.focus();
}
// -->
</script>
</body>
</html>