;============================== Start Auto-Execution Section ==============================
; Always run as admin
if !A_IsAdmin {
    Run '*RunAs "' A_AhkPath '" "' A_ScriptFullPath '"'
    ExitApp
}
; Keeps script permanently running
Persistent

GroupAdd "saveReload", "A_ScriptName"

;============================== Save Reload / Quick Stop ==============================
if WinActive("ahk_group saveReload") {
    ; Use Control+S to save your script and reload it at the same time.
    ~^s:: {
        Reload
        return
    }

    ; Hard exit that just closes the script
    ^Esc::ExitApp
}

;============================== Main Script ==============================

; Your main code here.
; Global hotkeys
; Global hotstrings
; etc...

;============================== Program 1 ==============================
; Evertything between here and the next #IfWinActive will ONLY work in someProgram.exe
; This is called being "context sensitive"

; Disable Caps Lock key
SetCapsLockState "AlwaysOff"

#HotIf WinActive("Firefox")
    CapsLock & f::Send "Vincent{Tab}"

    CapsLock & m::Send "Le{Tab}"

    CapsLock & l::Send "Tran{Tab}"

    CapsLock & e::Send "vincent.le.tran27@gmail.com{Tab}"

    CapsLock & p::Send "0434194156{Tab}"

    CapsLock & a::Send "84 Humphries Rd St Johns Park{Tab}"

    CapsLock & s::Send "New South Wales{Tab}"

    CapsLock & c::Send "Sydney{Tab}"

    CapsLock & u::Send "University of Technology Sydney{Tab}"

    CapsLock & d::Send "Software Engineering{Tab}"    

;============================== ini Section ==============================
; Do not remove /* or */ from this section. Only modify if you're
; storing values to this file that need to be permanantly saved.
/*
[SavedVariables]
Key=Value
*/
;============================== End Script ==============================