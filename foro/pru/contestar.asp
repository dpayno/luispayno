<% dim IdMensaje
IdMensaje=Request.QueryString("IdMensaje")%>
<B>Foro ASP</B> - Contestar Mensaje del foro<BR><BR>
<TABLE ALIGN="center" CELLPADDING="0" CELLSPACING="0">
<TR>
	<TD ALIGN="right"><FORM ACTION="guardar.asp?idmensaje=<%= IdMensaje%>" METHOD="post"><FONT FACE="Arial" SIZE="2"><B>Nombre: &nbsp;</B></FONT></TD>
	<TD><INPUT SIZE="20" NAME="nombre"></TD>
</TR>
<TR>
	<TD ALIGN="right"><FONT FACE="Arial" SIZE="2"><B>Email: &nbsp;</B></FONT></TD>
	<TD><INPUT SIZE="20" NAME="email"></TD>
</TR>
<TR>
	<TD ALIGN="right"><FONT FACE="Arial" SIZE="2"><B>Titulo: &nbsp;</B></FONT></TD>
	<TD><INPUT SIZE="20" NAME="titulo" VALUE=""></TD>
</TR>
<TR>
	<TD VALIGN="top" ALIGN="right"><FONT FACE="Arial" SIZE="2"><B>Mensaje: &nbsp;</B></FONT></TD>
	<TD><TEXTAREA NAME="mensaje" COLS="50" ROWS="7" style="font-size:12px; font-face:Arial" VALUE="RE: ""></TEXTAREA></TD>
</TR>
<TR>
	<TD COLSPAN="2" ALIGN="center"><BR><INPUT TYPE="Submit" VALUE="Enviar Respuesta!"></FORM></TD>
</TR>
</TABLE>
