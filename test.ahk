SetCapsLockState "AlwaysOff"

CapsLock & LButton:: {
    static toggle := false
    toggle := !toggle
    SetTimer(Click, toggle ? 1 : 0)
}