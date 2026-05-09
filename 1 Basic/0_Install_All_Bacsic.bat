@echo off

cd /d "%~dp0" && (if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs") && fsutil dirty query %systemdrive% 1>nul 2>nul || (echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B)

regedit /s Copy-path_Move-to_Copy-to.reg
regedit /s Delete_Properties_Recycle_Bin.reg
regedit /s Delete_Text-Shortcut.reg
regedit /s Disable_Auto_Update.reg
regedit /s Disable_AutoPlay.reg
regedit /s Disable_Recently_added_Pin_app.reg
regedit /s Disable_User_account_control_settings.reg
regedit /s Disable_Visual_Effects.reg
regedit /s Folder_Options.reg
regedit /s Format_time.reg
regedit /s Hide_Folders_in_Navigation_Pane.reg
regedit /s Mouse_Speed.reg
regedit /s Remove_Edge.reg
regedit /s Restore_Windows_Photo_Viewer.reg
regedit /s Time_Zone_GTM7.reg

echo --------------------------------------------------
echo     Installed successfully:
echo         Copy-path_Move-to_Copy-to.reg
echo         Delete_Properties_Recycle_Bin.reg
echo         Delete_Text-Shortcut.reg
echo         Disable_Auto_Update.reg
echo         Disable_AutoPlay.reg
echo         Disable_Recently_added_Pin_app.reg
echo         Disable_User_account_control_settings.reg
echo         Disable_Visual_Effects.reg
echo         Folder_Options.reg
echo         Format_time.reg
echo         Hide_Folders_in_Navigation_Pane.reg
echo         Mouse_Speed.reg
echo         Remove_Edge.reg
echo         Restore_Windows_Photo_Viewer.reg
echo         Time_Zone_GTM7.reg
echo --------------------------------------------------
pause