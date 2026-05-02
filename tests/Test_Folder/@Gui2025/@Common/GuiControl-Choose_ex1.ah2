#Warn Unreachable, Off
myGui := Gui()
ogcDDLList := myGui.Add("DDL", "vList", ["A", "B", "C", "D"])
ogcDDLList.OnEvent("Change", Handler.Bind("Normal"))
ogcButton1 := myGui.Add("Button", , "1")
ogcButton1.OnEvent("Click", Button1.Bind("Normal"))
ogcButtonA := myGui.Add("Button", "xp+50 yp", "A")
ogcButtonA.OnEvent("Click", ButtonA.Bind("Normal"))
ogcButton2 := myGui.Add("Button", "xp-50 yp+25", "2")
ogcButton2.OnEvent("Click", Button2.Bind("Normal"))
ogcButtonB := myGui.Add("Button", "xp+50 yp", "B")
ogcButtonB.OnEvent("Click", ButtonB.Bind("Normal"))
ogcButton3 := myGui.Add("Button", "xp-50 yp+25", "3")
ogcButton3.OnEvent("Click", Button3.Bind("Normal"))
ogcButtonC := myGui.Add("Button", "xp+50 yp", "C")
ogcButtonC.OnEvent("Click", ButtonC.Bind("Normal"))
ogcButton4 := myGui.Add("Button", "xp-50 yp+25", "4")
ogcButton4.OnEvent("Click", Button4.Bind("Normal"))
ogcButtonD := myGui.Add("Button", "xp+50 yp", "D")
ogcButtonD.OnEvent("Click", ButtonD.Bind("Normal"))
myGui.Show()
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
one := "1"
(InStr(one,"|")) && ControlChooseIndex(Integer(Trim(one,"|")), ogcDDLList) || ogcDDLList.Choose(Integer(Trim(one,"|")))
return
}
;##############################################
Button2(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(InStr("B","|")) && ControlChooseString(Trim("B","|"), ogcDDLList) || ogcDDLList.Choose("B")
return
}
;##############################################
Button3(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(InStr(3,"|")) && ControlChooseIndex(Integer(Trim(3,"|")), ogcDDLList) || ogcDDLList.Choose(Integer(Trim(3,"|")))
return
}
;##############################################
Button4(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(InStr(4,"|")) && ControlChooseIndex(Integer(Trim(4,"|")), ogcDDLList) || ogcDDLList.Choose(Integer(Trim(4,"|")))
return
}
;##############################################
ButtonA(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(InStr("|1","|")) && ControlChooseIndex(Integer(Trim("|1","|")), ogcDDLList) || ogcDDLList.Choose(Integer(Trim("|1","|")))
return
}
;##############################################
ButtonB(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
b := "|B"
(InStr(b,"|")) && ControlChooseString(Trim(b,"|"), ogcDDLList) || ogcDDLList.Choose(b)
return
}
;##############################################
ButtonC(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
(InStr("||3","|")) && ControlChooseIndex(Integer(Trim("||3","|")), ogcDDLList) || ogcDDLList.Choose(Integer(Trim("||3","|")))
return
}
;##############################################
ButtonD(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
four := "4"
(InStr("|" four,"|")) && ControlChooseIndex(Integer(Trim("|" four,"|")), ogcDDLList) || ogcDDLList.Choose(Integer(Trim("|" four,"|")))
return
}
;##############################################
Handler(A_GuiEvent:="", A_GuiControl:="", Info:="", *) { ; V1toV2: Lbl->Func
global
MsgBox()
}