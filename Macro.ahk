#Requires AutoHotkey v2.0
#SingleInstance Force
#Include Misc\ui.ahk
#Include Misc\funcs.ahk

CoordMode("pixel", "window")
CoordMode("mouse", "window")

ActivateRoblox()

F1:: {
    MacroRepeat()
    Sleep(300)
    SetTimer(MacroRepeat, 300000)
}
Paused := false
F2:: {
    PauseMacro(*) {
    global Paused
    Paused := !Paused
    Pause(Paused)
}

}
F3:: Reload
F4:: ExitApp()