#include <MsgBoxConstants.au3>

; Cách 1: Tạo comment bằng dấu ; Ctrl + q
#cs
Cách 2: Tạo comment bằng cs, ce
#ce
;~ MsgBox(64 + 4 + 256, "Thông báo", "Hello World")
;~ MsgBox($MB_ICONINFORMATION + $MB_YESNO, "Thông báo", "Hi World")

;~ $gioithieu = "Tôi tên là"
;~ $ten = "Đạt"
;~ MsgBox(0,"Xin chào", $gioithieu &" "& $ten)

;~ Dim $mang[5]
;~ $mang[0] = "Tôi"
;~ $mang[1] = "tên"
;~ $mang[2] = "là"
;~ $mang[3] = "Đạt"
;~ $mang[4] = $mang[0] &" "& $mang[1] &" "& $mang[2] &" "& $mang[3]
;~ MsgBox(0,0,$mang[4])

;~ Const $pi = 3.14
;~ MsgBox(0,0,$pi)

;~ not, and, or, ==, <>, =
;~ "a" = "a" ; true
;~ "A" = "a" ; true
;~ "A" == "a" ; false

;~ $time = @HOUR &" : "& @MIN &" : "& @SEC
;~ MsgBox(0,0,"Bây giờ là:" &@CRLF& $time)

;~ $ten = InputBox("Nhập tên","Vui lòng nhập tên của bạn:")
;~ MsgBox(0,0,$ten)

#cs
- Cấu trúc điều kiện (if then), lặp (for next, while)
#ce

; IF THEN
;~ $input = InputBox("nhập số","Nhập 1 để hiện msgbox")
;~ If $input = 1 Then
;~ 	MsgBox(0,0,"Msgbox 1")
;~ ElseIf $input = 2 Then
;~ 	MsgBox(0,0,"Msgbox 2")
;~ ElseIf $input = 3 Then
;~ 	MsgBox(0,0,"Msgbox 3")
;~ Else
;~ 	MsgBox(0,0,"Msgbox")
;~ EndIf

; SWITCH CASE
;~ $input = InputBox("nhập số","Nhập 1 để hiện msgbox")
;~ Switch $input
;~ 	Case 1
;~ 		MsgBox(0,0,"Msgbox 1")
;~ 	Case 2
;~ 		MsgBox(0,0,"Msgbox 2")
;~ 	Case 3
;~ 		MsgBox(0,0,"Msgbox 3")
;~ 	Case Else
;~ 		MsgBox(0,0,"Msgbox")
;~ EndSwitch

; for loop
;~ For $i = 0 To 10 Step 2
;~ 	MsgBox(0,0,$i)
;~ Next

; while loop
;~ $input = 0
;~ While 1
;~ 	MsgBox(0,0,"running")
;~ 	$input += 1
;~ 	If $input = 1 Then ExitLoop
;~ WEnd

; sao chép, tạo, di chuyển, xóa thư mục
;~ DirCopy()
;~ DirCreate()
;~ DirMove()
;~ DirRemove()

; xử lý file
;~ FileWrite()
;~ FileWriteLine()
;~ FileRead()
;~ FileDelete()
;~ FileMove()
;~ FileCopy()
;~ FileSetAttrib()
;~ FileExists()
FileSetAttrib("C:\Users\admin\Downloads\*.*", "-H")
MsgBox(0, 0, @UserName)
;~ MsgBox(0, 0, @ScriptDir & "\html\1.html")
;~ ShellExecute(@ScriptDir & "\html\1.html")



