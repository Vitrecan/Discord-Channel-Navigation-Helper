#SingleInstance Force
SetWorkingDir A_ScriptDir
#d::
{
    WinActivate "ahk_exe Discord.exe"
    Send "^k"
    Sleep 500
    Send "looking-for-clanmates"
    Sleep 1000
    Send "{Enter}"
    Sleep 1500
    Send "/post"
}
return
