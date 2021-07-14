@echo off
title sovelluksien asennus
echo haluatko asentaa wingetin?
.\winget.appxbundle
echo Tasta alkaa sovelluksien asennus
echo minka koneen haluat asentaa? 
echo 1:poytakone, 2:lappari, 3:myyntikone tai 4:myyntipelikone
set /p kone=
set winget=powershell winget install
IF /i "%kone%"=="1" goto 1
IF /i "%kone%"=="2" goto 2
echo Not found.
goto commonexit
:: pelikone

:1
echo pelikoneen asennus
%winget% kodi
%winget% steam
%winget% origin
%winget% GOG.Galaxy
%winget% EpicGames.EpicGamesLauncher
%winget% WinDirStat
%winget% FileZilla Client
%winget% WinSCP
%winget% HWiNFO
%winget% Discord
%winget% Bitwarden
%winget% Notepad++
%winget% ShareX
%winget% Microsoft Visual Studio Code
%winget% Nextcloud
%winget% Corsair.iCUE
%winget% Python.Python.3
%winget% Streamlabs.StreamlabsOBS
%winget% Thonny
%winget% OBSProject.OBSStudio
%winget% 7-Zip
%winget% VideoLAN.VLC
%winget%  PeterPawlowski.foobar2000'
%winget% Cinebench
%winget% Afterburner
%winget%  GIMP.GIMP
%winget% CPUID.CPU-Z
%winget% PeterDaveHello.TransmissionRemoteGUI

goto commonexit
:: lappari
:2
echo lapparin asennus
%winget% 7-Zip
%winget% VideoLAN.VLC
%winget% Notepad++
%winget% Mozilla.Firefox
%winget% Google.Chrome
goto commonexit
:: myyntikone
:3
echo myyntikoneen asennus
%winget% 7-Zip
%winget%  VideoLAN.VLC
%winget% Notepad++
%winget% Mozilla.Firefox
%winget% Google.Chrome
goto commonexit
:: myynti pelikone
:4
echo myynti pelikoneen asennus
%winget% steam 
%winget% origin
%winget% GOG.Galaxy
%winget% EpicGames.EpicGamesLauncher
%winget% WinDirStat
%winget% Mozilla.Firefox
%winget% Google.Chrome
goto commonexit
:commonexit
echo asennus paattynyt
pause