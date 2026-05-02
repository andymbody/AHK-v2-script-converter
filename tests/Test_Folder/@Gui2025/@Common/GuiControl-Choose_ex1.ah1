Gui, Add, DDL, vList gHandler, A|B|C|D
Gui, Add, Button,, 1
Gui, Add, Button, xp+50 yp, A
Gui, Add, Button, xp-50 yp+25, 2
Gui, Add, Button, xp+50 yp, B
Gui, Add, Button, xp-50 yp+25, 3
Gui, Add, Button, xp+50 yp, C
Gui, Add, Button, xp-50 yp+25, 4
Gui, Add, Button, xp+50 yp, D
Gui, Show
return

Button1:
one := "1"
GuiControl, Choose, List, % one
return
Button2:
GuiControl, ChooseString, List, B
return
Button3:
GuiControl, Choose, List, 3
return
Button4:
GuiControl, Choose, List, 4
return

ButtonA:
GuiControl, Choose, List, |1
return
ButtonB:
b := "|B"
GuiControl, ChooseString, List, % b
return
ButtonC:
GuiControl, Choose, List, ||3
return
ButtonD:
four := "4"
GuiControl, Choose, List, % "|" four
return

Handler:
MsgBox