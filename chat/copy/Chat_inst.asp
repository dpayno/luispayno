
<%
Option Explicit
Dim ChatID
ChatID = Request("ChatID")
If (ChatID = "") Then
	Response.Redirect "Expired.asp"
	Response.End
End If
%>
<html>
<head>
<title>ASPChatWorX</title>
<link rel="stylesheet" type="text/css" href="Chat.css">
</head>
<frameset cols="*,120" frameborder="1"> 
  <frameset rows="70,*,40" frameborder="0"> 
    <frame name="CABECERA"  src="cabecera.asp?ChatID=<%=ChatID%>" scrolling="no" target="_self">
    <frame name="History" src="History.asp?ChatID=<%=ChatID%>" scrolling="AUTO">
    <frame name="Message" src="Message.asp?ChatID=<%=ChatID%>" scrolling="no" target="_self">
  </frameset>
  <frame name="Chatters" src="Chatters.asp?ChatID=<%=ChatID%>" noresize scrolling="AUTO">
  <noframes> 
  <body>
  Your browser does NOT support FRAMES 
  </body>
  </noframes> </frameset>
</html>
