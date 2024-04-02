@TITLE Applications Installer and Bloatware Removal tool by xsukax
@echo off
color 0A

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
	goto MENU
:--------------------------------------    


:MENU
CLS
echo ---Note: Please Check the batch file before Installing any application---
echo ---Note: This is My Personal script, I Published it for public benefit---
echo ---Note: Modify the script as you see fit---
echo -----------------------------------------------------------
echo Applications Installer and Bloatware Removal tool by xsukax
echo -----------------------------------------------------------
echo 1 - Remove Bloatware.
echo 2 - Update All Installed Applications.
echo 3 - Install Only Needed Applications.
echo 4 - Uninstall Only Needed Applications.
echo 5 - Install All Applications For Geeks.
echo 6 - Uninstall All Applications For Geeks.
echo 7 - System Admin Tools.
echo.
SET /P choice=Enter your Choice:
IF %choice%==1 GOTO BLOATREM
IF %choice%==2 GOTO UPDATEAPPS
IF %choice%==3 GOTO MINIAPPS
IF %choice%==4 GOTO UNMINIAPPS
IF %choice%==5 GOTO GEEKSAPPS
IF %choice%==6 GOTO UNGEEKSAPPS
IF %choice%==7 GOTO DELTEMP
IF NOT "%choice%"=="1,2,3,4,5,6,7" goto BADCHOICE

:BLOATREM
CLS
echo ------------------
echo Removing Bloatware
echo ------------------
winget uninstall cortana
winget uninstall skype
winget uninstall Microsoft.GamingApp_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.XboxApp_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.XboxGameOverlay_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.ZuneMusic_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.Getstarted_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall 9NBLGGH42THS --accept-source-agreements --silent
winget uninstall Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall 9NBLGGH5FV99 --accept-source-agreements --silent
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall microsoft.windowscommunicationsapps_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.YourPhone_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.People_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.Wallet_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.WindowsMaps_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.Office.OneNote_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.ZuneVideo_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.MixedReality.Portal_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.GetHelp_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.OneDrive --accept-source-agreements --silent
winget uninstall Microsoft.Todos_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall Microsoft.BingNews_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall MicrosoftTeams_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall MicrosoftCorporationII.MicrosoftFamily_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe --accept-source-agreements --silent
winget uninstall disney+ --accept-source-agreements --silent
winget uninstall Clipchamp.Clipchamp_yxz26nhyzhsrt --accept-source-agreements --silent
pause
GOTO MENU

:UPDATEAPPS
CLS
echo -----------------------------------
echo Updating All Installed Applications
echo -----------------------------------
winget update --all
pause
GOTO MENU

:MINIAPPS
CLS
echo -----------------------------------
echo Installing Only Needed Applications
echo -----------------------------------
echo 7zip is Free and open source file archiver with a high compression ratio.
winget install --id 7zip.7zip
echo ShareX is a lightweight free and open source program that allows you to capture or record any area of your screen and share it with a single press of a key.
winget install --id ShareX.ShareX
echo Everything is search engine that locates files and folders by filename instantly for Windows.
winget install --id voidtools.Everything
echo FastStone Image Viewer is a fast, stable, user-friendly image browser, converter and editor.
winget install --id FastStone.Viewer
echo GIMP is an acronym for GNU Image Manipulation Program.
winget install --id GIMP.GIMP
echo Firefox Browser is a free and open-source web browser developed by the Mozilla Foundation
winget install --id Mozilla.Firefox
echo Thunderbird is a free email application that is easy to set up and customize and it's loaded with great features.
winget install --id Mozilla.Thunderbird
echo Sumatra PDF is a free PDF, eBook (ePub, Mobi), XPS, DjVu, CHM, Comic Book (CBZ and CBR) viewer for Windows.
winget install --id SumatraPDF.SumatraPDF
echo VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files.
winget install --id VideoLAN.VLC
echo qBittorrent is a bittorrent client programmed in C++ / Qt that uses libtorrent.
winget install --id qBittorrent.qBittorrent
echo MPC-HC is an extremely light-weight, open source media player for Windows.
winget install --id clsid2.mpc-hc
echo Google NearbyShare helps you to Send and receive photos, documents and more between nearby Android devices and Windows PCs.
winget install --id Google.NearbyShare
echo yt-dlp is a youtube-dl fork based on the now inactive youtube-dlc.
winget install --id yt-dlp.yt-dlp
echo yt-dlg is A cross platform front-end GUI of the popular youtube-dl written in wxPython.
winget install --id yt-dlg.yt-dlg
echo Internet Download Manager (IDM) is a tool to increase download speeds by up to 5 times, resume and schedule downloads.
winget install --id Tonec.InternetDownloadManager
pause
GOTO MENU

:UNMINIAPPS
CLS
echo -------------------------------------
echo Uninstalling Only Needed Applications
echo -------------------------------------
winget uninstall --id 7zip.7zip
winget uninstall --id ShareX.ShareX
winget uninstall --id voidtools.Everything
winget uninstall --id FastStone.Viewer
winget uninstall --id GIMP.GIMP
winget uninstall --id Mozilla.Firefox
winget uninstall --id Mozilla.Thunderbird
winget uninstall --id SumatraPDF.SumatraPDF
winget uninstall --id VideoLAN.VLC
winget uninstall --id qBittorrent.qBittorrent
winget uninstall --id clsid2.mpc-hc
winget uninstall --id Google.NearbyShare
winget uninstall --id yt-dlp.yt-dlp
winget uninstall --id yt-dlg.yt-dlg
winget uninstall --id Tonec.InternetDownloadManager
pause
GOTO MENU

:GEEKSAPPS
CLS
echo -------------------------------------
echo Installing All Applications For Geeks
echo -------------------------------------
echo 7zip is Free and open source file archiver with a high compression ratio.
winget install --id 7zip.7zip
echo ShareX is a lightweight free and open source program that allows you to capture or record any area of your screen and share it with a single press of a key.
winget install --id ShareX.ShareX
echo Everything is search engine that locates files and folders by filename instantly for Windows.
winget install --id voidtools.Everything
echo FastStone Image Viewer is a fast, stable, user-friendly image browser, converter and editor.
winget install --id FastStone.Viewer
echo File Shredder by PowTools.
winget install --id PowTools.FileShredder
echo GIMP is an acronym for GNU Image Manipulation Program.
winget install --id GIMP.GIMP
echo LockHunter is a free tool to delete files blocked by something you do not know.
winget install --id CrystalRich.LockHunter
echo Windows Terminal is a new, modern, feature-rich, productive terminal application for command-line users.
winget install --id Microsoft.WindowsTerminal
echo Firefox Browser is a free and open-source web browser developed by the Mozilla Foundation
winget install --id Mozilla.Firefox
echo Thunderbird is a free email application that is easy to set up and customize and it's loaded with great features.
winget install --id Mozilla.Thunderbird
echo Mp3tag is a powerful and easy-to-use tool to edit metadata of audio files.
winget install --id Mp3tag.Mp3tag
echo Notepad++ is a free source code editor and Notepad replacement that supports several languages.
winget install --id Notepad++.Notepad++
echo Stremio is a modern media center that's a one-stop solution for your video entertainment.
winget install --id Stremio.Stremio
echo Sumatra PDF is a free PDF, eBook (ePub, Mobi), XPS, DjVu, CHM, Comic Book (CBZ and CBR) viewer for Windows.
winget install --id SumatraPDF.SumatraPDF
echo VLC is a free and open source cross-platform multimedia player and framework that plays most multimedia files.
winget install --id VideoLAN.VLC
echo Authy is secure 2-step verification app, It helps you protect your account from hackers and hijackers by adding an additional layer of security.
winget install --id Twilio.Authy
echo Etcher is a powerful OS image flasher built with web technologies to ensure flashing an SDCard or USB drive is a pleasant and safe experience.
winget install --id Balena.Etcher
echo qBittorrent is a bittorrent client programmed in C++ / Qt that uses libtorrent.
winget install --id qBittorrent.qBittorrent
echo WinSCP is an open source free SFTP client, FTP client, WebDAV client, S3 client and SCP client for Windows.
winget install --id WinSCP.WinSCP
echo MPC-HC is an extremely light-weight, open source media player for Windows.
winget install --id clsid2.mpc-hc
echo VeraCrypt is a software for establishing and maintaining an on-the-fly-encrypted volume (data storage device).
winget install --id IDRIX.VeraCrypt
echo VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.
winget install --id Oracle.VirtualBox
echo KeePassXC is a cross-platform password manager that allows you to store all of your passwords in one location.
winget install --id KeePassXCTeam.KeePassXC
echo Advanced IP Scanner shows all network devices, gives you access to shared folders.
winget install --id Famatech.AdvancedIPScanner
echo Google NearbyShare helps you to Send and receive photos, documents and more between nearby Android devices and Windows PCs.
winget install --id Google.NearbyShare
echo Tailscale is a WireGuard based mesh VPN, used to connect your computers and other devices together securely without proxies.
winget install --id tailscale.tailscale
echo SyncTrayzor is a little tray utility for Syncthing on Windows.
winget install --id SyncTrayzor.SyncTrayzor
echo Audacity is a free, easy-to-use, multi-track audio editor and recorder.
winget install --id Audacity.Audacity
echo yt-dlp is a youtube-dl fork based on the now inactive youtube-dlc.
winget install --id yt-dlp.yt-dlp
echo yt-dlg is A cross platform front-end GUI of the popular youtube-dl written in wxPython.
winget install --id yt-dlg.yt-dlg
echo CodeBlocks is Free open-source C/C++/Fortran IDE (includes additional GCC/G++ compiler and GDB debugger).
winget install --id Codeblocks.Codeblocks
echo Kdenlive is an acronym for KDE Non-Linear Video Editor.
winget install --id KDE.Kdenlive
echo HandBrake is a tool for converting video from nearly any format to a selection of modern, widely supported codecs.
winget install --id HandBrake.HandBrake
echo Internet Download Manager (IDM) is a tool to increase download speeds by up to 5 times, resume and schedule downloads.
winget install --id Tonec.InternetDownloadManager
pause
GOTO MENU

:UNGEEKSAPPS
CLS
echo ---------------------------------------
echo Uninstalling All Applications For Geeks
echo ---------------------------------------
winget uninstall --id 7zip.7zip
winget uninstall --id ShareX.ShareX
winget uninstall --id voidtools.Everything
winget uninstall --id FastStone.Viewer
winget uninstall --id PowTools.FileShredder
winget uninstall --id GIMP.GIMP
winget uninstall --id CrystalRich.LockHunter
winget uninstall --id Microsoft.WindowsTerminal
winget uninstall --id Mozilla.Firefox
winget uninstall --id Mozilla.Thunderbird
winget uninstall --id Mp3tag.Mp3tag
winget uninstall --id Notepad++.Notepad++
winget uninstall --id Stremio.Stremio
winget uninstall --id SumatraPDF.SumatraPDF
winget uninstall --id VideoLAN.VLC
winget uninstall --id Twilio.Authy
winget uninstall --id Balena.Etcher
winget uninstall --id qBittorrent.qBittorrent
winget uninstall --id WinSCP.WinSCP
winget uninstall --id clsid2.mpc-hc
winget uninstall --id IDRIX.VeraCrypt
winget uninstall --id Oracle.VirtualBox
winget uninstall --id KeePassXCTeam.KeePassXC
winget uninstall --id Famatech.AdvancedIPScanner
winget uninstall --id Google.NearbyShare
winget uninstall --id tailscale.tailscale
winget uninstall --id SyncTrayzor.SyncTrayzor
winget uninstall --id Audacity.Audacity
winget uninstall --id yt-dlp.yt-dlp
winget uninstall --id yt-dlg.yt-dlg
winget uninstall --id Codeblocks.Codeblocks
winget uninstall --id KDE.Kdenlive
winget uninstall --id HandBrake.HandBrake
winget uninstall --id Tonec.InternetDownloadManager
pause
GOTO MENU

:DELTEMP
IF EXIST "%~dp0\actwo-xsukax.cmd" ( del "%~dp0\actwo-xsukax.cmd" )
IF EXIST "%~dp0\regidm-xsukax.cmd" ( del "%~dp0\regidm-xsukax.cmd" )
IF EXIST "%~dp0\actrar-xsukax.cmd" ( del "%~dp0\actrar-xsukax.cmd" )
goto SYSADMIN

:SYSADMIN
CLS
echo -------------------
echo System Admin Tools.
echo -------------------
echo 1 - Activate Windows and Office.
echo 2 - Register Internet Download Manager (IDM). 
echo 3 - Register Winrar. 
echo 4 - Restore Wifi Password.
echo 5 - Net Purge and Flush DNS.
echo 6 - Back to Menu.
echo.
SET /P choice=Enter your Choice:
IF %choice%==1 GOTO ACTWO
IF %choice%==2 GOTO REGIDM
IF %choice%==3 GOTO ACTRAR
IF %choice%==4 GOTO WIFIPASS
IF %choice%==5 GOTO NETPURGE
IF %choice%==6 GOTO MENU
IF NOT "%choice%"=="1,2,3,4,5,6" goto BADCHOICE

:ACTWO
::Script Project Link https://github.com/massgravel/Microsoft-Activation-Scripts
SET downloadUrl=https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/master/MAS/All-In-One-Version/MAS_AIO-CRC32_60BA35A8.cmd
SET "tempFile=%~dp0\actwo-xsukax.cmd"
BITSADMIN /transfer /download %downloadUrl% %tempFile% >nul
::CMD /c %tempFile%
call %tempFile%
GOTO SYSADMIN

:REGIDM
::Script Project Link https://github.com/lstprjct/IDM-Activation-Script
SET downloadUrl=https://raw.githubusercontent.com/lstprjct/IDM-Activation-Script/main/IAS.cmd
SET "tempFile=%~dp0\regidm-xsukax.cmd"
BITSADMIN /transfer /download %downloadUrl% %tempFile% >nul
::CMD /c %tempFile%
call %tempFile%
GOTO SYSADMIN

:ACTRAR
::Script Project Link https://github.com/NaeemBolchhi/WinRAR-Activator
SET downloadUrl=https://raw.githubusercontent.com/NaeemBolchhi/WinRAR-Activator/main/WRA-20230312191859.cmd
SET "tempFile=%~dp0\actrar-xsukax.cmd"
BITSADMIN /transfer /download %downloadUrl% %tempFile% >nul
::CMD /c %tempFile%
call %tempFile%
GOTO SYSADMIN

:WIFIPASS

REM ECHO DEBUGGING: Beginning Main execution block.
REM - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

CLS

netsh wlan show profile

SET /P "_SSID=Enter SSID name: "

REM - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

IF EXIST "%_TEXT_OUTPUT_FILE%" DEL /Q "%_TEXT_OUTPUT_FILE%" & REM Clean-up temp file ASAP.
IF EXIST "%_ERROR_OUTPUT_FILE%" DEL /Q "%_ERROR_OUTPUT_FILE%" & REM Clean-up temp file ASAP.

SET "_TEXT_OUTPUT_FILE=%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.txt"
SET "_ERROR_OUTPUT_FILE=%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.txt"

netsh wlan show profile "%_SSID%" key=clear >"%_TEXT_OUTPUT_FILE%" 2>"%_ERROR_OUTPUT_FILE%" 

netsh wlan show profile "%_SSID%" key=clear && SET "_COMMAND_EXIT=SUCCESS" || SET "_COMMAND_EXIT=FAILURE"
REM ECHO DEBUGGING: %%_COMMAND_EXIT%% = %_COMMAND_EXIT%

REM - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

IF "%_COMMAND_EXIT%"=="SUCCESS" (
	REM If command succeeds:
	REM ECHO DEBUGGING: Command succeeded^^!
	ECHO - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	TYPE "%_TEXT_OUTPUT_FILE%" | FIND "Key Content"
	REM ECHO DEBUGGING: ErrorLevel = !ERRORLEVEL!
	IF !ERRORLEVEL! NEQ 0 ECHO No password found.
	
	REM FIND "Key Content" <"%_TEXT_OUTPUT_FILE%"
	REM ECHO DEBUGGING: ErrorLevel = !ERRORLEVEL!
	REM IF !ERRORLEVEL! NEQ 0 ECHO No password found.
	ECHO - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	DEL /Q "%_TEXT_OUTPUT_FILE%" & REM Clean-up temp file ASAP.
)
IF EXIST "%_TEXT_OUTPUT_FILE%" DEL /Q "%_TEXT_OUTPUT_FILE%" & REM Clean-up temp file ASAP.

REM - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

REM Bugfix: always include "tokens=*" to handle filenames with spaces.
SET "_FILE_SIZE="
FOR /F "tokens=*" %%G IN ("%_ERROR_OUTPUT_FILE%") DO SET "_FILE_SIZE=%%~zG"
REM ECHO DEBUGGING: "%%_FILE_SIZE%%" = "%_FILE_SIZE%"

IF "%_COMMAND_EXIT%"=="FAILURE" (
	REM If command fails:
	REM ECHO DEBUGGING: Command failed^^!
	ECHO:
	IF %_FILE_SIZE% GTR 0 (
		ECHO Error output text:
		ECHO - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		TYPE "%_ERROR_OUTPUT_FILE%"
		ECHO - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		ECHO:
	) ELSE (
		REM ECHO DEBUGGING: No error msg found.
	)
	DEL /Q "%_ERROR_OUTPUT_FILE%" & REM Clean-up temp file ASAP.
	PAUSE
	GOTO Main
)
IF EXIST "%_TEXT_OUTPUT_FILE%" DEL /Q "%_TEXT_OUTPUT_FILE%" & REM Clean-up temp file ASAP.
IF EXIST "%_ERROR_OUTPUT_FILE%" DEL /Q "%_ERROR_OUTPUT_FILE%" & REM Clean-up temp file ASAP.
pause
GOTO SYSADMIN

:NETPURGE
cls
cd c:\ 
echo Starting FlushDNS
	@echo off 
	ipconfig /flushdns
echo Ok.
echo.
echo Start the WinSock
	@echo off 
	netsh winsock reset catalog
echo.
echo Starting ARPcache
	@echo off 
	netsh interface ip delete arpcache
echo Ok.
echo.
echo Cleaning the log file
	@echo off 
	netsh int ip reset c:resetlog.txt
echo Ok.
echo.
echo NetPURGE OK
echo.
echo Network Card restart (release/renew)
	@echo off
	ipconfig /release
	ipconfig /renew
echo.
echo Remember to restart your computer.
echo.
echo ######################################
echo.
pause
goto SYSADMIN

:BADCHOICE
echo -----------
echo Bad Choice.
echo -----------
ping localhost -n 5 >nul
goto MENU
