#Requires AutoHotkey v2.0
CoordMode("pixel", "window")
CoordMode("mouse", "window")
roblox := "ahk_exe RobloxPlayerBeta.exe"

ActivateRoblox() {
    if !WinExist(roblox) {
        MsgBox("Roblox Not Found!", "Error!", "4096")
        return false
    } else {
        WinActivate(roblox)
        WinGetPos(&x, &y, &w, &h, roblox)
        WinMove(x, y, 800, 600, roblox)
        WinActivate(roblox)
        SetTimer(AttachRBX, 50)
    }
}

AttachRBX() {
    if !WinExist(roblox) {
        MsgBox("Roblox Not Found!", "Error!", "4096")
        return false
    } else {
    WinGetPos(&x, &y, &w, , MyGui)
    WinMove(x + 10, y + 89, 800, 600, roblox)
    }
}

Wiggle1(x, y) {
    MouseMove(x, y)
    Sleep(300)
    MouseMove(1, 1, 5, "R")
    Sleep(300)
    MouseMove(-1, -1, 5, "R")
    Sleep(300)
    Click
}

PixelSearch5(color, x1, y1, x2, y2, variation) {
    global foundX, foundY
    if PixelSearch(&foundX, &foundY, x1, y1, x2, y2, color, variation) {
        return [foundX, foundY]
    }
    return false
}

MacroRepeat() {
    ActivateRoblox()
    Sleep(500)
    Wiggle1(230, 113)
    Sleep(500)
    Seedsfinding()
    Sleep(500)
    Gearsfinding()
    Sleep(500)
    Wiggle1(411, 112)
}

Seedsfinding() {
    Send("{e}")
    Sleep(1500)
    Send("{\}")
    Sleep(300)
    loop 2 {
        Send("{Down}")
        Sleep(300)
    }
    ifseeds()
    Send("{Up}")
    Sleep(300)
    Send("{Right}")
    Sleep(300)
    Send("{Enter}")
    Sleep(300)
    Send("{\}")
}

Gearsfinding() {
    GearsPath()
    Send("{e}")
    Sleep(1500)
    Send("{\}")
    Sleep(300)
    loop 2 {
        Send("{Down}")
        Sleep(300)
    }
    ifgears()
    Sleep(500)
    Send("{Up}")
    Sleep(300)
    Send("{Right}")
    Sleep(300)
    Send("{Enter}")
    Sleep(300)
    Send("{\}")
}

GearsPath() {
    Wiggle1(227, 111)
    Click
    Sleep(1000)
    for item in [{key: "a", dur: 850}, {key: "s", dur: 700}] {
        Send("{" item.key " down}")
        Sleep(item.dur)
        Send("{" item.key " up}")
        Sleep(500)
    }
    Send("{e}")
}

ifseeds() {
    if (bamboo.Value = "1") {
        BuySeedAtOffset(6)
    }
    if (corn.Value = "1") {
        BuySeedAtOffset(7)
    }
    if (cactus.Value = "1") {
        BuySeedAtOffset(8)
    }
    if (pineapple.Value = "1") {
        BuySeedAtOffset(9)
    }
    if (mushroom.Value = "1") {
        BuySeedAtOffset(10)
    }
    if (gbean.Value = "1") {
        BuySeedAtOffset(11)
    }
    if (banana.Value = "1") {
        BuySeedAtOffset(12)
    }
    if (grape.Value = "1") {
        BuySeedAtOffset(13)
    }
    if (coconut.Value = "1") {
        BuySeedAtOffset(14)
    }
    if (mango.Value = "1") {
        BuySeedAtOffset(15)
    }
    if (dfruit.Value = "1") {
        BuySeedAtOffset(16)
    }
    if (acorn.Value = "1") {
        BuySeedAtOffset(17)
    }
    if (cherry.Value = "1") {
        BuySeedAtOffset(18)
    }
    if (sunflower.Value = "1") {
        BuySeedAtOffset(19)
    }
    if (venus.Value = "1") {
        BuySeedAtOffset(20)
    }
    if (pomegranate.Value = "1") {
        BuySeedAtOffset(21)
    }
    if (papple.Value = "1") {
        BuySeedAtOffset(22)
    }
    if (mbloom.Value = "1") {
        BuySeedAtOffset(23)
    }
    if (dbreath.Value = "1") {
        BuySeedAtOffset(24)
    }
}

ifgears() {
    if (watercan.Value = "1") {
        CheckForFirstItem()
    }
    if (sprinkler.Value = "1") {
        BuySeedAtOffset(1)
    }
    if (uncommonwatercan.Value = "1") {
        BuySeedAtOffset(3)
    }
    if (raresprinkler.Value = "1") {
        BuySeedAtOffset(5)
    }
    if (legsprinkler.Value = "1") {
        BuySeedAtOffset(15)
    }
    if (supwatercan.Value = "1") {
        BuySeedAtOffset(19)
    }
    if (supsprinkler.Value = "1") {
        BuySeedAtOffset(20)
    }
}

BuySeedAtOffset(offset) {
    Loop offset {
        Send("{Down}")
        Sleep(300)
    }

    Sleep(300)
    CheckForStock()
    Sleep(300)

    Loop offset {
        Send("{Up}")
        Sleep(300)
    }
}

CheckForStock() {
    PixelSearch5("0x18E909", "233", "500", "337", "611", "5")
    if (PixelSearch5("0x18E909", "233", "500", "337", "611", "5")) {
        Send("{Enter}")
        Sleep(500)
        Send("{Down}")
        Sleep(500)
        loop {
            if (PixelSearch5("0x349702", "260", "336", "490", "397", "5")) {
                Send("{Enter}")
                Sleep(300)
            }
            if !(PixelSearch5("0x349702", "260", "336", "490", "397", "5")) {
                Send("{Up}")
                Sleep(300)
                Send("{Enter}")
                Sleep(500)
                return
            }
        }
    }
    if !(PixelSearch5("0x18E909", "233", "500", "337", "611", "5")) {
        return
    }
}
CheckForFirstItem() {
    PixelSearch5("0x18E909", "233", "260", "337", "371", "5")
    if (PixelSearch5("0x18E909", "233", "500", "337", "611", "5")) {
        Send("{Enter}")
        Sleep(500)
        Send("{Down}")
        Sleep(500)
        loop {
            if (PixelSearch5("0x349702", "260", "336", "490", "397", "5")) {
                Send("{Enter}")
                Sleep(300)
            }
            if !(PixelSearch5("0x349702", "260", "336", "490", "397", "5")) {
                Send("{Up}")
                Sleep(300)
                Send("{Enter}")
                Sleep(500)
                return
            }
        }
    }
    if !(PixelSearch5("0x349702", "260", "336", "490", "397", "5")) {
        return
    }
}