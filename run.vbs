Set objShell = CreateObject("WScript.Shell")
strFolder = objShell.CurrentDirectory
objShell.Run """C:\Program Files\Java\jdk-26\bin\java"" -jar """ & strFolder & "\dist\SPC.jar""", 0, False
