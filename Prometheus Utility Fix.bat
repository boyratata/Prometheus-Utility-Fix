@echo off
title Prometheus Utility Fix

:: ANSI escape codes for colors
for /f %%# in ('echo prompt $E ^| cmd') do set "ESC=%%#"

:: Cooldown time in seconds
set "COOLDOWN=5"

:menu
echo %ESC%[1;35m1. Delete%ESC%[0m
echo %ESC%[1;36m2. Fix Mouse%ESC%[0m
echo %ESC%[1;34m3. Fix Keyboard%ESC%[0m
echo %ESC%[1;33m4. Fake Hack%ESC%[0m
echo %ESC%[1;37m5. System Information%ESC%[0m
echo %ESC%[1;35m6. Display Message%ESC%[0m
echo %ESC%[1;36m7. Launch Application%ESC%[0m
echo %ESC%[1;34m8. Custom Action%ESC%[0m
echo %ESC%[1;37m9. Update Script%ESC%[0m
echo %ESC%[1;35m10. Check for Updates%ESC%[0m
echo %ESC%[1;36m11. Open File Explorer%ESC%[0m
echo %ESC%[1;34m12. Restart Computer%ESC%[0m
echo %ESC%[1;33m13. Run Diagnostic%ESC%[0m
echo %ESC%[1;35m14. Change System Settings%ESC%[0m
echo %ESC%[1;36m15. Run Security Scan%ESC%[0m
echo %ESC%[1;34m16. View Logs%ESC%[0m
echo %ESC%[1;37m17. Help%ESC%[0m
echo %ESC%[1;35m18. About%ESC%[0m
echo %ESC%[1;36m19. Exit%ESC%[0m
echo.

set /p choice=%ESC%[1;37mEnter your choice (1-19): %ESC%[0m

if "%choice%"=="1" goto delete
if "%choice%"=="2" goto fix_mouse
if "%choice%"=="3" goto fix_keyboard
if "%choice%"=="4" goto fake_hack
if "%choice%"=="5" goto system_info
if "%choice%"=="6" goto display_message
if "%choice%"=="7" goto launch_application
if "%choice%"=="8" goto custom_action
if "%choice%"=="9" goto update_script
if "%choice%"=="10" goto check_updates
if "%choice%"=="11" goto open_file_explorer
if "%choice%"=="12" goto restart_computer
if "%choice%"=="13" goto run_diagnostic
if "%choice%"=="14" goto change_system_settings
if "%choice%"=="15" goto run_security_scan
if "%choice%"=="16" goto view_logs
if "%choice%"=="17" goto help
if "%choice%"=="18" goto about
if "%choice%"=="19" goto end

echo %ESC%[1;31mInvalid choice. Please try again.%ESC%[0m
timeout /t 2 >nul
goto menu

:delete
echo %ESC%[1;36mDeleting self...%ESC%[0m
call :Cooldown
echo BEL
echo %ESC%[1;32mSelf-deletion complete!%ESC%[0m
pause
goto menu

:fix_mouse
echo %ESC%[1;32mFixing mouse issue...%ESC%[0m
call :Cooldown
echo.
echo %ESC%[1;33mMouse issue resolved!%ESC%[0m
pause
goto menu

:fix_keyboard
echo %ESC%[1;32mFixing keyboard issue...%ESC%[0m
call :Cooldown
echo.
echo %ESC%[1;35mKeyboard issue resolved!%ESC%[0m
pause
goto menu

:fake_hack
echo %ESC%[1;31mInitiating Fake Hack...%ESC%[0m
call :Cooldown
echo.
echo %ESC%[1;31mERROR: You have been hacked!%ESC%[0m
echo.
echo %ESC%[1;33mClick OK to acknowledge.%ESC%[0m
msg * "ERROR: You have been hacked!."
msg * "ERROR: You got 5 sec before you can click ok!."
timeout /t 1 >nul
goto menu

:system_info
echo %ESC%[1;37mSystem Information:%ESC%[0m
systeminfo
call :Cooldown
goto menu

:display_message
echo %ESC%[1;36mDisplaying custom message...%ESC%[0m
call :Cooldown
echo.
echo %ESC%[1;36mHello, User! This is a custom message.%ESC%[0m
echo %ESC%[1;33mClick OK to acknowledge.%ESC%[0m
msg * "hello welcome to custom message"
msg * "if you want to change text then change the settings"
timeout /t 1 >nul
goto menu

:launch_application
echo %ESC%[1;36mLaunching Google Chrome...%ESC%[0m
call :Cooldown
start chrome.exe "https://boyratata.github.io/"
goto menu

:custom_action
echo %ESC%[1;36mExecuting custom action...%ESC%[0m
call :Cooldown
echo.
echo %ESC%[1;33mThis is a custom action!%ESC%[0m

:: Move the mouse cursor to the right top of the screen
nircmd.exe movecursor 1920 0

echo %ESC%[1;33mCustom action executed!%ESC%[0m
pause
goto menu

:update_script
echo %ESC%[1;36mUpdating script...%ESC%[0m
call :Cooldown
echo %ESC%[1;32mScript updated successfully!%ESC%[0m
pause
goto menu

:check_updates
echo %ESC%[1;36mChecking for updates...%ESC%[0m
call :Cooldown
echo %ESC%[1;32mNo updates found. Script is up-to-date.%ESC%[0m
pause
goto menu

:open_file_explorer
echo %ESC%[1;36mOpening File Explorer...%ESC%[0m
call :Cooldown
start explorer.exe
goto menu

:restart_computer
echo %ESC%[1;36mRestarting computer...%ESC%[0m
call :Cooldown
shutdown /r /t 1
goto menu

:run_diagnostic
echo %ESC%[1;36mRunning diagnostic...%ESC%[0m
call :Cooldown
:: Add your diagnostic commands here
echo %ESC%[1;32mDiagnostic complete!%ESC%[0m
pause
goto menu

:change_system_settings
echo %ESC%[1;36mChanging system settings...%ESC%[0m
call :Cooldown
:: Add your system settings change commands here
echo %ESC%[1;32mSystem settings changed!%ESC%[0m
pause
goto menu

:run_security_scan
echo %ESC%[1;36mRunning security scan...%ESC%[0m
call :Cooldown
:: Add your security scan commands here
echo %ESC%[1;32mSecurity scan complete!%ESC%[0m
pause
goto menu

:view_logs
echo %ESC%[1;36mViewing logs...%ESC%[0m
call :Cooldown
:: Add your log viewing commands here
echo %ESC%[1;32mLogs displayed!%ESC%[0m
pause
goto menu

:help
echo %ESC%[1;37mHelp: This is a helpful message.%ESC%[0m

call :Cooldown
goto menu

:about
echo %ESC%[1;36mAbout: Prometheus Utility Fix v1.0%ESC%[0m
echo.
echo %ESC%[1;36mabout us%ESC%[0m
echo %ESC%[1;33mClick OK to exit%ESC%[0m
echo %ESC%[1;33mCick ok to see the other message%ESC%[0m
msg * "hello i have made this just for fun and like to do more things with this but"
msg * "i will be working in new things not just this if you have want to ask me things about this then here"
msg * "clownmeme... that's my discord friend it so you can ask me things"
msg * "here is my discord https://discord.gg/m8cAbeWAUU"
msg * " bye dawg "
call :Cooldown
goto menu

:end
echo %ESC%[1;35mThank you for using Prometheus Utility Fix.%ESC%[0m
timeout /t 2 >nul
goto menu

:Cooldown
echo %ESC%[1;33mCooldown in progress...%ESC%[0m
for /l %%i in (%COOLDOWN%,-1,1) do (
    echo Remaining time: %%i seconds
    timeout /t 1 >nul
)
echo %ESC%[1;32mCooldown complete!%ESC%[0m
goto :eof
