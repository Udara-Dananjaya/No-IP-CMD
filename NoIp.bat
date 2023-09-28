@echo off
setlocal enabledelayedexpansion
set "USERNAME=yourUsername"
set "PASSWORD=yourPassword"  REM Escape the exclamation mark with a caret (^)
set "HOSTNAME=yourDomain"
:: Retrieve your external IP address using a different service (e.g., ipinfo.io)
for /f "delims=" %%i in ('curl -s https://ipinfo.io/ip') do (
	set "DETECTIP=%%i"
)
:: Use curl to update the dynamic DNS
::curl --user name:password http://www.example.com

curl -s "http://!USERNAME!:!PASSWORD!@dynupdate.no-ip.com/nic/update?hostname=!HOSTNAME!&myip=!DETECTIP!"


endlocal
::timeout /t 10
