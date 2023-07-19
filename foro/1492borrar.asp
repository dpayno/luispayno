<html> 
<head> 
   <title>F O R O :: Construcci&oacute;n de INSTRUMENTOS TRADICIONALES</title>
</head> 
<body background="../img/f_base.jpg" bgcolor="#CC9966" link="#FF0000" vlink="#990000" alink="#FF6600">
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
      <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="602" height="25" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></font><font color="#000000"></font></font></div>
    </td>
  </tr>
  <tr> 
    <td width="601" background="../img/f_caja1.gif"> 
      <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><b>Gesti&oacute;n 
        interna del FORO</b></font><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="15" height="25" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></font></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><b> 
        - </b></font><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="15" height="25" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></font></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><b>BORRADO</b></font><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="15" height="25" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></font></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><b> 
        DE</b></font><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="15" height="25" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"></font></font><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><b> 
        MENSAJES </b></font></div>
    </td>
  </tr>
</table>
<br>
<font face="Arial, Helvetica, sans-serif"> 
<% 
   Dim oConn,strSQL, objRS 
    
   Set oConn = Server.CreateObject("ADODB.Connection") 

   oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Data/../foro.mdb")) 
    
'==   strSQL = "SELECT * FROM idmensaje" 
strSQL = "SELECT * FROM discusion WHERE IdCabeza=0 ORDER BY Fecha DESC"

   Set objRS = oConn.Execute(strSQL) 
    
%>
</font> 
<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=0 height="13" bgcolor="#FFFFCC" bordercolor="#000000" align="center">
  <TR bgcolor="#FFFFCC" bordercolor="#663300" valign="middle" align="center"> 
    <TD width="171" height="19" bgcolor="#FFFF66"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif"><b><font size="2" color="#000033">&nbsp;Nombre</font></b></font></div>
    </TD>
    <TD width="474" height="19" bgcolor="#FFFF66"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif"><b><font size="2" color="#000033">&nbsp;Titulo&nbsp;</font></b></font></div>
    </TD>
    <TD width="73" height="19" bgcolor="#FFFF00"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif"><b><font size="2" color="#FF0000">BORRAR</font></b></font></div>
    </TD>
  </TR>
  <%       

   while (not objRS.Eof) 
      Response.Write("<tr><td>&nbsp;<FONT SIZE=1><font face=Verdana>&nbsp;" & objRS("Nombre") & "</td><td>&nbsp;<FONT SIZE=1><font face=Verdana><B>&nbsp;" & objRS("titulo") & "&nbsp;<FONT SIZE=1><font face=Verdana>&nbsp;"  &   "&nbsp;</td><td>&nbsp;<FONT SIZE=2><font face=Verdana>&nbsp;<a href=""1492borrado.asp?id=" & objRS("idmensaje") &""">BORRAR&nbsp;</a></td></tr>") 
      objRS.MoveNext 
   wend 
    
   oConn.Close 
   set objRS = nothing 
   set oConn = nothing 

%>
</table>
<p><font face="Arial, Helvetica, sans-serif"></font></p>
</body> 
</html> 
