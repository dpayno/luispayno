 
<title>ERROR en el FORO - CONSTRUCCION INSTRUMENTOS TRADICIONALES</title>
<body background="../img/f_base.jpg" bgcolor="#CC9966" text="#000000" link="#660000" vlink="#990000" alink="#FF0000">
<table width="750" border="0" cellspacing="0" cellpadding="0" bordercolor="0">
  <tr> 
    <td rowspan="3"> 
      <div align="right"><img src="../img/cabez_1.gif" width="64" height="75"></div>
    </td>
    <td width="601" background="../img/f_caja1.gif" bgcolor="#663300"> 
      <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" color="#993399"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><img src="../img/tras.gif" width="2" height="25" align="absmiddle"></font><font color="#FFFF00">Construcci&oacute;n 
        de INSTRUMENTOS TRADICIONALES</font></b></font></div>
    </td>
    <td rowspan="3"> 
      <div align="left"><img src="../img/cabez_2.gif" width="64" height="75"></div>
    </td>
  </tr>
  <tr> 
    <td width="601"> 
      <div align="left"><font face="Verdana, Arial, Helvetica, sans-serif"><font color="#000000"><img src="../img/z_instrum_0.gif" width="123" height="25" border="0" name="m_instr"></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/b_vert.gif" width="3" height="25"></font><font color="#000000"><img src="../img/z_artic_0.gif" width="91" height="25" name="m_arti" border="0"></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/b_vert.gif" width="3" height="25"></font><font color="#000000"><img src="../img/z_secc_0.gif" width="91" height="25" name="m_secc" border="0"></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/b_vert.gif" width="3" height="25"></font><font color="#000000"><img src="../img/tras.gif" width="161" height="15"><img src="../img/b_vert.gif" width="3" height="25"><a href="foro.asp"><img src="../img/z_foro_1.gif" width="41" height="25" name="m_foro" border="0" alt="INICIO FORO"></a></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/b_vert.gif" width="3" height="25"></font><font color="#000000"><img src="../img/z_contac_0.gif" width="79" height="25" name="m_contac" border="0"></font></font></div>
    </td>
  </tr>
  <tr> 
    <td width="601" background="../img/f_caja1.gif"> 
      <div align="left"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="183" height="25" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"><b><font color="#FFFF00">&iexcl; 
        Gracias por tu colaboraci&oacute;n !</font></b></font></div>
    </td>
  </tr>
</table>
<p> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
  <%
IdMensaje = Request.QueryString("IdMEnsaje")
nombre = Trim(Request.Form("nombre"))
email = Trim(Request.Form("email"))
titulo = Trim(Request.Form("titulo"))
mensaje = Trim (Request.Form("mensaje"))
URL = Trim(Request.Form("URL"))
imagen = Trim(Request.Form("imagen"))


if imagen = "" then imagen = "../img/tras.gif" else
If nombre = ""  OR titulo = "" OR mensaje = "" then
	Response.Write "<div align=center><b><BR><BR><BR><BR>Debes rellenar almenos el NOMBRE, ASUNTO y MENSAJE.</b></div>"
	Response.Write "<div align=center><b><BR>Presiona ATRAS y completalo correctamente.</b</div>"
Else

Set oConn = Server.CreateObject ("ADODB.Connection")
oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("./foro.mdb")

'Si es una pregunta nueva...
mensaje = Replace (mensaje, "'", "''")


If IdMensaje = "" then

	oConn.Execute "INSERT INTO discusion (nombre, email, titulo, mensaje, fecha, url, imagen) VALUES ('"&nombre&"', '"&email&"', '"&titulo&"', '"&mensaje&"', '"& Now()&"', '"&url&"', '"&imagen&"')"
'Si es una respuesta a una pregunta...
Else
	oConn.Execute "INSERT INTO discusion (nombre, email, titulo, mensaje, fecha, url, imagen, IdCabeza) VALUES ('"&nombre&"', '"&email&"', '"&titulo&"', '"&mensaje&"', '"& Now()&"', '"&url&"', '"&imagen&"', "&IdMensaje&")"
	Set RS_Resp = Server.CreateObject("ADODB.RecordSet")
	sql = "SELECT respuestas FROM discusion WHERE IdMensaje="&IdMensaje&""
	RS_Resp.Open sql, oConn, 2 ,2
	oConn.Execute "UPDATE discusion SET Respuestas=("&RS_Resp("Respuestas")+1&") WHERE IdMensaje="&IdMensaje&" "
	RS_Resp.Close
	Set RS_Resp = Nothing
End If%>
  <BR>
  <BR>
  <B><font color="white"><%=nombre%> </font></B>tu mensaje con ASUNTO:<B> <font color="white"> 
  <%= titulo %></font> </B>, fue enviado con éxito al foro.</font></p>
<p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><B>TEXTO: </B><br>
  </font><font color="#FFFFCC" face="Verdana, Arial, Helvetica, sans-serif" size="2"><img src="../img/tras.gif" width="51" height="9"><%=AcomodarTXT(mensaje)%></font></p>
<div align="center">
  <p><BR>
  
                <% Dim oConn, RS
				Set oConn = Server.CreateObject ("ADODB.Connection")
				Set RS = Server.CreateObject ("ADODB.RecordSet") 
				oConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="&Server.MapPath("./foro.mdb")
				sql = "SELECT * FROM discusion WHERE IdCabeza=0 ORDER BY Fecha DESC"
				RS.Open sql, oConn,3,1%>
  
    <a href="vermensaje.asp?idmensaje=<%=RS("IdMensaje")%>" style="text-decoration:none">VOLVER PREGUNTA</a></p>
  <p> <BR>
    <A HREF="foro.asp" style="text-decoration:none"><font face="Verdana, Arial, Helvetica, sans-serif" size="4">VOLVER 
    INICIO FORO</font></A> 
    <%
oConn.Close
Set oConn = nothing
End If

Function AcomodarTXT(txt)
	txt = Replace (txt, "<", "&lt;")
	txt = Replace (txt, ">", "&gt;")
	txt = Replace (txt, vbCrLf, "<BR>")
	txt = Replace (txt, "''", "'")
	acomodarTXT = txt
End function
%>
  </p>
</div>
