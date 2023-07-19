<%@ LANGUAGE =VBScript %>

<html>
<head>
<title>Mensajes</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="1; url=foro.asp">
<script language="JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->
</script>
</head>

<body bgcolor="#efefef" text="#000000" link="#CCCCCC" vlink="#999999" alink="#0099CC">
<!--#include file="conect.asp" -->
<% 
	

SQL = "delete from mensajes where id_mensaje = " & Request.Querystring("ID")
set consulta = conexion.execute(SQL)

SQL = "delete from mensajes where id_padre = " & Request.Querystring("ID")
set consulta = conexion.execute(SQL)
%>
<div id="Layer1" style="position:absolute; left:0px; top:0px; width:908px; height:81px; z-index:1"> 
  <table align=left bgcolor=#306090 border=0 cellpadding=6 cellspacing=0 
width="97%">
    <tr> 
      <td align=left bgcolor=#306090 valign=center width=50><img border=0 
      src="img/firmas.gif" width="48" height="48"> </td>
      <td align=left bgcolor=#306090 valign=center><font color=#ffffff 
      face=Verdana size=5><b>FORO</b></font></td>
      <td align=right bgcolor=#306090 valign=bottom><a 
      href="insertar.asp"><img 
      alt="Añadir mensaje" border=0 src="img/gb_addmsg.gif" width="68" height="50"></a> 
        <a 
      href=""><img 
      alt=Recargar border=0 src="img/gb_reload.gif" width="69" height="50"></a> 
        <a 
      href="" 
      target=_blank><img alt=Ayuda border=0 src="img/gb_help.gif" width="58" height="50"></a> 
        <a href=""><img alt=Volver border=0 
      src="img/gb_exit.gif" width="72" height="50"></a> </td>
    </tr>
     
    <tr> 
      <td align=left bgcolor=#306090 colspan="3"><font color=#ffffff face=Verdana 
      size=2><b>&nbsp; Borrar mensaje</b></font></td>
    </tr>
    <tr> 
      <td align=left bgcolor=#33CCFF 
    height=5 colspan="3">&nbsp;</td>
    </tr>
    <tr bgcolor="#efefef"> 
      <td align=left colspan="3"> <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b>Mensaje 
        borrrado</b></font></td>
    </tr>
  
  </table>
</div>

</body>
</html>
