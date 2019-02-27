#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetControlDelay -1

winTitleLanguage = Installer Language
winTitleInstall = AMT - Auto-Movie-Thumbnailer

WinWait, %winTitleLanguage%,,300
WinActivate, %winTitleLanguage%
Control, ChooseString, English, ComboBox1
ControlClick, OK,%winTitleLanguage%,,,, NA
WinWait, %winTitleInstall%,,5
WinActivate, %winTitleInstall%
ControlClick, Button2,%winTitleInstall%,,,, NA
WinWait, %winTitleInstall%,License Agreement,5
WinActivate, %winTitleInstall%
ControlClick, Button4,%winTitleInstall%,,,, NA
WinActivate, %winTitleInstall%
ControlClick, Button2,%winTitleInstall%,,,, NA
WinActivate, %winTitleInstall%
ControlClick, Button2,%winTitleInstall%,,,, NA
WinActivate, %winTitleInstall%
ControlClick, Button2,%winTitleInstall%,,,, NA
WinActivate, %winTitleInstall%
ControlClick, Button2,%winTitleInstall%,,,, NA
WinWait, %winTitleInstall%,Installation Complete,60
WinActivate, %winTitleInstall%
ControlClick, Button2,%winTitleInstall%,,,, NA
WinWait, %winTitleInstall%, Completing the AMT,5
WinActivate, %winTitleInstall%
ControlClick, Button4,%winTitleInstall%,,,, NA
ControlClick, Button2,%winTitleInstall%,,,, NA
return
