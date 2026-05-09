@echo off

cd /d "%~dp0" && (if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs") && fsutil dirty query %systemdrive% 1>nul 2>nul || (echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B)

regedit /s Advanced_Permission.reg
regedit /s Checkhash_and_Compare_Clip.reg
regedit /s Cmd_and_Powershell_here_as_admin.reg
regedit /s Quick_View_Folder.reg
regedit /s System_Tools.reg

echo --------------------------------------------------
echo     Installed successfully:
echo         Advanced_Permission.reg
echo         Checkhash_and_Compare_Clip.reg
echo         Cmd_and_Powershell_here_as_admin.reg
echo         Quick_View_Folder.reg
echo         System_Tools.reg
echo --------------------------------------------------
pause