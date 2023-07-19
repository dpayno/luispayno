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
	<title>ASPChatWorX</title>
	<link rel="stylesheet" type="text/css" href="Chat.css">
	<script LANGUAGE="JavaScript">
	<!--
	function frmControl_onSubmit()
	{
		RefreshFrame("Banner", "http://www.failsafe.co.za/BannerWorX/ChatBanner.asp?Campaign=2");
		document.frmControl.message.select();
		document.frmControl.message.focus();
	}

	function openHelp()
	{
		var mASPChatHelp
		window.open('help.html', mASPChatHelp, 'toolbar=no,width=380,height=380,resizable=0');
	}
	// -->
	</script>
</head>

<body bgcolor="#eeeeee" LeftMargin="0" TopMargin="0" RightMargin="0" BottomMargin="0" MarginWidth="0" MarginHeight="0">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
	<form method="POST" name="frmControl" target="History" action="History.asp" onSubmit="frmControl_onSubmit();">
	<input type="hidden" name="mode" value="message">
	<input type="hidden" name="ChatID" value="<%=ChatID%>">
	<tr>
		<td width="100%">
			<input type="text" class="editField" name="message" size="20" taborder="1" style="width: 100%;">
		</td>
		<td width="20">
			<input type="image" src="images/Go.gif" title="Send message" taborder="2" name="submit" border="0" width="20" height="20">
		</td>
		<td width="30">
			<input type="image" src="images/Out.gif" title="Logout" name="logoff" taborder="3" border="0" WIDTH="30" HEIGHT="20">
		</td>
		<td width="15">
			<a href="javascript:openHelp()">
				<img border="0" src="images/Help.gif" width="15" height="15">
			</a>
		</td>
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