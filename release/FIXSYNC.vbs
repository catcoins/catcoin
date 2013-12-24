'Catcoin Syncing issues fix by JRWR, originally by ConnorM - http://teamcatcoin.com/ - 23/12/2013
Set oShell = CreateObject( "WScript.Shell" )
appdata=oShell.ExpandEnvironmentStrings("%AppData%")
Const ForAppending = 8
file=appdata+"\CatCoin\CatCoin.conf"
folder=appdata+"\CatCoin"
Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FolderExists(folder) = False Then
Set objFolder = objFSO.CreateFolder(folder)
End If
If objFSO.FileExists(file) = False Then
Set objFile = objFSO.CreateTextFile(file)
else
Set objFile = objFSO.OpenTextFile(file, ForAppending)
End If
objFile.WriteLine
nodes = "maxconnections=100" & VbCrLf & _
"addnode=teamcatcoin.com" & VbCrLf & _
"addnode=catpool.co" & VbCrLf & _
"addnode=cat.poolerino.com" & VbCrLf & _
"addnode=cat.poolofpools.com" & VbCrLf & _
"addnode=cat.coinium.org" & VbCrLf & _
"addnode=cat.cryptovalley.com"
objFile.Write nodes
objFile.Close
msgbox "Successfuly added nodes to CatCoin.conf, please restart the Catcoin wallet!"
