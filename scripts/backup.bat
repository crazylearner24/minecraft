@echo off
set BACKUP_DIR=world_backups
if not exist %BACKUP_DIR% mkdir %BACKUP_DIR%
set TIMESTAMP=%DATE:~-4,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%
powershell -Command "Compress-Archive -Path world\* -DestinationPath %BACKUP_DIR%\world_%TIMESTAMP%.zip"
echo Backup saved to %BACKUP_DIR%\world_%TIMESTAMP%.zip
