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
<html>
<script LANGUAGE="JavaScript">
	<!--
	function frmControl_onSubmit()
	{
		document.frmControl.message.select();
		document.frmControl.message.focus();
	}

	function openHelp()
	{
		var mASPChatHelp
		window.open('Help.html', mASPChatHelp, 'toolbar=no,width=570,height=400,resizable=0');
	}
	// -->
</script>
<head>
	<meta HTTP-EQUIV="Refresh" CONTENT="15; URL=Chatters.asp?ChatID=<%=ChatID%>">
	<title>CHAT :: Construcci&oacute;n Instrumentos Tradicionales :: </title>
	<link rel="stylesheet" type="text/css" href="Chat.css">
</head>

<body text="#000000" link="#FF8040" vlink="#FF8040" alink="#354FC6" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#FFCC66" background="../img/f_base.jpg">
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="69">
  <tr valign="top" bgcolor="#663300"> 
    <td colspan="2" height="13"> 
      <div align="right"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif"><b> 
        <font color="#FFFFCC">Ayuda </font><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#993399"> 
        <a href="javascript:openHelp()">
		<img border="0" src="images/Help.gif" width="12" height="11" align="absmiddle"> 
		</a>
        </font><font color="#FFFFCC" face="Verdana, Arial, Helvetica, sans-serif"><img src="../img/tras.gif" width="11" height="24" align="absmiddle"> 
        </font></font></b></font></div>
    </td>
  </tr>
  <tr> 
    <td colspan="2" height="1" bgcolor="#000000"><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00" size="3"><b><img src="../img/tras.gif" width="19" height="1" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></b></font></td>
  </tr>
  <tr> 
    <td width="33" height="49" background="../img/f_base.jpg"> 
      <div align="center"><img src="images/Chatters.gif" border="0"></div>
    </td>
    <td height="49" width="80" background="../img/f_base.jpg"><b><font color="#FFFF00">Usuarios<br>
      Activos </font></b></td>
  </tr>
  <tr> 
    <td width="33" height="5"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00" size="3"><b><img src="../img/tras.gif" width="19" height="6" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></b></font></font></td>
    <td height="5" width="80"><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00" size="3"><b><img src="../img/tras.gif" width="46" height="6" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></b></font></td>
  </tr>
  <%	
Dim arUserNames, arUserIDs, i, chatName
arUserIDs = Application.StaticObjects.Item("ASPChat").Keys
arUserNames = Application.StaticObjects.Item("ASPChat").Items
For i = 0 To Application.StaticObjects.Item("ASPChat").Count-1
	If (ChatID = arUserIDs(i)) Then
		chatName = "<b>" & arUserNames(i) & "</b>"
	Else
		chatName = arUserNames(i)
	End If

	If ( i MOD 2 ) Then
		Response.Write "<tr>"
	Else
		Response.Write "<tr>"
	End If

	Response.Write " <td class='infoText' colspan='2'>"
	Response.Write "<img src='images/Chatter.gif' width=5 height=5 hspace='3'>"
	Response.Write chatName & "&nbsp;</td>"
	Response.Write "</tr>"
Next
%>
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
