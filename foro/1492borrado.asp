<% 
   Dim oConn,strSQL 
    
   Set oConn = Server.CreateObject("ADODB.Connection") 

   oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Data/../foro.mdb")) 
  
'=== strSQL = "SELECT * FROM discusion WHERE IdCabeza=0 ORDER BY Fecha DESC"  
'===   strSQL = "delete from prueba where idmensaje = " & Request.QueryString("id") 
   strSQL = "delete from discusion where idmensaje = " & Request.QueryString("id")
   oConn.Execute(strSQL) 
   oConn.Close 
   set oConn = nothing 
    
   Response.Redirect("1492borrar_msj.asp") 
%> 
