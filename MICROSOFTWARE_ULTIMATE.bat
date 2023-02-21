if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
@echo off
cls



>nul 2>&1 "%systemroot%\system32\cacls.exe" "%systemroot%\system32\config\system"
If '%errorlevel%' neq '0' (Goto uacprompt) else (goto gotadmin)
:uacprompt
Echo set uac = createobject^("shell.application"^) > "%temp%\getadmin.vbs"
Echo uac.shellexecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
Exit /b
:gotadmin
If exist "%temp%\getadmin.vbs" (del "%temp%\getadmin.vbs")





set folder="c:\windows\system32\StexupMenuUtility\"

set backmenu=Premi un tasto per tornare al menu!



cd\
md %folder% 2>nul
cd %folder%





if exist color.txt (
set /p colore=<color.txt
) else (
set colore=0a
)



powershell Start-Sleep -milliseconds 200
PowerShell.exe -window normal -command mode 120,30

cls
title MICROAPP
:home
cd %folder%
color 3
cls
echo.
echo.	===========================================================================================================
echo	  	-----------------------------------------------------------------------------------------------------------
echo.
echo. 						=--------=
echo.						[  HOME  ]
echo.						=--------=
echo. 								   
echo.		
echo.												
echo. 			1.shutdown		2.restart		3.Disconnetc        4.Advanced Tools			   
echo. 								   				
echo.
timeout /t 1 /nobreak > NUL
echo.           		5.HIBERNATE		6.visit my website
echo.           						   	
echo. 							   										
echo.												
echo.				(help)			(exit)			(info)		(update)
echo.												
echo.		
echo.
echo	  	-----------------------------------------------------------------------------------------------------------
echo.	===========================================================================================================
echo.
timeout /t 1 /nobreak > NUL
echo.	 select (1, 2, 3, 4, 5, 6, info, help,update)
echo.
set /p r=.	\\\
if %r%==1 goto a1
if %r%==2 goto a2
if %r%==3 goto disconnect
if %r%==4 goto a3
if %r%==5 goto hibernate
if %r%==6 goto a4
if %r%==exit goto exit
if %r%==EXIT goto exit
if %r%==info goto info
if %r%==INFO goto info
if %r%==activators goto act
if %r%==ACTIVATORS goto act
if %r%==HELP goto help1
if %r%==help goto help1
if %r%==UPDATE goto update
if %r%==update goto update
if %r%==/updatenow goto update1
if %r%==/UPDATENOW goto update1

:disconnect
cls
shutdown /l
exit

:help1
cls
start https://www.informatica365.tk/projects/microsoftware/help1
goto home

:a1
cls
shutdown -s -t 4 -c "Ok..."
exit

:a2
cls
shutdown -r -t 4 -c "Ok..."
exit

:a3
cls
color B
echo.
echo.
echo. ------------------------------------------------------------------------------------------------------
echo.
echo.
echo.	1.Taskmanager			2.CleanDisk			3.MRT
echo.
echo.
echo.	4.ScanDisk			5.Computer Manager		6.Taskkiller
echo.
echo.
echo. ------------------------------------------------------------------------------------------------------
echo.
echo.
echo.	 	select ( 1, 2, 3, 4, 5, 6) or home
echo.
set /p i=.	\\\
if %i%==1 goto b1
if %i%==2 goto b2
if %i%==3 goto b3
if %i%==4 goto b4
if %i%==5 goto b5
if %i%==6 goto b6
if %i%==home goto home
if %i%==HOME goto home
if %i%==help goto help1
if %i%==exit goto exit
if %i%==EXIT goto exit
:b1
cls
taskmgr
goto a3
:b2
cls
echo Loading...
cleanmgr
goto a3
:b3
cls
echo Loading...
MRT
goto a3
:b4
cls
chkdsk /f
goto a3
:b5
cls
compmgmt.msc
goto a3

:exit
cls
color 57
pause
exit

:a4
cls
start https://www.informatica365.tk
goto home

:info
cls
echo.		-----------------------------------------------------------------------------------------
echo.
timeout /t 1 /nobreak > NUL
echo.						MICROSOFTWARE
echo.
timeout /t 1 /nobreak > NUL
echo.				release:
echo.
timeout /t 1 /nobreak > NUL
echo.			software version: 3.10.5 v
echo.
timeout /t 1 /nobreak > NUL
echo.			create by Runkang
echo.
timeout /t 1 /nobreak > NUL
echo.			email: club.leggendario@gmail.com
echo.
timeout /t 1 /nobreak > NUL
echo.			website url: https://www.informatica365.tk/projects/microsoftware/help1
echo.
echo.		-----------------------------------------------------------------------------------------
pause
goto home

:act
cls
cls
color 4b
echo.
echo =============================================================================================================
echo.
echo.
echo.	1.install gpedit.msc on Win...Home	2.install windows pro	3.install windows Enterprise
echo.
echo.
echo.	visite my website(web)
echo.
echo.
echo =============================================================================================================
echo.
echo.        select (1,2,3,web) or home
echo.
set /p act=.	\\\
if %act%==1 goto c1
if %act%==2 goto c2
if %act%==3 goto c3
if %act%==exit goto exit
if %act%==EXIT goto exit
if %act%==web goto web
if %act%==home goto home
if %act%==HOME goto home 
:c1
cls
pushd "%~dp0" 

dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt 
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt 

for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i" 
pause
goto home
:c2
cls
slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
timeout /t 2 /nobreak > NUL
slmgr.vbs /skms kms.lotro.cc
timeout /t 2 /nobreak > NUL
slmgr.vbs /ato
goto home
:c3
cls
slmgr.vbs /ipk 4NQDM-RHQCK-QXDV3-KGPPV-FJRCF
timeout /t 2 /nobreak > NUL
slmgr.vbs /skms kms.lotro.cc
timeout /t 2 /nobreak > NUL
slmgr.vbs /ato
goto home
:web
cls
color b
echo.
echo.
echo ===========================================================================================================
echo.
echo.
echo.	1.Official 		2.NewSite		3.BetaWebsite		4.GitHub Pages
echo.
echo.
echo.
echo ===========================================================================================================
echo.
echo.
echo.     select (A,B,C,D) or EXT
echo.
set /p e=.	\\\
if %e%==1 goto 1w
if %e%==2 goto 2w
if %e%==3 goto 3w
if %e%==4 goto 4w
if %e%==exit goto exit
if %e%==EXIT goto exit
if %e%==EXT goto act
if %e%==ext goto act
:1w
cls
start https://www.informatica365.tk
goto web
:2w
cls
start https://runkangchen.github.io
goto web
:3w
cls
start https://www.informatic365.tk
goto web
:4w
start https://runkangchen.github.io/Programs/#programs-setup-download
goto web

:b6
cls
goto N
:N
cls
echo.
echo.
echo.	---------------------------------------------------------------------------------------------------------
echo.
echo.
echo.		Attentio: be careful not to kill system processes!!!
echo.
echo.
echo.		enter the name and extension of the software to terminate example: chrome.exe ...
echo.
echo.
echo.	---------------------------------------------------------------------------------------------------------
echo.
set /p t=.	\\\
echo.		are you sure to terminate "%t%" ???   (Y/N)
set /p a=.	 	(Y/N)
if %a%==y goto Y
if %a%==Y goto Y
if %a%==exit goto exit
if %a%==EXIT goto exit
if %a%==n goto N
if %a%==N goto N
:Y
cls
echo OK!
timeout /t 1 /nobreak > NUL
taskkill /im %t% /f
pause
goto a3

:update
cls
start https://sites.google.com/view/microsoftware365/updatesystem
goto home

:update1
cls
start https://sites.google.com/view/microsoftware365/updatesystem
goto home

:HIBERNATE
cls
echo.     ENABLE/DISABLE HIBERNATE
echo.
echo.
echo        1. ENABLE HIBERNATE
echo.
echo        2. DISABLE HIBERNATE
echo.
echo.
choice /c 12 /n /m "ENABLE [1] DISABLE [2] "
echo.
if %errorlevel%==1 goto hibernate_ENABLE
if %errorlevel%==2 goto hibernate_DISABLE
:hibernate_ENABLE
powercfg -hibernate on
cls
color af
echo.
echo.
echo.
echo.
echo.
echo         hibernation is Enabled
echo.
echo.
echo.
echo.
echo.
timeout /t 4 >nul
goto menu
:hibernate_DISABLE
powercfg -hibernate off
cls
color c0
echo.
echo.
echo.
echo.
echo.
echo        hibernation is Disabled
echo.
echo.
echo.
echo.
timeout /t 4 >nul
goto menu
