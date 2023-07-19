<%	Option Explicit %>
<!-- #include file="constants.inc" -->
<%
Dim ChatID
Dim requestedUsername
ChatID = Request("ChatID")
requestedUsername = Server.HTMLEncode( Request("username") )
' do not show login screen if a valid session exists
If (ChatID <> "") Then
	Response.Redirect "chat.asp?ChatID=" & ChatID
	Response.End
End If
Dim mode, x, errorMessage
mode = Request("mode")
If ( (mode = "userLogin") ) Then
	If ( Len(Request("username")) < 1 ) Then
		errorMessage = "Debe de introducir un NOMBRE para comenzar la sesi�n en el chat"
	Else
		' Check if this user exist already
		requestedUsername = Left(requestedUsername, 15)
		If (Not FindUser(requestedUsername) AND (InStr(requestedUsername, "|") = 0)) Then
			' we have a new chat user thus we need to create a new
			' id for him/her
			ChatID = CStr(Timer) ' safe enough for now
			Application.Lock
			Application.StaticObjects.Item("ASPChat").Add ChatID, requestedUsername
			Application.StaticObjects.Item("ASPChatTime").Add ChatID, CStr(Now())
			' tell all other users about this new user
			For x = MESSAGES To 2 Step -1
				Application("chatline_" & x) = Application("chatline_" & x-1)
			Next
			Application("chatline_1") = "<tr><td align='right'><img src='images/Enter.gif' height=7 width=15>&nbsp;</td><td><span class='loggedIn'>" & requestedUsername & " se acaba de conectar -  " & now & "</span></td></tr>"
			Application.Unlock
			' redirect to new frame window and create a new session,
			' if user has enabled session
			Response.Redirect "Chat.asp?ChatID=" & ChatID
			Response.End
		Else
			errorMessage = "Lo sentimos, pero el nombre esta utiliz�ndose. Por favor, introduzca otro."
		End If
	End If
End If
%>


<html>
<head>
<title>CHAT :: Construcci&oacute;n Instrumentos Tradicionales :: </title>
<META NAME="description" CONTENT="CHAT Construcci�n de INSTRUMENTOS MUSICALES, planos, foro, mercadillo, noticias, reportajes, album de fotos, materiales...">
<META NAME="keywords" CONTENT="chat foro instrumentos construcciones tradiciones tradici�n construcci�n luthier musicas m�sica planos rabeles zanfonas gaitas flautas tambores dulzainas carracas mirlitones chicotenes flautas guitarras grupos trompas violines tejoletas zambombas leng�etas cuernos cuerdas guitarras casta�uelas arpas albocas laud pifanos tamboril montar bricolaje maderas pieles ca�as cuernos vejigas mp3 download free handmade hand made make hobby hurdy gurdy culture traditions bagpipes flute idiofonos idi�fonos aerofono aer�fonos membranofonos membran�fonos cordofonos cord�fonos sociedades grupos actualidad gratis foros noticias eventos payno sencillo ni�os historia didactico ense�anza libro cultura etnograf�a fundaci�n poemas ciegos siglos antecesores ancestros espa�a espana comunidades provincial regional bailes buscadores fotos clavijeros clavija laud internacional pa�s paises agrupaci�n fiestas sonar partitura andalucia baleares canarias catalu�a catalunia pais vasco valencia castilla le�n galicia asturias levante centro madrid sierra espa�a europa musica Asturias �vila Burgos Santander Coru�a Le�n Lugo Ourense Palencia Pontevedra Logro�o Salamanca Segovia Soria Valladolid Zamora Alava Guipuzcoa Huesca Navarra Teruel Vizcaya Zaragoza Barcelona Girona LLeida Tarragona  Badajoz Caceres Ciudad Real Cuenca Guadalajara Madrid Toledo  Albacete Alicante Castellon Murcia Valencia Illes Balears Almeria Cadiz Cordoba Granada Huelva Jaen Malaga Sevilla  Las Palmas Tenerife Ceuta Melilla hispanoamerica europa museos colecciones instrumentos musicologos estudiosos trabajos colaboraciones">


<link rel="stylesheet" type="text/css" href="Chat.css">
<script language="JavaScript">
<!--

<!--
		function setFocus()
		{
			document.frmLogin.username.focus();
		}
	// -->
//-->
</script>
</head>
<body topmargin="1" leftmargin="1" marginwidth="1" marginheight="1" background="../img/f_base.jpg" bgcolor="#FFFFFF" link="#000066" vlink="#000066" alink="#000066">
<form name="frmLogin" method="POST" action="Default.asp">
  <p> 
    <input type="hidden" name="mode" value="userLogin">
  </p>
  <p>&nbsp; </p>
  <table width="64%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr> 
      <td> 
        <table width="507" border="0" cellspacing="0" cellpadding="0" bordercolor="0" align="center" height="43">
          <tr> 
            <td rowspan="2"> 
              <div align="right"><a href="../pral.htm"><img src="../img/cabez_1.gif" width="64" height="75" border="0" alt="VOLVER al portal"></a></div>
            </td>
            <td width="601" background="../img/f_caja1.gif" bgcolor="#663300"> 
              <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" color="#993399"><b><font face="Verdana, Arial, Helvetica, sans-serif" color="#FFFF00"><img src="../img/tras.gif" width="8" height="25" align="absmiddle"></font><font color="#FFFF00">Construcci&oacute;n 
                de INSTRUMENTOS TRADICIONALES</font></b></font></div>
            </td>
            <td rowspan="2"> 
              <div align="left"><a href="../pral.htm"><img src="../img/cabez_2.gif" width="64" height="75" border="0" alt="VOLVER al portal"></a></div>
            </td>
          </tr>
          <tr> 
            <td width="601" background="../img/f_caja2.gif"> 
              <div align="left"><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif" color="#000000"><img src="../img/tras.gif" width="130" height="50" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"><b><font color="#FFFF00" size="5">C 
                <img src="../img/tras.gif" width="8" height="38" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0">H<img src="../img/tras.gif" width="8" height="38" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"> 
                A<img src="../img/tras.gif" width="8" height="38" align="absmiddle" name="SUBMENU" usemap="#SUBMENUMap" border="0"> 
                T</font></b></font><font color="#FFFF00" size="5" face="Verdana, Arial, Helvetica, sans-serif"></font></font></div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <table width="507" border="1" cellspacing="0" cellpadding="0" align="center" bordercolor="#000000" height="160">
    <tr> 
      <td bgcolor="#FFCC66" height="151"> 
        <div align="center">
          <table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#FFFFCC">
            <tr bgcolor="#FFCC66"> 
              <td colspan="2"> 
                <div align="center"><span class="Error"><%=errorMessage%></span> 
                </div>
                <table border="0" width="100%" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="44%"> 
                      <div align="right"><b>Nombre</b>&nbsp;</div>
                    </td>
                    <td width="56%"> 
                      <input type="text" name="username" class="editField" size="15" tabindex="1" maxlength="15">
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
            <tr valign="top" bgcolor="#FFCC66"> 
              <td colspan="2" height="6"> 
                <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">(m&aacute;ximo 
                  15 caracteres)</font></div>
              </td>
            </tr>
            <tr bgcolor="#FFCC66"> 
              <td width="184"><img src="../img/tras.gif" width="205" height="44"></td>
              <td align="right" width="269"> 
                <div align="left"> 
                  <input type="image" name="login" value="submit" src="images/Chat.gif" border="0" width="90" height="30" tabindex="2">
                </div>
              </td>
            </tr>
            <tr bgcolor="#000000"> 
              <td colspan="2" height="1"> 
                <div align="center"><img src="../img/tras.gif" width="210" height="1"></div>
              </td>
            </tr>
            <tr bgcolor="#FFCC66"> 
              <td colspan="2"> 
                <div align="center"><font color="#663300"><img src="../img/tras.gif" width="4" height="33" align="absmiddle">Usuarios 
                  en el chat (max. <%=USERS%>):</font></div>
              </td>
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
		Response.Write "<tr bgcolor='#FFCC66'>"
	Else
		Response.Write "<tr bgcolor='#FFCC66'>"
	End If
	Response.Write " <td><div align='right'><img src='images/Chatter.gif' align='absmiddle' width=5 height=5 hspace='5'></td>"
	Response.Write " <td width='100%' class='infoText'>" & chatName & "&nbsp;</td>"
	Response.Write "</tr>"
Next

If (Application.StaticObjects.Item("ASPChat").Count = 0) Then
%>
            <tr bgcolor="#FFCC66"> 
              <td colspan="2" class="infoHeader"> 
                <div align="center">&nbsp;&nbsp;&nbsp;<font color="#663300">El 
                  chat se encuentra vacio</font></div>
              </td>
            </tr>
            <%
End If
%>
          </table>
        </div>
      </td>
    </tr>
  </table>
</form>
<div align="center">
  <p> 
    <script language="JavaScript">
	setFocus();
</script>
  </p>
  <p><font color="#FFFF00"><img src="../img/tras.gif" width="4" height="20" align="bottom"><b>RECUERDE</b>, 
    si en 10 minutos no utiliza el chat. &iexcl; SU SESION FINALIZARA ! </font></p>
  <p><a href="../pral.htm"><font color="#FFFFFF" size="2">Volver al portal Construcci&oacute;n 
    Instrumentos Tradicionales</font></a><br>
    <b><a href="../pral.htm"><font color="#FFFFFF" size="3" face="Verdana, Arial, Helvetica, sans-serif">INICIO</font></a></b></p>
  </div>
</body>
</html>