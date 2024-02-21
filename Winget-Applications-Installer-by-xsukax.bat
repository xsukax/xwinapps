MODE CON: COLS=120 LINES=35
@TITLE Applications Installer by xsukax
@echo off
color 0A
goto MENU

:MENU
CLS
echo --------------------------------
echo Applications Installer by xsukax
echo --------------------------------
echo 1 - Install All Applications For Geeks.
echo 2 - Install Only Needed Applications.
echo 3 - Uninstall All Applications For Geeks.
echo 3 - Uninstall Only Needed Applications.
echo.
SET /P choice=Enter your Choice:
IF %choice%==1 GOTO GEEKSAPPS
IF %choice%==2 GOTO MINIAPPS
IF %choice%==3 GOTO UNGEEKSAPPS
IF %choice%==4 GOTO UNMINIAPPS
IF NOT "%choice%"=="1,2,3,4" goto BADCHOICE

:GEEKSAPPS
CLS
echo -------------------------------------
echo Installing All Applications For Geeks
echo -------------------------------------
winget install --id Microsoft.AppInstaller
winget install --id 7zip.7zip
winget install --id ShareX.ShareX
winget install --id voidtools.Everything
winget install --id FastStone.Viewer
winget install --id PowTools.FileShredder
winget install --id GIMP.GIMP
winget install --id CrystalRich.LockHunter
winget install --id Microsoft.WindowsTerminal
winget install --id Mozilla.Firefox
winget install --id Mozilla.Thunderbird
winget install --id Mp3tag.Mp3tag
winget install --id Notepad++.Notepad++
winget install --id Stremio.Stremio
winget install --id SumatraPDF.SumatraPDF
winget install --id VideoLAN.VLC
winget install --id Twilio.Authy
winget install --id Balena.Etcher
winget install --id qBittorrent.qBittorrent
winget install --id WinSCP.WinSCP
winget install --id clsid2.mpc-hc
winget install --id subhra74.XtremeDownloadManager
winget install --id IDRIX.VeraCrypt
winget install --id SoftMaker.FreeOffice.2021
winget install --id Oracle.VirtualBox
winget install --id KeePassXCTeam.KeePassXC
winget install --id Famatech.AdvancedIPScanner
winget install --id Google.NearbyShare
winget install --id tailscale.tailscale
winget install --id SyncTrayzor.SyncTrayzor
winget install --id Audacity.Audacity
winget install --id yt-dlp.yt-dlp
winget install --id yt-dlg.yt-dlg
winget install --id Codeblocks.Codeblocks
winget install --id KDE.Kdenlive
winget install --id HandBrake.HandBrake
GOTO MENU

:MINIAPPS
CLS
echo -----------------------------------
echo Installing Only Needed Applications
echo -----------------------------------
winget install --id Microsoft.AppInstaller
winget install --id 7zip.7zip
winget install --id ShareX.ShareX
winget install --id voidtools.Everything
winget install --id FastStone.Viewer
winget install --id GIMP.GIMP
winget install --id Mozilla.Firefox
winget install --id Mozilla.Thunderbird
winget install --id Stremio.Stremio
winget install --id SumatraPDF.SumatraPDF
winget install --id VideoLAN.VLC
winget install --id qBittorrent.qBittorrent
winget install --id clsid2.mpc-hc
winget install --id subhra74.XtremeDownloadManager
winget install --id SoftMaker.FreeOffice.2021
winget install --id Google.NearbyShare
winget install --id yt-dlp.yt-dlp
winget install --id yt-dlg.yt-dlg
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
winget uninstall --id subhra74.XtremeDownloadManager
winget uninstall --id IDRIX.VeraCrypt
winget uninstall --id SoftMaker.FreeOffice.2021
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
winget uninstall --id Stremio.Stremio
winget uninstall --id SumatraPDF.SumatraPDF
winget uninstall --id VideoLAN.VLC
winget uninstall --id qBittorrent.qBittorrent
winget uninstall --id clsid2.mpc-hc
winget uninstall --id subhra74.XtremeDownloadManager
winget uninstall --id SoftMaker.FreeOffice.2021
winget uninstall --id Google.NearbyShare
winget uninstall --id yt-dlp.yt-dlp
winget uninstall --id yt-dlg.yt-dlg
GOTO MENU

:BADCHOICE
echo -----------
echo Bad Choice.
echo -----------
ping localhost -n 5 >nul
goto MENU