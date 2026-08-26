@echo off
REM Opens index.html in Google Chrome.
REM If Chrome isn't in one of the usual install locations,
REM this falls back to opening it in your default browser.

set "PAGE=%~dp0index.html"

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%PAGE%"
) else if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%PAGE%"
) else if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
    start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" "%PAGE%"
) else (
    start "" "%PAGE%"
)
