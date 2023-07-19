 
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
<title>CHAT :: Construcción Instrumentos Tradicionales :: </title>
<link rel="stylesheet" type="text/css" href="Chat.css">
</head>
<frameset cols="*,132" border="0" framespacing="0" rows="*"> 
  <frameset rows="76,*,40" cols="*" border="0" framespacing="0" frameborder="NO"> 
    <frame name="Banner"  src="banner.asp" scrolling="no" target="_self" marginwidth="0" marginheight="0">
    <frame name="History" src="History.asp?ChatID=<%=ChatID%>">
    <frame name="Message" src="Message.asp?ChatID=<%=ChatID%>" scrolling="no" target="_self" marginheight="0" marginwidth="0">
  </frameset>
  <frame name="Chatters" src="Chatters.asp?ChatID=<%=ChatID%>" noresize scrolling="NO">
  <noframes> 
  <body>
  Lo sentimos, pero su navegador NO SOPORTA FRAMES 
  </body>
  </noframes> </frameset>
</html>
