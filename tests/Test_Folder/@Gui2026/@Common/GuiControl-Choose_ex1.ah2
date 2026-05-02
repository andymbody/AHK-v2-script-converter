#Include <v2DynGui> ; V1toV2: v2DynGui.ahk in library folder
iniGuiCtrlVars() ; V1toV2: initialize gui ctrl vars
#Warn Unreachable, Off
If (!HasV2Gui("")) {
    mV2Gui[""] := NewV2Gui("")
}
mV2GC[["","List"]] := mV2Gui[""].Add("DDL","vList",["A","B","C","D"])
mV2GC[["","List"]].OnEvent("Change",Handler.Bind("Normal"))
mV2GC[["","1"]] := mV2Gui[""].Add("Button",,"1")
mV2GC[["","1"]].OnEvent("Click",Button1.Bind("Normal"))
mV2GC[["","A"]] := mV2Gui[""].Add("Button","xp+50 yp","A")
mV2GC[["","A"]].OnEvent("Click",ButtonA.Bind("Normal"))
mV2GC[["","2"]] := mV2Gui[""].Add("Button","xp-50 yp+25","2")
mV2GC[["","2"]].OnEvent("Click",Button2.Bind("Normal"))
mV2GC[["","B"]] := mV2Gui[""].Add("Button","xp+50 yp","B")
mV2GC[["","B"]].OnEvent("Click",ButtonB.Bind("Normal"))
mV2GC[["","3"]] := mV2Gui[""].Add("Button","xp-50 yp+25","3")
mV2GC[["","3"]].OnEvent("Click",Button3.Bind("Normal"))
mV2GC[["","C"]] := mV2Gui[""].Add("Button","xp+50 yp","C")
mV2GC[["","C"]].OnEvent("Click",ButtonC.Bind("Normal"))
mV2GC[["","4"]] := mV2Gui[""].Add("Button","xp-50 yp+25","4")
mV2GC[["","4"]].OnEvent("Click",Button4.Bind("Normal"))
mV2GC[["","D"]] := mV2Gui[""].Add("Button","xp+50 yp","D")
mV2GC[["","D"]].OnEvent("Click",ButtonD.Bind("Normal"))
mV2Gui[""].Show()
return

Button1:
Button1()
return
Button2:
Button2()
return
Button3:
Button3()
return
Button4:
Button4()
return

ButtonA:
ButtonA()
return
ButtonB:
ButtonB()
return
ButtonC:
ButtonC()
return
ButtonD:
ButtonD()
return

Handler:
Handler()
return

;###############  V1toV2 FUNCS  ###############
Button1(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
one := "1"
(InStr(one,"|")) && ControlChooseIndex(Integer(Trim(one,"|")), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(Integer(Trim(one,"|")))
return
}
;##############################################
Button2(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
(InStr("B","|")) && ControlChooseString(Trim("B","|"), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose("B")
return
}
;##############################################
Button3(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
(InStr(3,"|")) && ControlChooseIndex(Integer(Trim(3,"|")), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(Integer(Trim(3,"|")))
return
}
;##############################################
Button4(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
(InStr(4,"|")) && ControlChooseIndex(Integer(Trim(4,"|")), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(Integer(Trim(4,"|")))
return
}
;##############################################
ButtonA(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
(InStr("|1","|")) && ControlChooseIndex(Integer(Trim("|1","|")), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(Integer(Trim("|1","|")))
return
}
;##############################################
ButtonB(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
b := "|B"
(InStr(b,"|")) && ControlChooseString(Trim(b,"|"), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(b)
return
}
;##############################################
ButtonC(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
(InStr("||3","|")) && ControlChooseIndex(Integer(Trim("||3","|")), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(Integer(Trim("||3","|")))
return
}
;##############################################
ButtonD(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
four := "4"
(InStr("|" four,"|")) && ControlChooseIndex(Integer(Trim("|" four,"|")), mV2GC[["","List"]]) || mV2GC[["","List"]].Choose(Integer(Trim("|" four,"|")))
return
}
;##############################################
Handler(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(IsSet(A_GuiControl)) && SetDefaultGui(A_GuiControl)
MsgBox()
}
;##############################################
iniGuiCtrlVars() { ; V1toV2: initializes gui control variables
    global
    List := ""
}