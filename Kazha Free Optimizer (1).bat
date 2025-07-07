:: Made by kazha
:: Discord: https://discord.gg/dreadfn
 
@echo off
title Kazha Free Optimizer
color 9
cls
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                       
echo.                             ██████╗ ██████╗ ████████╗██╗███╗   ███╗██╗███████╗███████╗██████╗     
echo.                            ██╔═══██╗██╔══██╗╚══██╔══╝██║████╗ ████║██║╚══███╔╝██╔════╝██╔══██╗    
echo.                            ██║   ██║██████╔╝   ██║   ██║██╔████╔██║██║  ███╔╝ █████╗  ██████╔╝    
echo.                            ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██║ ███╔╝  ██╔══╝  ██╔══██╗    
echo.                            ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║██║███████╗███████╗██║  ██║    
echo.                             ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝    
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║              Version 1.0 - By Kazha                ║
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo. ╔═════════╗                                                                        
echo. ║ Loading ║                                              
echo. ╚═════════╝
timeout 2 > nul
:: (Quaked) Restore Point.
:RP
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 ██████╗ ███████╗███████╗████████╗ ██████╗ ██████╗ ███████╗
echo.                                 ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝
echo.                                 ██████╔╝█████╗  ███████╗   ██║   ██║   ██║██████╔╝█████╗  
echo.                                 ██╔══██╗██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  
echo.                                 ██║  ██║███████╗███████║   ██║   ╚██████╔╝██║  ██║███████╗
echo.                                 ╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║   Create a restore point to undo system changes!   ║
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.                                                                       
chcp 437 >nul
powershell -Command "Write-Host 'Recommended!' -ForegroundColor White -BackgroundColor Red"
echo Do you want to make a restore point?
set /p choice=Enter (Y/N): 
if /i "%choice%"=="Y" (
    powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f >nul 2>&1 
    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
    reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
    timeout 1 > nul 
    echo _______________________
    echo Creating restore point.
    powershell -Command "Checkpoint-Computer -Description 'Fortnite Optimizer V1.0 Restore Point'"
    echo Restore point successfully created.
    timeout 2 > nul 
) else if /i "%choice%"=="N" (
    echo ________________________________________________
    echo Not creating a restore point, use at discretion.
    timeout 2 > nul
) else (
    cls
    powershell -Command "Write-Host 'Invalid choice, Please choose Y or N.' -ForegroundColor White -BackgroundColor Red"
    timeout 2 > nul
    goto :RP
)

cls
color 9
echo (Kazha) Disabling Fortnite Fullscreen Optimizations... 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE HIGHDPIAWARE" /f
echo Fortnite Fullscreen Optimizations disabled successfully.
timeout 2 > nul 

cls
color D
echo (Kazha) Setting Fortnite Graphics Preference... 
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /t REG_SZ /d "GpuPreference=2;" /f
echo Fortnite Graphics Preference appiled successfully.
timeout 2 > nul 

cls
color 9
echo (Kazha) Setting Fortnite Priority... 
echo.
chcp 65001 >nul 2>&1
echo ╔═════════════════════════════╗
echo ║  High Priority Recommended! ║
echo ╚═════════════════════════════╝
chcp 437 >nul
echo.
echo Choose an option:
echo 1. Normal
echo 2. Above Normal 
echo 3. High
echo 4. Skip!
set /p option="Enter option number: "
if "%option%"=="1" (
echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 2 /f
echo Fortite Normal, Priority appiled successfully.
timeout 2 > nul
) else if "%option%"=="2" (
echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 6 /f
echo Fortite Above Normal, Priority appiled successfully.
timeout 2 > nul
) else if "%option%"=="3" (
echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 3 /f
echo Fortite High, Priority appiled successfully.
timeout 2 > nul   
) else if "%option%"=="4" (
echo.
echo Skipping!
goto :SkippingPriority
timeout 1 > nul   
) 

:SkippingPriority
cls
color D
echo (Kazha) Installing Optimized Fortnite Game Config...
echo.
chcp 65001 >nul 2>&1
echo ╔═════════════════════════════╗
echo ║   Low Meshes Recommended!   ║
echo ╚═════════════════════════════╝
chcp 437 >nul
echo.
echo Choose an option:
echo 1. Low Meshes Config
echo 2. High Meshes Meshes Config 
echo 3. DX 12
echo 4. Skip!
set /p option="Enter option number: "
if "%option%"=="1" (
echo.
echo Importing Low Meshes Fortnite Game Config!
powershell -Command "Move-Item -Path 'C:\Fortnite Optimizer Tools\Fortnite Configs\Low Meshes\GameUserSettings.ini' -Destination \"$env:USERPROFILE\AppData\Local\FortniteGame\Saved\Config\WindowsClient\" -Force"
echo The operation completed successfully.
echo.
echo You might need to adjust your FPS and resolution to your liking.
timeout 2 > nul 
) else if "%option%"=="2" (
echo.
echo Importing High Meshes Fortnite Game Config!
powershell -Command "Move-Item -Path 'C:\Fortnite Optimizer Tools\Fortnite Configs\High Meshes\GameUserSettings.ini' -Destination \"$env:USERPROFILE\AppData\Local\FortniteGame\Saved\Config\WindowsClient\" -Force"
echo The operation completed successfully.
echo.
echo You might need to adjust your FPS and resolution to your liking.
timeout 2 > nul 
) else if "%option%"=="3" (
echo.
echo Importing DX12 Fortnite Game Config!
powershell -Command "Move-Item -Path 'C:\Fortnite Optimizer Tools\Fortnite Configs\DX 12\GameUserSettings.ini' -Destination \"$env:USERPROFILE\AppData\Local\FortniteGame\Saved\Config\WindowsClient\" -Force"
echo The operation completed successfully.
echo.
echo You might need to adjust your FPS and resolution to your liking.
timeout 2 > nul    
) else if "%option%"=="4" (
echo Skipping!
goto :SkippingConfig
timeout 1 > nul   
) 

:SkippingConfig
cls
color 9
echo (44ud) Adding Fortnite Additional Command Line Arguments...
echo.
echo 1. Click your "Profile" icon, then click "Settings" and "scroll all the way down."
echo 2. Expand "Fortnite", Check "Additional Command Line Arguments"
echo 3. Paste -limitclientticks -nosplash -useallavailablecores
echo.
timeout 1 > nul
echo Opening Epic Games Launcher!
start "" "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe"
pause
cls
color D
echo (Khorive, Inspired) Tweaking NDIS...

setlocal
echo Detecting Network Adapter.

for /f "skip=1 delims=" %%a in ('wmic nic where "NetConnectionStatus=2" get NetConnectionID /value 2^>nul') do (
    for /f "tokens=2 delims==" %%b in ("%%a") do (
        set "adapter_name=%%b"
    )
)

if defined adapter_name (
    echo Your current network adapter is: %adapter_name%

    echo Enabling Interrupt Moderation and setting Interrupt Moderation Rate to medium.
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Interrupt Moderation' | Set-NetAdapterAdvancedProperty -RegistryValue 1" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Interrupt Moderation Rate' | Set-NetAdapterAdvancedProperty -RegistryValue 125" >nul 2>&1

    echo Setting NetworkThrottlingIndex to 10.
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 10 /f
    echo NDIS Tweaks appiled successfully.
    timeout 1 > nul
) else (
    echo Unable to detect your current network adapter.
    echo Skipping.
    timeout 1 > nul
)
endlocal

:DMT
cls
color D
echo Do you want to Run (Calypto, Inspired) Device Manager Tweaks?
echo.
chcp 437 >nul
powershell -Command "Write-Host '(Not Recommended) Can cause bluescreens and other issues, so be cautious.' -ForegroundColor White -BackgroundColor Red"
echo.
set /p choice=Enter (Y): 
if /i "%choice%"=="Y" (
    timeout 1 > nul
    cls
    goto :DeviceManagerTweaks
) else if /i "%choice%"=="N" ( 
    timeout 1 > nul
    cls
    goto :SkipDeviceManager
) else (
    cls
    chcp 437 >nul
    powershell -Command "Write-Host 'Invalid choice, Please choose Y or N.' -ForegroundColor White -BackgroundColor Red"
    timeout 2 > nul
    goto :DMT
)

:DeviceManagerTweaks
echo (Calypto, Inspired) Tweaking and Disabling things in Device Manager...
echo.
setlocal enabledelayedexpansion

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft GS Wavetable Synth*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*NDIS Virtual Network Adapter Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Composite Bus Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Virtual Drive Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Remote Desktop Device Redirector Bus*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Mircosoft RRAS Root Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Mircosoft Print to PDF*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Root Print Queue*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" 

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) Management Engine Interface #1*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) SPI (Flash) Controller - 7AA4*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) SMBus - 7AA3*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*UMBus Root Bus Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Hypervisor Service*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Device Association Root Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Hyper-V Vitualization Infrastucture Driver*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!"

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Bluetooth Device (RFCOMM Protocol TDI)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) Wireless Bluetooth(R)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Bluetooth Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Bluetooth LE Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Bluetooth Device (Personal Area Network)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*NVIDIA High Definition Audio*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

:DWifiD
cls
echo Do you want to Disable Wifi Devices?
echo.
chcp 437 >nul
powershell -Command "Write-Host 'It Will Break Wifi' -ForegroundColor White -BackgroundColor Red"
echo.
echo Are you sure? (Y)
set /p option="Enter option number: "
if /i "%option%"=="Y" (
    echo.
    echo Now Disabling Wif Devices...
    timeout 2 > nul
    cls
    goto :WifiDevice
) else if /i "%option%"=="N" (
    echo.
    echo Skipping Wifi Device Manager Tweaks...
    timeout 2 > nul
    cls
    goto :SkipDeviceManager
) else (
    cls
    chcp 437 >nul
    powershell -Command "Write-Host 'Invalid choice, Please choose Y or N.' -ForegroundColor White -BackgroundColor Red"
    timeout 2 > nul
    goto :DWifiD
)

:WifiDevice
echo (Kazha) Disabling Wifi Devices!
echo.
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) Wi-Fi*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" 

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (IKEv2)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (IP)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (IPv6)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (L2TP)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (Network Monitor)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (PPPOE)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (PPTP)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*WAN Miniport (SSTP)*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

pnputil /disable-device "!instanceID!" >nul 2>&1

echo Device Manager Tweaks appiled successfully.
pause
cls

REM Lösche eventuell vorhandenen kazhafree Plan
for /f "tokens=4" %%i in ('powercfg -list ^| findstr "kazhafree"') do (
    powercfg -delete %%i
)

REM Erstelle neuen Plan basierend auf Höchstleistung
echo ..
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM Warte kurz
timeout /t 2 /nobreak > nul

REM Finde den neu erstellten Plan (der letzte in der Liste)
echo Plan...
powercfg -list > temp_plans.txt

REM Versuche verschiedene Methoden, den neuen Plan zu finden
for /f "tokens=4" %%i in ('powercfg -list ^| findstr /i "power scheme"') do (
    set LAST_GUID=%%i
)

REM Fallback: Suche nach dem originalen Höchstleistungsplan und nimm dessen GUID
for /f "tokens=4" %%i in ('powercfg -list ^| findstr "8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"') do (
    set GUID=%%i
    goto :rename
)

:rename
if defined GUID (
    echo  kazhafree...
    powercfg -changename %GUID% "kazhafree" "Performance Plan für Gaming"
    powercfg -setactive %GUID%
) else (
    REM Direkter Ansatz: Erstelle komplett neuen Plan
    powercfg -create "kazhafree"
    for /f "tokens=4" %%i in ('powercfg -list ^| findstr "kazhafree"') do (
        powercfg -setactive %%i
        echo Plan "kazhafree" 
    )
)

echo.
powercfg -list
timeout  5> nul
REM Aufräumen
if exist temp_plans.txt del temp_plans.txt
:: Check if the script has already been restarted with elevated privileges
if "%1"=="elevated" goto :Proceed


:Proceed
:: Disable Windows Defender SmartScreen using PowerShell
echo Disabling Windows Defender SmartScreen...

:: Disable SmartScreen for Microsoft Edge
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

:: Disable SmartScreen for Internet Explorer
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f

:: Disable SmartScreen for Microsoft Store
powershell -Command "Set-MpPreference -DisableBehaviorMonitoring $true"

:: Notify user of completion
echo SmartScreen settings should now be disabled.
timeout  5> nul

cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "0" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "0" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Sound" /v "Beep" /t REG_SZ /d "no" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Sound" /v "ExtendedSounds" /t REG_SZ /d "no" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "0" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "0" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Sound" /v "Beep" /t REG_SZ /d "no" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Sound" /v "ExtendedSounds" /t REG_SZ /d "no" /f 
Reg.exe add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseTrails" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SnapToDefaultButton" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SwapMouseButtons" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "AttractionRectInsetInDIPS" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "DistanceThresholdInDIPS" /t REG_DWORD /d "40" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismDelayInMilliseconds" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "MagnetismUpdateIntervalInMilliseconds" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v "VelocityInDIPSPerSecond" /t REG_DWORD /d "360" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
echo.
timeout  5> nul
cls
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
echo.
pause
cls
:: Delete All Microsoft Task.
cls
color 9
chcp 65001 >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskStateFlags" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache" /f >nul 2>&1
echo ✔  All Unnecessary Microsoft Task Deleted Successfully.
timeout 2 > nul


:: Task Destoyer Done Screen.
cls
color 9
chcp 65001 >nul 2>&1
echo ╔════════════════════════╗
echo ║ ✅ Free Optimizer Done!║
echo ╚════════════════════════╝
echo ✔  Now exiting in 5 seconds
timeout 5 > nul
exit
echo. Reboot your pc to apply changes!
pause
