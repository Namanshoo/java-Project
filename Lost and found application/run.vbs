' Lost and Found Application - Run Script
' This VBScript builds and runs the Android application

Option Explicit
Dim objShell, objFSO, strProjectPath, intChoice, boolContinue

Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Get the project directory (where this script is located)
strProjectPath = objFSO.GetParentFolderName(WScript.ScriptFullName)

boolContinue = True

Do While boolContinue
    ' Display menu
    Dim strMenu
    strMenu = "Lost and Found Application - Run Menu" & vbCrLf & vbCrLf & _
              "1. Clean Build" & vbCrLf & _
              "2. Build Debug APK" & vbCrLf & _
              "3. Build and Install to Device/Emulator" & vbCrLf & _
              "4. Run Tests" & vbCrLf & _
              "5. Open Project in Android Studio" & vbCrLf & _
              "6. Clean Gradle Cache" & vbCrLf & _
              "0. Exit" & vbCrLf & vbCrLf & _
              "Select an option:"

    intChoice = InputBox(strMenu, "Lost and Found Application")

    Select Case intChoice
        Case "1"
            RunCommand "gradlew clean"
        Case "2"
            RunCommand "gradlew assembleDebug"
        Case "3"
            RunCommand "gradlew installDebug"
        Case "4"
            RunCommand "gradlew test"
        Case "5"
            objShell.Run "cmd /c start android-studio """ & strProjectPath & """", 0, False
            MsgBox "Android Studio opened. You can close this window.", vbInformation, "Android Studio"
        Case "6"
            If MsgBox("This will delete the .gradle folder. Continue?", vbYesNo + vbExclamation, "Confirm") = vbYes Then
                On Error Resume Next
                objFSO.DeleteFolder(objShell.ExpandEnvironmentStrings("%USERPROFILE%") & "\.gradle"), True
                On Error Goto 0
                MsgBox "Gradle cache cleaned successfully!", vbInformation, "Success"
            End If
        Case "0"
            boolContinue = False
        Case Else
            If intChoice <> "" Then
                MsgBox "Invalid option selected!", vbExclamation, "Error"
            Else
                boolContinue = False
            End If
    End Select
Loop

Sub RunCommand(strCmd)
    Dim intExitCode
    On Error Resume Next
    
    intExitCode = objShell.Run("cmd /c cd /d """ & strProjectPath & """ && " & strCmd & " && pause", 1, True)
    
    If Err.Number <> 0 Then
        MsgBox "Error running command: " & Err.Description, vbCritical, "Error"
    ElseIf intExitCode <> 0 Then
        MsgBox "Command completed with exit code: " & intExitCode, vbExclamation, "Warning"
    Else
        MsgBox "Command completed successfully!", vbInformation, "Success"
    End If
    
    On Error Goto 0
End Sub
