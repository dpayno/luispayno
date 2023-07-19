<%
Const MESSAGES = 60		' a maximum of 60 messages are shown on screen
Const USERS = 30			' a maximum of 30 users may join
CONST TIMEOUT = 600		' in seconds - a session times out after 5 minutes (5*60=300)
Const CLEAR_ON_EMPTY = False	' specify is all messages should be wiped, when last user
					' leaves the chatroom. The 'whiteboard cleaner'.
Function FindUser(userName)
	userName = Trim(userName)

	Dim UserWasFound
	UserWasFound = False

	Dim arUserNames, i
	arUserNames = Application.StaticObjects.Item("ASPChat").Items
	For i = 0 To Application.StaticObjects.Item("ASPChat").Count-1
		If (StrComp(userName, arUserNames(i), 1) = 0) Then
			UserWasFound = True
			Exit For
		End If
	Next
	FindUser = UserWasFound
End Function
%>