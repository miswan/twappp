@echo off
echo Killing Gradle daemon processes...
taskkill /F /IM java.exe

echo Cleaning specific Gradle cache...
rmdir /S /Q "C:\Users\pipie\.gradle\caches\jars-9\148dcddccbe8a800d79c5e7f03328d80"

echo Cleaning completed. Please restart your IDE.
pause
