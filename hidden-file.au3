#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ComboConstants.au3>
#Region ### START Koda GUI section ### Form=
GUICreate("Hidden File - Author: fb.com/ntdat.104", 600, 200, @DesktopWidth/2-300, @DesktopHeight/2-100)
GUISetIcon("C:\Program Files (x86)\AutoIt3\Icons\MyAutoIt3_Green.ico", -1)
GUISetFont(11, 400, 0, "Tahoma")
GUISetBkColor(0x008000)
GUICtrlCreateLabel("Source File", 30, 35, 88, 20)
GUICtrlSetFont(-1, 11, 800, 0, "Tahoma")
GUICtrlSetColor(-1, 0xFFFF00)
GUICtrlCreateLabel("Source Folder", 30, 85, 108, 20)
GUICtrlSetFont(-1, 11, 800, 0, "Tahoma")
GUICtrlSetColor(-1, 0xFFFF00)
$Input_Source_File = GUICtrlCreateInput("", 150, 30, 400, 25)
$Input_Source_Folder = GUICtrlCreateInput("", 150, 80, 340, 25)
$Input_Source_Folder_Extend = GUICtrlCreateInput("", 500, 80, 50, 25)
$Button_Show = GUICtrlCreateButton("Show", 330, 135, 100, 35)
GUICtrlSetFont(-1, 11, 800, 0, "Tahoma")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetBkColor(-1, 0xC0DCC0)
$Button_Hide = GUICtrlCreateButton("Hide", 450, 135, 100, 35)
GUICtrlSetFont(-1, 11, 800, 0, "Tahoma")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetBkColor(-1, 0xC0DCC0)
$Button_Change_Color = GUICtrlCreateButton("Change Color", 30, 135, 200, 35)
GUICtrlSetFont(-1, 11, 800, 0, "Tahoma")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetBkColor(-1, 0xC0DCC0)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button_Change_Color
			MsgBox(0,"Thông báo","Xin lỗi chúng tôi chưa phát triển trạng thái này!")
		Case $Button_Hide
			Hide_File()
		Case $Button_Show
			Show_File()
	EndSwitch
WEnd

Func Hide_File()
	If(GUICtrlRead($Input_Source_Folder)) Then
		If(GUICtrlRead($Input_Source_Folder_Extend)) Then
			$src_folder = GUICtrlRead($Input_Source_Folder)
			$src_folder_extend = GUICtrlRead($Input_Source_Folder_Extend)
			FileSetAttrib($src_folder &"\*"& $src_folder_extend, "+H")
			MsgBox(0,"Thông báo","Trong thư mục: " &$src_folder &@CRLF& "Bạn đã ẩn toàn bộ file có đuôi: " &$src_folder_extend)
		Else
			$src_folder = GUICtrlRead($Input_Source_Folder)
			FileSetAttrib($src_folder &"\*.*", "+H")
			MsgBox(0,"Thông báo","Trong thư mục: " &$src_folder &@CRLF& "Bạn đã ẩn toàn bộ file.")
		EndIf
	ElseIf(GUICtrlRead($Input_Source_File)) Then
		$src_file = GUICtrlRead($Input_Source_File)
		FileSetAttrib($src_file, "+H")
		MsgBox(0,"Thông báo","Bạn đã ẩn thành công file: " &$src_file)
	Else
		MsgBox(0,"Thông báo","Mời bạn nhập source")
	EndIf
EndFunc

Func Show_File()
	If(GUICtrlRead($Input_Source_Folder)) Then
		If(GUICtrlRead($Input_Source_Folder_Extend)) Then
			$src_folder = GUICtrlRead($Input_Source_Folder)
			$src_folder_extend = GUICtrlRead($Input_Source_Folder_Extend)
			FileSetAttrib($src_folder &"\*"& $src_folder_extend, "-H")
			MsgBox(0,"Thông báo","Trong thư mục: " &$src_folder &@CRLF& "Bạn đã hiện toàn bộ file có đuôi: " &$src_folder_extend)
		Else
			$src_folder = GUICtrlRead($Input_Source_Folder)
			FileSetAttrib($src_folder &"\*.*", "-H")
			MsgBox(0,"Thông báo","Trong thư mục: " &$src_folder &@CRLF& "Bạn đã hiện toàn bộ file.")
		EndIf
	ElseIf(GUICtrlRead($Input_Source_File)) Then
		$src_file = GUICtrlRead($Input_Source_File)
		FileSetAttrib($src_file, "-H")
		MsgBox(0,"Thông báo","Bạn đã hiện thành công file: " &$src_file)
	Else
		MsgBox(0,"Thông báo","Mời bạn nhập source")
	EndIf
EndFunc








