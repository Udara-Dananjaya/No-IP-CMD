@echo off

:: Set the path to your NOIP.bat file
set "NOIP_FILE=C:\Users\NoIp.bat"

:: Set the name for the shortcut (can be customized)
set "SHORTCUT_NAME=NOIP"

:: Define the Startup folder for the current user
set "STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Check if the NOIP.bat file exists
if not exist "%NOIP_FILE%" (
    echo ERROR: NOIP.bat file not found at "%NOIP_FILE%"
    pause
    exit /b 1
)

:: Create a shortcut to the NOIP.bat file in the Startup folder
echo Creating shortcut...
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%STARTUP_FOLDER%\%SHORTCUT_NAME%.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%NOIP_FILE%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo Shortcut created successfully.

pause
