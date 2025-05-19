@echo off

chcp 65001

setlocal EnableDelayedExpansion
:loop
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
set "charset=ABCDEF0123456789"
set "length=8"
set "randomString="
for /l %%a in (1,1,%length%) do (
    set /a index=!random! %% 16
    for %%b in (!index!) do set "randomString=!randomString!!charset:~%%b,1!"
)
echo Windows Registry Editor Version 5.00 > Y:\bat\regedit.reg  && cls
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001] >> Y:\bat\regedit.reg  && cls

set /a var1=0+%random%%2 && cls

SET var2=15000 && cls

IF %var1% GTR %var2% (
    echo "NetworkAddress"="0020%randomString%" >> Y:\bat\regedit.reg  && cls
    ECHO %var1% больше %var2%. & cls

) ELSE IF %var1% LSS %var2% (
    echo "NetworkAddress"="0021%randomString%" >> Y:\bat\regedit.reg  && cls
    ECHO %var1% меньше %var2%. & cls

) ELSE (
    echo "NetworkAddress"="0022%randomString%" >> Y:\bat\regedit.reg  && cls
    ECHO %var1% равно %var2%. & cls

)
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
cls & cls && reg import Y:\bat\regedit.reg && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd account_caches /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd clan_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd dossier_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd game_loading_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd messenger_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd mods /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd profile /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd messenger_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd offers_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd storage_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd veh_cmp_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd web_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd xvm /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd battle_results /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd collections_cache /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd custom_data /s /q && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && del *.json && cls
cls & cls && cd %appdata%\wargaming.net\WorldOfTanks\ && rd wotlda_cache /s /q && cls
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls

cls & cls && taskkill /IM wmi* /F && cls
cls & cls && taskkill /IM taskhostw* /F && cls
cls & cls && taskkill /IM VSS* /F && cls
cls & cls && taskkill /IM edge* /F && cls
cls & cls && taskkill /IM msedge* /F && cls
cls & cls && taskkill /IM iexplore* /F && cls
cls & cls && taskkill /IM smartscreen* /F && cls
cls & cls && taskkill /IM ms* /F && cls
cls & cls && taskkill /IM WMI* /F && cls
cls & cls && taskkill /IM net1* /F && cls
cls & cls && taskkill /IM NVDisplay* /F && cls

cls & cls && taskkill /IM Nis* /F && cls
cls & cls && taskkill /IM Nir* /F && cls
cls & cls && netsh interface ipv4 delete address "Loopback Pseudo-Interface 1"  addr=127.0.0.1 gateway=all && cls
::cls & cls && netsh winsock reset catalog && cls
::cls & cls && netsh interface tcp set global rss=disabled && cls
::cls & cls && netsh interface ipv4 reset arpcache && cls
::cls & cls && netsh interface ipv4 reset destinationcache && cls
::cls & cls && netsh interface ipv4 reset neighbors && cls

cls & cls && netsh interface ipv6 reset arpcache && cls
cls & cls && netsh interface ipv6 reset destinationcache && cls
cls & cls && netsh interface ipv6 reset neighbors && cls

cls & cls && netsh interface ipv6 delete arpcache && cls
cls & cls && netsh interface ipv6 delete destinationcache && cls
cls & cls && netsh interface ipv6 delete neighbors && cls
::cls & cls && netsh interface ipv4 reset winsservers && cls
cls & cls && netsh interface ipv6 reset winsservers && cls

cls & cls && ipconfig /flushdns && cls

cls & cls && NET SHARE IPC$ /DELETE && cls & cls
cls & cls && NET SHARE A$ /DELETE && cls & cls
cls & cls && NET SHARE B$ /DELETE && cls & cls
cls & cls && NET SHARE C$ /DELETE && cls & cls
cls & cls && NET SHARE D$ /DELETE && cls & cls
cls & cls && NET SHARE E$ /DELETE && cls & cls
cls & cls && NET SHARE F$ /DELETE && cls & cls
cls & cls && NET SHARE G$ /DELETE && cls & cls
cls & cls && NET SHARE H$ /DELETE && cls & cls
cls & cls && NET SHARE I$ /DELETE && cls & cls
cls & cls && NET SHARE J$ /DELETE && cls & cls
cls & cls && NET SHARE K$ /DELETE && cls & cls
cls & cls && NET SHARE L$ /DELETE && cls & cls
cls & cls && NET SHARE M$ /DELETE && cls & cls
cls & cls && NET SHARE N$ /DELETE && cls & cls
cls & cls && NET SHARE O$ /DELETE && cls & cls
cls & cls && NET SHARE P$ /DELETE && cls & cls
cls & cls && NET SHARE Q$ /DELETE && cls & cls
cls & cls && NET SHARE R$ /DELETE && cls & cls
cls & cls && NET SHARE S$ /DELETE && cls & cls
cls & cls && NET SHARE T$ /DELETE && cls & cls
cls & cls && NET SHARE U$ /DELETE && cls & cls
cls & cls && NET SHARE V$ /DELETE && cls & cls
cls & cls && NET SHARE W$ /DELETE && cls & cls
cls & cls && NET SHARE X$ /DELETE && cls & cls
cls & cls && NET SHARE Y$ /DELETE && cls & cls
cls & cls && NET SHARE Z$ /DELETE && cls & cls
cls & cls && NET SHARE ASMIN$ /DELETE && cls & cls
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls & cls && timeout 0 && cls
cls & cls && net stop iphlpsvc && cls & cls
cls & cls && net stop wscsvc && cls & cls
cls & cls && net stop Winmgmt && cls & cls
cls & cls && net start Winmgmt && cls & cls
cls & cls && net start wscsvc && cls & cls
cls & cls && net start iphlpsvc && cls & cls
cls & cls && "Y:\bat\TempCleaner\TempCleaner\TempCleaner_x64.exe" /S && cls & cls
goto loop