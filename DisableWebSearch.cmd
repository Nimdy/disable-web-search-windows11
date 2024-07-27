@echo off
:: This turns off the display of commands as they run, making the output cleaner

echo Disabling web search results in Windows 11...

:: Check for administrator privileges
:: This ensures the script can make the necessary changes
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :admin
) else (
    echo Please run this script as an administrator.
    echo Right-click the script and select "Run as administrator"
    pause
    exit
)

:admin
:: This section only runs if the script has admin rights

:: Add registry key to disable web search
:: This is the main action of the script - it adds a setting to the Windows Registry
echo Adding registry key to disable web search...
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

:: Check if the registry change was successful
if %errorLevel% == 0 (
    echo Registry key added successfully.
    echo Web search results have been disabled.
) else (
    echo Failed to add registry key. Please try running the script again.
    pause
    exit
)

:: Prompt for restart
:: Windows often needs a restart for these changes to take effect
echo A restart is required for changes to take effect.
set /p restart="Do you want to restart your computer now? (Y/N) "
if /i "%restart%"=="Y" (
    echo Restarting your computer...
    shutdown /r /t 10 /c "Restarting to apply changes to web search settings"
) else (
    echo Please remember to restart your computer later for the changes to take effect.
    pause
)
