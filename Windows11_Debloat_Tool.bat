REM =======================================================================
REM  WinCleaner by @Nokky - SYSTEM CLEANUP TOOL (Elevated)
REM  This script is for educational use only. Use at your own risk!
REM =======================================================================

@echo off
title Windows11 Debloat Tool ^| @Nokky
chcp 65001 > nul

goto menu

REM =======================================================================
REM  MAIN MENU - All the options, all the vibes
REM =======================================================================

:menu
cls
echo.
echo.                  
REM --- ASCII ART & Welcome ---
echo                                       [38;2;255;0;0m███╗   ██╗ ██████╗ ██╗  ██╗██╗  ██╗██╗   ██╗  [0m
echo                                       [38;2;255;51;0m████╗  ██║██╔═══██╗██║ ██╔╝██║ ██╔╝╚██╗ ██╔╝ [0m
echo                                       [38;2;255;102;0m██╔██╗ ██║██║   ██║█████╔╝ █████╔╝  ╚████╔╝ [0m
echo                                       [38;2;255;153;0m██║╚██╗██║██║   ██║██╔═██╗ ██╔═██╗   ╚██╔╝  [0m
echo                                       [38;2;255;204;0m██║ ╚████║╚██████╔╝██║  ██╗██║  ██╗   ██║   [0m
echo                                       [38;2;255;255;0m╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   [0m
echo.

echo                        [38;2;255;0;0m██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗███████╗██████╗ 
echo                        [38;2;255;51;0m██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
echo                        [38;2;255;102;0m██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║   █████╗  ██████╔╝
echo                        [38;2;255;153;0m██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗
echo                        [38;2;255;204;0m██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║   ███████╗██║  ██║
echo                        [38;2;255;255;0m╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
echo.                     
echo.
echo                       [38;2;255;51;0m╔═══════════════════╗    ╔═══════════════════╗    ╔═══════════════════╗[0m
echo                       [38;2;255;51;0m║ Created By @Nokky ║    ║ Debloater  V.1.0. ║    ║ This Tool Is Free ║[0m
echo                       [38;2;255;51;0m╚═══════════════════╝    ╚═══════════════════╝    ╚═══════════════════╝[0m      
echo.
echo.
echo                      [38;2;255;102;0mWelcome to Ground Zero Windows11 Debloater V.1.0.0 %username%![0m
echo.
echo                      [38;2;255;102;0mNote: I am not resonsible for any damages. This program is for educational purposes only.[0m
echo                      [38;2;255;102;0mCredits to @ChrisTitusTech on YouTube, check out his YouTube and website in the credits section. [0m

echo [38;2;255;204;0m╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗[0m
echo [38;2;255;204;0m║                                                                                                                      ║[0m
echo [38;2;255;204;0m║                                           ╔══════════════════════════════╗                                           ║[0m
echo [38;2;255;204;0m║                                           ║ [1] - Start Powershell       ║                                           ║[0m
echo [38;2;255;204;0m║                                           ║ [2] - Credits                ║                                           ║[0m
echo [38;2;255;204;0m║                                           ║ [3] - Exit Program           ║                                           ║[0m
echo [38;2;255;204;0m║                                           ╚══════════════════════════════╝                                           ║[0m
echo [38;2;255;204;0m╠══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝[0m



REM --- Input handling with error checking ---
:input_loop
set "user="
set /p "user=[38;2;255;204;0m╚══════════════════════: Please enter a command: > [0m"
if "%user%"=="" (
    echo [41m[!] Invalid input![0m
    timeout /t 1 >nul
    cls
    goto menu
)

if "%user%"=="1" goto start_powershell
if "%user%"=="2" goto credits
if "%user%"=="3" goto end



echo [41m[!] Invalid input![0m
timeout /t 1 >nul
cls
goto menu

REM =======================================================================
REM 1. Start Powershell - Launch the debloat script
REM =======================================================================

:start_powershell
cls

echo [38;2;255;204;0m                            ╔══════════════════════════════════════════════════════════════╗[0m
echo [38;2;255;204;0m                            ║ [!] WARNING: This tool will modify system components.        ║[0m
echo [38;2;255;204;0m                            ║     - Features may be removed                                ║[0m 
echo [38;2;255;204;0m                            ║     - Apps/services may be disabled                          ║[0m
echo [38;2;255;204;0m                            ║     - System behaviour WILL change                           ║[0m
echo [38;2;255;204;0m                            ║                                                              ║[0m
echo [38;2;255;204;0m                            ║ I am NOT responsible for damages, instability, or data loss. ║[0m
echo [38;2;255;204;0m                            ║ This program is for educational purposes only.               ║[0m
echo [38;2;255;204;0m                            ╠══════════════════════════════════════════════════════════════╝[0m
set /p "confirm=[38;2;255;204;0m                            ╚══════════════════════: Type ACCEPT to continue: > [0m"

if /I not "%confirm%"=="ACCEPT" (
    echo.
    echo [41m[!] Cancelled. Returning to menu...[0m
    timeout /t 2 >nul
    goto menu
)
echo.

echo [38;2;255;153;0m[*] Checking internet connection...[0m

ping -n 1 1.1.1.1 >nul 2>&1 || (
    echo [41m[!] No Internet Connection Detected![0m
    echo [38;2;255;204;0mPlease connect to the internet and try again.[0m
    timeout /t 3 >nul
    goto menu
)
timeout /t 1 >nul

echo [37;48;2;46;139;87m[✓] Internet Connection Detected![0m

timeout /t 1 >nul

echo.
echo [38;2;255;255;0m[*] Running Debloat Script From Online...[0m
echo [38;2;255;255;0m[!] This may take 2-5 seconds. Please wait...[0m

timeout /t 2 >nul

pause
start "" cmd /c powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb https://christitus.com/win | iex"


echo.
echo [37;48;2;46;139;87m[✓] Debloater Script Launched Successfully![0m

timeout /t 3 >nul
goto menu

REM =======================================================================
REM 3. Credits - Show the credits
REM =======================================================================

:credits
cls

echo [38;2;255;204;0m                          ╔═════════════════════════════════════════════════════════════════╗[0m
echo [38;2;255;204;0m                          ║ Script by @Nokky07 (Launcher Only)                              ║[0m
echo [38;2;255;204;0m                          ║ Powered by ChrisTitusTech WinUtil Script                        ║[0m
echo [38;2;255;204;0m                          ║ https://www.youtube.com/@ChrisTitusTech                         ║[0m
echo [38;2;255;204;0m                          ║                                                                 ║[0m
echo [38;2;255;204;0m                          ║ This tool does NOT modify or redistribute the WinUtil script.   ║[0m
echo [38;2;255;204;0m                          ║ It simply launches it remotely from its official online source. ║[0m
echo [38;2;255;204;0m                          ╚═════════════════════════════════════════════════════════════════╝[0m
pause
goto menu






REM =======================================================================
REM 2. Exit - log and peace out
REM =======================================================================
:end
echo.
echo [38;2;255;153;0mClosing...[0m
timeout /t 1 >nul
echo [38;2;255;102;0mGoodbye %username%![0m
timeout /t 1 >nul
exit
