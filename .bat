@echo off
msiexec /i "your_msi_location.msi" SERVER="http://glpi.yourcompany.com/marketplace/glpiinventory/" /quiet /norestart /l*v "C:\installation_log.txt"
if %ERRORLEVEL% equ 0 (
    echo Installation completed successfully.
) else (
    echo An error occurred during installation. error code: %ERRORLEVEL%
)
pause
