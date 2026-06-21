#Requires AutoHotkey v2.0

MyGui := Gui("+AlwaysOnTop -Caption")
MyGui.Title := "SzymsX GAG Macro"
MyGui.Show("w1100 h750")


MyGui.BackColor := "0x0B0B0E" 

MyGui.Add("Text", "x0 y0 w1100 h2 BackgroundWhite")
MyGui.Add("Text", "x0 y748 w1100 h2 BackgroundWhite")
MyGui.Add("Text", "x0 y0 w2 h750 BackgroundWhite")
MyGui.Add("Text", "x1098 y0 w2 h750 BackgroundWhite")

; --- Title Area ---
MyGui.SetFont("s16 w700 cDDEEFF", "Segoe UI")
MyGui.Add("Text", "x20 y15 w250 BackgroundTrans", "Grow A Garden 2 Macro")


MyGui.SetFont("s10 w500 c8899AA") 
MyGui.Add("Text", "x880 y15 w200 Right BackgroundTrans", "Made by SzymsX`nUI by Kaguya")


MyGui.SetFont("s11 w600 cDDEEFF")
MyGui.Add("Text", "x80 y75 w150 Center BackgroundTrans", "[F1]  START")
MyGui.Add("Text", "x260 y75 w150 Center BackgroundTrans", "[F2]  STOP")
MyGui.Add("Text", "x440 y75 w150 Center BackgroundTrans", "[F3]  RELOAD")
MyGui.Add("Text", "x620 y75 w150 Center BackgroundTrans", "[F4]  EXIT")



MyGui.Add("Text", "x18 y118 w804 h2 BackgroundWhite")  ; Top Border
MyGui.Add("Text", "x18 y720 w804 h2 BackgroundWhite")  ; Bottom Border
MyGui.Add("Text", "x18 y118 w2 h604 BackgroundWhite")  ; Left Border
MyGui.Add("Text", "x820 y118 w2 h604 BackgroundWhite") ; Right Border

; The cutout itself
MyGui.Add("Progress", "x20 y120 w800 h600 -Theme c0x413319 Background0x0B0B0E", 100) 
WinSetTransColor("0x413319 255", MyGui.Hwnd)


MyGui.Add("Text", "x840 y120 w240 h600 Background0x15151A") 

MyGui.SetFont("s13 w600 cDDEEFF")
MyGui.Add("Text", "x840 y135 w240 Center BackgroundTrans", "Crop Selector")

MyGui.SetFont("s10 w400 cDDEEFF")

bamboo      := MyGui.Add("Checkbox", "x860 y175", "Bamboo")
corn        := MyGui.Add("Checkbox", "x860 y198", "Corn")
cactus      := MyGui.Add("Checkbox", "x860 y221", "Cactus")
pineapple   := MyGui.Add("Checkbox", "x860 y244", "Pineapple")
mushroom    := MyGui.Add("Checkbox", "x860 y267", "Mushroom")
gbean       := MyGui.Add("Checkbox", "x860 y290", "Green Bean")
banana      := MyGui.Add("Checkbox", "x860 y313", "Banana")
grape       := MyGui.Add("Checkbox", "x860 y336", "Grape")
coconut     := MyGui.Add("Checkbox", "x860 y359", "Coconut")
mango       := MyGui.Add("Checkbox", "x860 y382", "Mango")
dfruit      := MyGui.Add("Checkbox", "x860 y405", "Dragon Fruit")
acorn       := MyGui.Add("Checkbox", "x860 y428", "Acorn")
cherry      := MyGui.Add("Checkbox", "x860 y451", "Cherry")
sunflower   := MyGui.Add("Checkbox", "x860 y474", "Sunflower")
venus       := MyGui.Add("Checkbox", "x860 y497", "Venus Fly Trap")
pomegranate := MyGui.Add("Checkbox", "x860 y520", "Pomegranate")
papple      := MyGui.Add("Checkbox", "x860 y543", "Poison Apple")
mbloom      := MyGui.Add("Checkbox", "x860 y566", "Moon Bloom")
dbreath     := MyGui.Add("Checkbox", "x860 y589", "Dragon's Breath")


optnbttn := MyGui.Add("Button", "x860 y665 w200 h35", "Gear Options")
optnbttn.SetFont("s11 w600")
optnbttn.OnEvent("Click", optnsfunc)


OnMessage(0x0201, (*) => PostMessage(0xA1, 2))
WinSetRegion("0-0 w1100 h750 R20-20", MyGui.Hwnd)


; -------- Options GUI --------

optnsfunc(*) {
    optns.Show("w500 h700")
}

optns := Gui("+AlwaysOnTop -Caption")
optns.BackColor := "0x0B0B0E"


optns.Add("Text", "x0 y0 w500 h2 BackgroundWhite")
optns.Add("Text", "x0 y698 w500 h2 BackgroundWhite")
optns.Add("Text", "x0 y0 w2 h700 BackgroundWhite")
optns.Add("Text", "x498 y0 w2 h700 BackgroundWhite")


optns.SetFont("s16 w600 cDDEEFF", "Segoe UI")
optns.Add("Text", "x460 y10 w25 BackgroundTrans Center", "X").OnEvent("Click", optnsclosefunc)
optns.Add("Text", "x430 y10 w25 BackgroundTrans Center", "-").OnEvent("Click", optnsminimizefunc)


optns.Add("Text", "x20 y15 w200 BackgroundTrans", "Gear Settings")


optns.Add("Text", "x20 y60 w460 h615 Background0x15151A")

optns.SetFont("s11 w400 cDDEEFF")
watercan         := optns.Add("Checkbox", "x40 y80",  "Common Watering Can")
sprinkler        := optns.Add("Checkbox", "x40 y115", "Common Sprinkler")
uncommonwatercan := optns.Add("Checkbox", "x40 y150", "Uncommon Watering Can")
raresprinkler    := optns.Add("Checkbox", "x40 y185", "Rare Sprinkler")
legsprinkler     := optns.Add("Checkbox", "x40 y220", "Legendary Sprinkler")
supwatercan      := optns.Add("Checkbox", "x40 y255", "Super Watering Can")
supsprinkler     := optns.Add("Checkbox", "x40 y290", "Super Sprinkler")

WinSetRegion("0-0 w500 h700 R20-20", optns.Hwnd)

optnsclosefunc(*) {
    optns.Hide()
}
optnsminimizefunc(*) {
    optns.Minimize()
}