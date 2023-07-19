<%Option Explicit%>
<!-- #include file="constants.inc" -->
<%
Dim ChatID
ChatID = Request("ChatID")
If ( (ChatID = "") Or (Not Application.StaticObjects.Item("ASPChat").Exists(ChatID)) ) Then
	Response.Redirect "Expired.asp"
	Response.End
Else
	'Check for changes in Messages
End If
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<meta HTTP-EQUIV="Refresh" CONTENT="10; URL=History.asp?ChatID=<%=ChatID%>">
	<title>CHAT :: Construcci&oacute;n Instrumentos Tradicionales :: </title>
	<link rel="stylesheet" type="text/css" href="Chat.css">
</head>
<body bgcolor="#FFFFFF">
<script language="JavaScript">
<!-- // hide from challenged browsers
// Call this to refresh the frames
if (parent.frames.length!=0)
{
	RefreshFrame("Chatters", "Chatters.asp?ChatID=<%=ChatID%>");
}
function RefreshFrame(FrameName, PageName)
{
	eval("parent." + FrameName + ".location='" + PageName + "'");
}
// -->
</script>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<%
Dim chatName
If (Application.StaticObjects.Item("ASPChat").Exists(CStr(ChatID))) Then
	chatName = Application.StaticObjects.Item("ASPChat").Item(CStr(ChatID))
Else
	chatName = "Guest"
End If

' user wants to logoff, so we will have to notify all other users 
' about this by printing some kind of 'user X is now logging off' 
' message.
If ( Len(Request("logoff.x")) > 0) Then
	Dim x
	Application.Lock
	' add a leaving message to chatroom
	For x = MESSAGES To 2 Step - 1
		Application("chatline_" & x) = Application("chatline_" & x-1)
	Next
	Application("chatline_1") = "<tr><td class='Name' align='right'><img src='images/Exit.gif' height=7 width=15 align='bottom'>&nbsp;</td><td colspan='5'><span class='LoggedOut'>" & chatName & " abandona el chat - " & Now() & "</span></td></tr>"
	' remove user
	Application.StaticObjects.Item("ASPChat").Remove(CStr(ChatID))
	Application.StaticObjects.Item("ASPChatTime").Remove(CStr(ChatID))
	Application.UnLock
%>		
<script language="javascript">
   	top.location.href = "Default.asp";
</script>
<%
Else
	' a new message has been send to chat. we want this message to 
	' be added our list of message, indicating which user send it.
	If ( Request("mode") = "message" ) Then
		Dim textMessage
		textMessage = Request("message")
		' do not add message, if it is empty
		If (Len(textMessage) > 0) Then
			' we do not support most tags, however <b>, <i> ARE supported, thus we have
			' to make check for these and replace with actual tags
			textMessage = Server.HTMLEncode(textMessage)
			textMessage = Replace(textMessage, "&lt;b&gt;", "<b>", 1, -1, 1)
			textMessage = Replace(textMessage, "&lt;/b&gt;", "</b>", 1, -1, 1)
			textMessage = Replace(textMessage, "&lt;i&gt;", "<i>", 1, -1, 1)
			textMessage = Replace(textMessage, "&lt;/i&gt;", "</i>", 1, -1, 1)
			textMessage = Replace(textMessage, "&lt;u&gt;", "<u>", 1, -1, 1)
			textMessage = Replace(textMessage, "&lt;/u&gt;", "</u>", 1, -1, 1)
			'Now check for profanity
'== **DAVID**			textMessage = CheckProfanity(textMessage)
    		Dim i, text
			Application.Lock
			' move all messages one item down in queue
			For i = MESSAGES To 2 Step -1
				Application("chatline_" & i) = Application("chatline_" & i-1)
			Next
			' build new message
			text = "<tr>" & _
					"<td nowrap align='right' valign='top' class='Name'>" & chatName & "<img src='images/contes.gif'></td>" & _
					"<td class='Message' align='left' width='100%' valign='bottom'>" & textMessage & "<img src='/images/tras.gif' width='5' height='15' align='top'></td>" & _
					"</tr>" & vbCrLf
			' add message as first message in queue
			Application("chatLine_1") = text
			' update users timestamp
			Application.StaticObjects.Item("ASPChatTime").Item(ChatID) = CStr(Now())
			Application.UnLock
		End If
	End If
End If
	
' Check if Users need to be dropped.
Dim arUserTimes, timeIdx, curTimestamp
arUserTimes  = Application.StaticObjects.Item("ASPChatTime").Keys
curTimestamp = Now()
For timeIdx = 0 To Application.StaticObjects.Item("ASPChatTime").Count-1
	If (DateDiff("s", CDate(Application.StaticObjects.Item("ASPChatTime").Item(arUserTimes(timeIdx))), curTimestamp) > TIMEOUT) Then
		' Drop the user
		Application.Lock
		' Broadcast User has left
		For x = MESSAGES To 2 Step - 1
			Application("chatline_" & x) = Application("chatline_" & x-1)
		Next
		Application("chatline_1") = "<tr><td class='Name' align='right'><img src='images/Exit.gif' height=7 width=15 align='bottom'>&nbsp;</td><td><span class='LoggedOut'>" & Application.StaticObjects.Item("ASPChat").Item(arUserTimes(timeIdx)) & " abandona tras 10 minutos sin actividad - " & Now() & "</span></td></tr>"
		Application.StaticObjects.Item("ASPChat").Remove(arUserTimes(timeIdx))
		Application.StaticObjects.Item("ASPChatTime").Remove(arUserTimes(timeIdx))
		Application.UnLock
	End If
Next

If ( CLEAR_ON_EMPTY AND (Application.StaticObjects.Item("ASPChat").Count = 0) ) Then
	' clear all messages
	Application.Lock
	For i = 1 To MESSAGES
		Application("chatline_" & i) = ""
	Next
	Application.UnLock
End If

' print all messages in window
For i = 1 To MESSAGES
	Response.Write Application("chatline_" & i) & ""
Next
%>
</table>
</body>
</html>
<%
'==**DAVID** Function CheckProfanity( Text )
'==**DAVID** 	Dim arrSwear, x, n
'==**DAVID** 	'Get the Arrays
'==**DAVID**arrSwear = Application("SwearWords")
'==**DAVID** 	Text = Split(Text, " ")
'==**DAVID** 	For x  = LBound(Text) To UBound(Text)
'==**DAVID** 		'Check if it is profane
'==**DAVID** 		For n = LBound(arrSwear) To UBound(arrSwear)
'==**DAVID** 			If InStr(UCase(Text(x)), arrSwear(n)) > 0 Then
'==**DAVID** 				Text(x) = "[Prohibido]"
'==**DAVID** 				Exit For
'==**DAVID** 			End If
'==**DAVID** 		Next
'==**DAVID** 	Next
'==**DAVID** 	CheckProfanity = Join(Text, " ")
'==**DAVID** End Function
%>